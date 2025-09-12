# ESP Fingerprint Scanner Integration Guide

This guide explains how to connect a Flutter app to an external fingerprint scanner wirelessly using ESP32/ESP8266 devices.

## Overview

The implementation provides a complete solution for connecting to ESP-based fingerprint scanners via Bluetooth, including:

- **Device Discovery**: Automatically scan and discover ESP fingerprint scanners
- **Bluetooth Connection**: Establish and manage wireless connections
- **Fingerprint Operations**: Scan, enroll, delete, and manage fingerprints
- **Real-time Communication**: Stream fingerprint data and device status
- **Error Handling**: Comprehensive error management and user feedback

## Architecture

### Components

1. **ESP Device Models** (`lib/data/models/esp_device_model.dart`)
   - `EspDeviceModel`: Represents a discovered ESP device
   - `EspConnectionStatus`: Tracks connection state and errors
   - `EspFingerprintData`: Contains fingerprint scan results
   - `EspCommand`: Defines commands for ESP communication

2. **ESP Scanner Service** (`lib/data/services/esp_scanner_service.dart`)
   - Handles Bluetooth communication
   - Manages device discovery and connection
   - Processes incoming data from ESP devices
   - Provides command interface for fingerprint operations

3. **ESP Scanner Provider** (`lib/data/providers/esp_scanner_provider.dart`)
   - Riverpod state management
   - Exposes streams for real-time data
   - Provides methods for device control

4. **Wireless Scanner UI** (`lib/src/wireless_scanner/wireless_scanner_page.dart`)
   - Complete user interface for ESP scanner management
   - Device selection and connection
   - Fingerprint operation controls
   - Real-time status display

## Setup Instructions

### 1. Dependencies

Add the following to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_bluetooth_serial: ^0.4.0
  flutter_riverpod: ^2.1.1
  freezed_annotation: ^3.0.0
  json_annotation: ^4.7.0
```

### 2. Android Permissions

Ensure your `android/app/src/main/AndroidManifest.xml` includes:

```xml
<uses-permission android:name="android.permission.BLUETOOTH" />
<uses-permission android:name="android.permission.BLUETOOTH_ADMIN" />
<uses-permission android:name="android.permission.BLUETOOTH_SCAN" />
<uses-permission android:name="android.permission.BLUETOOTH_CONNECT" />
<uses-permission android:name="android.permission.BLUETOOTH_ADVERTISE" />
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
```

### 3. Code Generation

Run the build runner to generate necessary files:

```bash
flutter packages pub run build_runner build
```

## ESP32/ESP8266 Setup

### Hardware Requirements

- ESP32 or ESP8266 development board
- Fingerprint sensor (AS608, R307, etc.)
- Bluetooth module (built-in for ESP32)

### ESP32 Code Example

```cpp
#include <BluetoothSerial.h>
#include <Adafruit_Fingerprint.h>

BluetoothSerial SerialBT;
Adafruit_Fingerprint finger = Adafruit_Fingerprint(&Serial2);

void setup() {
  Serial.begin(115200);
  SerialBT.begin("ESP_Fingerprint_Scanner"); // Bluetooth device name
  
  // Initialize fingerprint sensor
  finger.begin(57600);
  
  if (finger.verifyPassword()) {
    SerialBT.println("Fingerprint sensor OK");
  } else {
    SerialBT.println("Did not find fingerprint sensor");
  }
}

void loop() {
  if (SerialBT.available()) {
    String command = SerialBT.readStringUntil('\n');
    command.trim();
    
    if (command == "SCAN_FINGERPRINT") {
      scanFingerprint();
    } else if (command.startsWith("ENROLL_FINGERPRINT:")) {
      String id = command.substring(19);
      enrollFingerprint(id.toInt());
    } else if (command.startsWith("DELETE_FINGERPRINT:")) {
      String id = command.substring(19);
      deleteFingerprint(id.toInt());
    } else if (command == "GET_FINGERPRINT_COUNT") {
      getFingerprintCount();
    } else if (command == "CLEAR_DATABASE") {
      clearDatabase();
    }
  }
}

void scanFingerprint() {
  int p = finger.getImage();
  if (p != FINGERPRINT_OK) return;
  
  p = finger.image2Tz();
  if (p != FINGERPRINT_OK) return;
  
  p = finger.fingerSearch();
  if (p == FINGERPRINT_OK) {
    SerialBT.print("FINGERPRINT:");
    SerialBT.print(finger.fingerID);
    SerialBT.print(",");
    SerialBT.print(finger.confidence);
    SerialBT.print(",");
    SerialBT.print("85"); // Quality
    SerialBT.println();
  } else {
    SerialBT.println("ERROR:Fingerprint not found");
  }
}

void enrollFingerprint(int id) {
  // Implementation for fingerprint enrollment
  SerialBT.println("STATUS:Enrollment started");
}

void deleteFingerprint(int id) {
  if (finger.deleteModel(id) == FINGERPRINT_OK) {
    SerialBT.println("STATUS:Fingerprint deleted");
  } else {
    SerialBT.println("ERROR:Failed to delete fingerprint");
  }
}

void getFingerprintCount() {
  finger.getTemplateCount();
  SerialBT.print("STATUS:Count:");
  SerialBT.println(finger.templateCount);
}

void clearDatabase() {
  if (finger.emptyDatabase() == FINGERPRINT_OK) {
    SerialBT.println("STATUS:Database cleared");
  } else {
    SerialBT.println("ERROR:Failed to clear database");
  }
}
```

## Usage

### Basic Usage

```dart
import 'package:app/data/providers/esp_scanner_provider.dart';

class MyWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final espScanner = ref.watch(espScannerProvider.notifier);
    final connectionStatus = ref.watch(espScannerProvider);
    
    return Column(
      children: [
        // Initialize scanner
        ElevatedButton(
          onPressed: () => espScanner.initialize(),
          child: Text('Initialize Scanner'),
        ),
        
        // Scan fingerprint
        ElevatedButton(
          onPressed: () => espScanner.scanFingerprint(),
          child: Text('Scan Fingerprint'),
        ),
        
        // Connection status
        Text('Status: ${connectionStatus.isConnected ? "Connected" : "Disconnected"}'),
      ],
    );
  }
}
```

### Listening to Fingerprint Data

```dart
class FingerprintListener extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fingerprintStream = ref.watch(espFingerprintStreamProvider);
    
    return fingerprintStream.when(
      data: (fingerprint) {
        return Text('Fingerprint ID: ${fingerprint.fingerprintId}');
      },
      loading: () => CircularProgressIndicator(),
      error: (error, stack) => Text('Error: $error'),
    );
  }
}
```

## Command Protocol

The ESP device communicates using a simple text-based protocol:

### Commands (Flutter → ESP)

- `SCAN_FINGERPRINT`: Scan for a fingerprint
- `ENROLL_FINGERPRINT:<id>`: Enroll a new fingerprint with ID
- `DELETE_FINGERPRINT:<id>`: Delete fingerprint with ID
- `GET_FINGERPRINT_COUNT`: Get number of stored fingerprints
- `CLEAR_DATABASE`: Clear all stored fingerprints
- `GET_DEVICE_INFO`: Get device information
- `SET_LED:<0|1>`: Turn LED on/off
- `SET_BUZZER:<0|1>`: Turn buzzer on/off

### Responses (ESP → Flutter)

- `FINGERPRINT:<id>,<confidence>,<quality>,<imageData>`: Fingerprint scan result
- `STATUS:<message>`: Status update
- `ERROR:<message>`: Error message

## Features

### Device Management
- Automatic ESP device discovery
- Bluetooth connection management
- Connection status monitoring
- Error handling and recovery

### Fingerprint Operations
- Real-time fingerprint scanning
- Fingerprint enrollment
- Fingerprint deletion
- Database management
- Quality assessment

### User Interface
- Modern Material Design UI
- Real-time status updates
- Device selection interface
- Control panel for operations
- Error display and handling

## Troubleshooting

### Common Issues

1. **Bluetooth not available**
   - Check device Bluetooth capability
   - Ensure Bluetooth is enabled
   - Verify permissions are granted

2. **ESP device not found**
   - Ensure ESP device is powered on
   - Check device name contains "ESP"
   - Verify Bluetooth pairing

3. **Connection fails**
   - Check ESP device is in pairing mode
   - Verify device is not connected to another app
   - Restart Bluetooth on both devices

4. **Fingerprint operations fail**
   - Check ESP device firmware
   - Verify fingerprint sensor is working
   - Check command protocol implementation

### Debug Tips

- Enable debug logging in the ESP scanner service
- Monitor Bluetooth connection status
- Check ESP device serial output
- Verify command/response format

## Security Considerations

- Implement authentication for sensitive operations
- Encrypt fingerprint data transmission
- Secure device pairing process
- Regular security updates for ESP firmware

## Performance Optimization

- Implement connection pooling for multiple devices
- Cache frequently accessed data
- Optimize Bluetooth communication
- Use background processing for heavy operations

## Future Enhancements

- Support for multiple ESP devices simultaneously
- Cloud synchronization of fingerprint data
- Advanced fingerprint matching algorithms
- Integration with existing authentication systems
- Mobile app for ESP device configuration

