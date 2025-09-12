// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'esp_scanner_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$espFingerprintStreamHash() =>
    r'343776376190c533482d8f282697452b68574c40';

/// See also [espFingerprintStream].
@ProviderFor(espFingerprintStream)
final espFingerprintStreamProvider =
    AutoDisposeStreamProvider<EspFingerprintData>.internal(
  espFingerprintStream,
  name: r'espFingerprintStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$espFingerprintStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef EspFingerprintStreamRef
    = AutoDisposeStreamProviderRef<EspFingerprintData>;
String _$espDevicesStreamHash() => r'cfdff7885c531ff76d22d8cf479b96a391bc6ce0';

/// See also [espDevicesStream].
@ProviderFor(espDevicesStream)
final espDevicesStreamProvider =
    AutoDisposeStreamProvider<List<BluetoothDevice>>.internal(
  espDevicesStream,
  name: r'espDevicesStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$espDevicesStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef EspDevicesStreamRef
    = AutoDisposeStreamProviderRef<List<BluetoothDevice>>;
String _$espScannerHash() => r'd112c1a58194c8210a4170b5757974652edf9004';

/// See also [EspScanner].
@ProviderFor(EspScanner)
final espScannerProvider =
    AutoDisposeNotifierProvider<EspScanner, EspConnectionStatus>.internal(
  EspScanner.new,
  name: r'espScannerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$espScannerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$EspScanner = AutoDisposeNotifier<EspConnectionStatus>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
