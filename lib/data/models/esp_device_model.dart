import 'package:flutter_blue_plus/flutter_blue_plus.dart';

// Simple BLE Device Model
class EspDevice {
  final String name;
  final String address;
  final bool isConnected;
  final BluetoothDevice? bluetoothDevice;

  EspDevice({
    required this.name,
    required this.address,
    this.isConnected = false,
    this.bluetoothDevice,
  });

  factory EspDevice.fromBluetoothDevice(BluetoothDevice device) {
    return EspDevice(
      name: device.platformName.isNotEmpty ? device.platformName : 'Unknown',
      address: device.remoteId.toString(),
      bluetoothDevice: device,
    );
  }
}

// Simple Connection Status
class ConnectionStatus {
  final bool isConnected;
  final String deviceName;
  final String error;

  ConnectionStatus({
    this.isConnected = false,
    this.deviceName = '',
    this.error = '',
  });
}

// Simple Fingerprint Data
class FingerprintData {
  final String id;
  final int quality;
  final String timestamp;
  final String message;

  FingerprintData({
    required this.id,
    required this.quality,
    required this.timestamp,
    this.message = '',
  });
}
