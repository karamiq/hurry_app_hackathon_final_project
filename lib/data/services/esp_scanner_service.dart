import 'dart:async';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:app/data/models/esp_device_model.dart';

class EspScannerService {
  static final EspScannerService _instance = EspScannerService._internal();
  factory EspScannerService() => _instance;
  EspScannerService._internal();

  BluetoothDevice? _connectedDevice;
  BluetoothCharacteristic? _characteristic;

  // BLE UUIDs from your ESP32 code
  static const String serviceUuid = "4fafc201-1fb5-459e-8fcc-c5c9c331914b";
  static const String characteristicUuid = "beb5483e-36e1-4688-b7f5-ea07361b26a8";

  // Simple callbacks
  Function(ConnectionStatus)? onStatusChanged;
  Function(FingerprintData)? onFingerprintScanned;
  Function(List<EspDevice>)? onDevicesFound;

  // Check if Bluetooth is available
  Future<bool> isBluetoothAvailable() async {
    return await FlutterBluePlus.isSupported;
  }

  // Check if Bluetooth is enabled
  Future<bool> isBluetoothEnabled() async {
    return await FlutterBluePlus.adapterState.first == BluetoothAdapterState.on;
  }

  // Enable Bluetooth
  Future<void> enableBluetooth() async {
    await FlutterBluePlus.turnOn();
  }

  // Find ESP devices
  Future<void> findDevices() async {
    try {
      List<EspDevice> espDevices = [];

      onStatusChanged?.call(ConnectionStatus(error: 'Scanning for ESP devices...'));

      // Start BLE scan
      FlutterBluePlus.startScan(
        timeout: Duration(seconds: 10),
        withServices: [Guid(serviceUuid)],
      );

      // Listen to scan results
      FlutterBluePlus.scanResults.listen((results) {
        for (ScanResult result in results) {
          if (result.device.platformName.contains('ESP32_MySensor')) {
            print('Found ESP32: ${result.device.platformName} - ${result.device.remoteId}');

            // Check if we already have this device
            bool alreadyExists =
                espDevices.any((device) => device.address == result.device.remoteId.toString());
            if (!alreadyExists) {
              espDevices.add(EspDevice.fromBluetoothDevice(result.device));
              onDevicesFound?.call(espDevices);
            }
          }
        }
      });

      // Stop scan after 10 seconds
      Future.delayed(Duration(seconds: 10), () {
        FlutterBluePlus.stopScan();
        if (espDevices.isEmpty) {
          onStatusChanged?.call(ConnectionStatus(
              error: 'No ESP32_MySensor found. Make sure it\'s powered on and advertising.'));
        }
      });
    } catch (e) {
      onStatusChanged?.call(ConnectionStatus(error: 'Failed to find devices: $e'));
    }
  }

  // Connect to device
  Future<bool> connectToDevice(EspDevice device) async {
    try {
      onStatusChanged?.call(ConnectionStatus(
        isConnected: false,
        deviceName: device.name,
      ));

      _connectedDevice = device.bluetoothDevice;
      await _connectedDevice!.connect();

      // Discover services
      List<BluetoothService> services = await _connectedDevice!.discoverServices();

      // Find our service and characteristic
      for (BluetoothService service in services) {
        if (service.uuid.toString().toUpperCase() == serviceUuid.toUpperCase()) {
          for (BluetoothCharacteristic characteristic in service.characteristics) {
            if (characteristic.uuid.toString().toUpperCase() == characteristicUuid.toUpperCase()) {
              _characteristic = characteristic;

              // Listen to notifications
              await characteristic.setNotifyValue(true);
              characteristic.lastValueStream.listen((value) {
                String message = String.fromCharCodes(value);
                print('Received from ESP32: $message');

                // Parse the message and create fingerprint data
                if (message.contains('HELLO FROM ESP')) {
                  onFingerprintScanned?.call(FingerprintData(
                    id: DateTime.now().millisecondsSinceEpoch.toString(),
                    quality: 85,
                    timestamp: DateTime.now().toString(),
                    message: message,
                  ));
                }
              });

              break;
            }
          }
          break;
        }
      }

      onStatusChanged?.call(ConnectionStatus(
        isConnected: true,
        deviceName: device.name,
      ));

      return true;
    } catch (e) {
      onStatusChanged?.call(ConnectionStatus(
        isConnected: false,
        deviceName: device.name,
        error: 'Connection failed: $e',
      ));
      return false;
    }
  }

  // Disconnect
  Future<void> disconnect() async {
    try {
      if (_connectedDevice != null) {
        await _connectedDevice!.disconnect();
        _connectedDevice = null;
        _characteristic = null;
      }

      onStatusChanged?.call(ConnectionStatus(
        isConnected: false,
        deviceName: '',
      ));
    } catch (e) {
      onStatusChanged?.call(ConnectionStatus(error: 'Disconnect failed: $e'));
    }
  }

  // Send command to ESP (read characteristic)
  Future<void> readFromESP() async {
    if (_characteristic == null) {
      onStatusChanged?.call(ConnectionStatus(error: 'Not connected'));
      return;
    }

    try {
      List<int> value = await _characteristic!.read();
      String message = String.fromCharCodes(value);
      print('Read from ESP32: $message');

      onFingerprintScanned?.call(FingerprintData(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        quality: 85,
        timestamp: DateTime.now().toString(),
        message: message,
      ));
    } catch (e) {
      onStatusChanged?.call(ConnectionStatus(error: 'Failed to read: $e'));
    }
  }

  // Scan fingerprint (read from ESP)
  Future<void> scanFingerprint() async {
    await readFromESP();
  }

  // Enroll fingerprint (send command to ESP)
  Future<void> enrollFingerprint(String id) async {
    if (_characteristic == null) {
      onStatusChanged?.call(ConnectionStatus(error: 'Not connected'));
      return;
    }

    try {
      // Send enroll command
      await _characteristic!.write('ENROLL:$id'.codeUnits);
      print('Sent enroll command: ENROLL:$id');
    } catch (e) {
      onStatusChanged?.call(ConnectionStatus(error: 'Failed to enroll: $e'));
    }
  }

  // Delete fingerprint
  Future<void> deleteFingerprint(String id) async {
    if (_characteristic == null) {
      onStatusChanged?.call(ConnectionStatus(error: 'Not connected'));
      return;
    }

    try {
      await _characteristic!.write('DELETE:$id'.codeUnits);
      print('Sent delete command: DELETE:$id');
    } catch (e) {
      onStatusChanged?.call(ConnectionStatus(error: 'Failed to delete: $e'));
    }
  }

  // Clear database
  Future<void> clearDatabase() async {
    if (_characteristic == null) {
      onStatusChanged?.call(ConnectionStatus(error: 'Not connected'));
      return;
    }

    try {
      await _characteristic!.write('CLEAR'.codeUnits);
      print('Sent clear command: CLEAR');
    } catch (e) {
      onStatusChanged?.call(ConnectionStatus(error: 'Failed to clear: $e'));
    }
  }
}
