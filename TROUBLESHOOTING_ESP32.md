# ESP32 Bluetooth Connection Troubleshooting

## Your Issue: ESP32_MySensor Not Found

You can see "ESP32_MySensor" in Bluetooth settings but the app says "Not Connected" and keeps loading forever.

## Quick Fixes to Try

### 1. **Pair the ESP32 First**
- Go to your phone's Bluetooth settings
- Find "ESP32_MySensor" 
- Tap on it to pair/connect
- Make sure it shows as "Connected" or "Paired"
- Then go back to the app and tap "Find ESP Devices"

### 2. **Check ESP32 Code**
Make sure your ESP32 has this simple code:

```cpp
#include <BluetoothSerial.h>

BluetoothSerial SerialBT;

void setup() {
  Serial.begin(115200);
  SerialBT.begin("ESP32_MySensor"); // Make sure this matches exactly
  Serial.println("ESP32_MySensor is ready");
}

void loop() {
  if (SerialBT.available()) {
    String command = SerialBT.readStringUntil('\n');
    command.trim();
    Serial.println("Received: " + command);
    
    if (command == "SCAN") {
      SerialBT.println("FINGERPRINT:123,85,2024-01-01");
    }
  }
}
```

### 3. **Check App Permissions**
Make sure the app has these permissions:
- Bluetooth
- Location (required for Bluetooth scanning)

### 4. **Restart Everything**
1. Turn off ESP32
2. Turn off phone Bluetooth
3. Turn on ESP32
4. Turn on phone Bluetooth
5. Pair ESP32 in Bluetooth settings
6. Open the app and try again

## Debug Steps

### Check Console Logs
1. Open the app
2. Tap "Find ESP Devices"
3. Check the console/debug output for these messages:
   - "Bonded devices found: X"
   - "Bonded device: ESP32_MySensor - XX:XX:XX:XX:XX:XX"
   - "Discovered device: ESP32_MySensor - XX:XX:XX:XX:XX:XX"

### What the Logs Should Show
If working correctly, you should see:
```
Bonded devices found: 1
Bonded device: ESP32_MySensor - 12:34:56:78:90:AB
```

## Common Issues & Solutions

### Issue 1: ESP32 Not Paired
**Problem**: ESP32 shows in Bluetooth settings but not paired
**Solution**: Tap on ESP32 in Bluetooth settings to pair it first

### Issue 2: ESP32 Name Mismatch
**Problem**: ESP32 name doesn't contain "ESP"
**Solution**: Change ESP32 code to use a name with "ESP" in it:
```cpp
SerialBT.begin("ESP32_MySensor"); // ✅ Good
SerialBT.begin("MySensor");       // ❌ Bad - no "ESP"
```

### Issue 3: ESP32 Not Discoverable
**Problem**: ESP32 not in discoverable mode
**Solution**: Make sure ESP32 code is running and Bluetooth is initialized

### Issue 4: App Permissions
**Problem**: App doesn't have Bluetooth permissions
**Solution**: Check app permissions in phone settings

### Issue 5: Bluetooth Classic vs BLE
**Problem**: Using wrong Bluetooth type
**Solution**: Make sure ESP32 uses Bluetooth Classic (SerialBT), not BLE

## Step-by-Step Debug Process

1. **Check ESP32 Serial Monitor**
   - Open Arduino IDE
   - Upload the code
   - Open Serial Monitor
   - Should see: "ESP32_MySensor is ready"

2. **Check Phone Bluetooth**
   - Go to Bluetooth settings
   - Should see "ESP32_MySensor" in available devices
   - Tap to pair/connect

3. **Check App Console**
   - Open app
   - Tap "Find ESP Devices"
   - Check console for debug messages

4. **Test Connection**
   - If device appears in app, tap "Connect"
   - Should show "Connected to ESP32_MySensor"

## Expected Behavior

### When Working Correctly:
1. App shows "Scanning..." for a few seconds
2. ESP32_MySensor appears in device list
3. Tap "Connect" shows "Connected to ESP32_MySensor"
4. Fingerprint controls become available

### When Not Working:
1. App shows "Scanning..." forever
2. No devices appear in list
3. Error message shows
4. Console shows debug info

## Still Not Working?

Try this minimal test:

1. **Simple ESP32 Code**:
```cpp
#include <BluetoothSerial.h>
BluetoothSerial SerialBT;

void setup() {
  Serial.begin(115200);
  SerialBT.begin("ESP32_MySensor");
  Serial.println("Ready");
}

void loop() {
  delay(1000);
}
```

2. **Check Serial Monitor**: Should show "Ready"

3. **Pair in Bluetooth Settings**: Should connect successfully

4. **Test in App**: Should find and connect to device

If this doesn't work, the issue is with Bluetooth setup, not the app code.
