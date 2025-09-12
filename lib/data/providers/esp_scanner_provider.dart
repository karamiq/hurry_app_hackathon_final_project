import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:app/data/models/esp_device_model.dart';
import 'package:app/data/services/esp_scanner_service.dart';

// State class for BLE scanner
class EspScannerState {
  bool isConnected;
  String deviceName;
  String error;
  List<EspDevice> devices;
  bool isLoading;
  EspScannerState({
    this.isConnected = false,
    this.deviceName = '',
    this.error = '',
    this.devices = const [],
    this.isLoading = false,
  });
}

class EspScannerNotifier extends StateNotifier<EspScannerState> {
  EspScannerNotifier() : super(EspScannerState());
  final EspScannerService _service = EspScannerService();

  EspScannerService get service => _service;

  // Listen for found devices and connection status
  void initialize() async {
    state.isLoading = true;
    state.error = '';
    state = EspScannerState(
      isConnected: false,
      deviceName: '',
      error: '',
      devices: [],
      isLoading: true,
    );
    bool isAvailable = await _service.isBluetoothAvailable();
    if (!isAvailable) {
      state.error = 'Bluetooth not available';
      state.isLoading = false;
      state = state;
      return;
    }
    bool isEnabled = await _service.isBluetoothEnabled();
    if (!isEnabled) {
      state.error = 'Bluetooth is disabled';
      state.isLoading = false;
      state = state;
      return;
    }
    await _service.findDevices();
    // Listen for found devices
    _service.onDevicesFound = (devices) {
      state.devices = devices;
      state.isLoading = false;
      state = state;
    };
    // Listen for connection status
    _service.onStatusChanged = (status) {
      state.isConnected = status.isConnected;
      state.deviceName = status.deviceName;
      state.error = status.error;
      state = state;
    };
  }

  void connectToDevice(EspDevice device) async {
    state.isLoading = true;
    state = state;
    await _service.connectToDevice(device);
    state.isLoading = false;
    state = state;
  }

  void disconnect() async {
    await _service.disconnect();
    state.isConnected = false;
    state.deviceName = '';
    state = state;
  }

  void clearError() {
    state.error = '';
    state = state;
  }
}

final espScannerProvider = StateNotifierProvider<EspScannerNotifier, EspScannerState>((ref) {
  return EspScannerNotifier();
});
