import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app/data/providers/esp_scanner_provider.dart';
import 'package:app/src/home/components/custom_scaffold.dart';
import 'package:app/utils/constants/sizes.dart';
import 'package:gap/gap.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class OnlineScannerPage extends ConsumerStatefulWidget {
  const OnlineScannerPage({super.key});

  @override
  ConsumerState<OnlineScannerPage> createState() => _OnlineScannerPageState();
}

class _OnlineScannerPageState extends ConsumerState<OnlineScannerPage> {
  final TextEditingController _idController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize when page loads
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(espScannerProvider.notifier).initialize();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(espScannerProvider);
    final notifier = ref.read(espScannerProvider.notifier);

    return CustomScaffold(
      body: Padding(
        padding: Insets.mediumAll,
        child: Column(
          children: [
            // Title
            Text(
              'ESP32 BLE Fingerprint Scanner',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Gap(Insets.large),

            // Connection Status
            Card(
              child: Padding(
                padding: Insets.mediumAll,
                child: Row(
                  children: [
                    Icon(
                      state.isConnected ? Icons.bluetooth_connected : Icons.bluetooth_disabled,
                      color: state.isConnected ? Colors.green : Colors.red,
                    ),
                    Gap(Insets.small),
                    Text(
                      state.isConnected ? 'Connected to ${state.deviceName}' : 'Not Connected',
                    ),
                  ],
                ),
              ),
            ),
            Gap(Insets.medium),

            // Find Devices Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: state.isLoading ? null : () => notifier.initialize(),
                child: state.isLoading
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          ),
                          Gap(Insets.small),
                          Text('Scanning...'),
                        ],
                      )
                    : Text('Find ESP Devices'),
              ),
            ),
            Gap(Insets.small),

            // Debug Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () async {
                  // Debug Bluetooth state
                  print('=== Bluetooth Debug Info ===');
                  try {
                    bool isSupported = await FlutterBluePlus.isSupported;
                    print('Bluetooth supported: $isSupported');

                    BluetoothAdapterState state = await FlutterBluePlus.adapterState.first;
                    print('Bluetooth adapter state: $state');

                    // Show in UI
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Bluetooth State: $state'),
                        duration: Duration(seconds: 3),
                      ),
                    );
                  } on MissingPluginException catch (e) {
                    print('MissingPluginException: $e');
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            'Plugin Error: flutter_blue_plus not properly installed. Try restarting the app.'),
                        duration: Duration(seconds: 5),
                        backgroundColor: Colors.red,
                      ),
                    );
                  } catch (e) {
                    print('Debug error: $e');
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Debug Error: $e'),
                        duration: Duration(seconds: 3),
                      ),
                    );
                  }
                },
                child: Text('Debug Bluetooth State'),
              ),
            ),
            Gap(Insets.small),

            // Mock Mode Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  // Enable mock mode
                  final service = ref.read(espScannerProvider.notifier).service;

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Mock mode enabled! You can now test without real ESP32.'),
                      duration: Duration(seconds: 3),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
                child: Text('Enable Mock Mode (For Testing)'),
              ),
            ),
            Gap(Insets.medium),

            // Device List
            if (state.devices.isNotEmpty) ...[
              Text('Available Devices:', style: Theme.of(context).textTheme.titleMedium),
              Gap(Insets.small),
              Expanded(
                child: ListView.builder(
                  itemCount: state.devices.length,
                  itemBuilder: (context, index) {
                    final device = state.devices[index];
                    return Card(
                      child: ListTile(
                        leading: Icon(Icons.bluetooth),
                        title: Text(device.name),
                        subtitle: Text(device.address),
                        trailing: ElevatedButton(
                          onPressed: () => notifier.connectToDevice(device),
                          child: Text('Connect'),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ] else if (!state.isLoading) ...[
              // Show help text when no devices found
              Card(
                color: Colors.orange.withOpacity(0.1),
                child: Padding(
                  padding: Insets.mediumAll,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('No ESP devices found', style: Theme.of(context).textTheme.titleMedium),
                      Gap(Insets.small),
                      Text('Make sure:'),
                      Text('• Your ESP32 is powered on'),
                      Text('• ESP32 is running BLE code'),
                      Text('• ESP32 name is "ESP32_MySensor"'),
                      Text('• Bluetooth is enabled on both devices'),
                      Text('• ESP32 is advertising BLE services'),
                      Gap(Insets.small),
                      Text('Your device "ESP32_MySensor" should appear here if properly configured.'),
                    ],
                  ),
                ),
              ),
            ],

            // Controls (only show when connected)
            if (state.isConnected) ...[
              Gap(Insets.medium),
              Text('Connected!', style: Theme.of(context).textTheme.titleMedium),
              Gap(Insets.small),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => notifier.disconnect(),
                  child: Text('Disconnect'),
                ),
              ),
            ],

            // ...existing code...

            // Error Display
            if (state.error.isNotEmpty) ...[
              Gap(Insets.medium),
              Card(
                color: Colors.red.withOpacity(0.1),
                child: Padding(
                  padding: Insets.mediumAll,
                  child: Row(
                    children: [
                      Icon(Icons.error, color: Colors.red),
                      Gap(Insets.small),
                      Expanded(child: Text(state.error, style: TextStyle(color: Colors.red))),
                      TextButton(
                        onPressed: () => notifier.clearError(),
                        child: Text('Dismiss'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _idController.dispose();
    super.dispose();
  }
}
