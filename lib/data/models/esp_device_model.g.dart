// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'esp_device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EspDeviceModel _$EspDeviceModelFromJson(Map<String, dynamic> json) =>
    _EspDeviceModel(
      name: json['name'] as String,
      address: json['address'] as String,
      isConnected: json['isConnected'] as bool? ?? false,
      signalStrength: (json['signalStrength'] as num?)?.toInt() ?? 0,
      deviceType: json['deviceType'] as String? ?? '',
    );

Map<String, dynamic> _$EspDeviceModelToJson(_EspDeviceModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'isConnected': instance.isConnected,
      'signalStrength': instance.signalStrength,
      'deviceType': instance.deviceType,
    };

_EspConnectionStatus _$EspConnectionStatusFromJson(Map<String, dynamic> json) =>
    _EspConnectionStatus(
      isConnected: json['isConnected'] as bool? ?? false,
      deviceName: json['deviceName'] as String? ?? '',
      deviceAddress: json['deviceAddress'] as String? ?? '',
      lastError: json['lastError'] as String? ?? '',
      signalStrength: (json['signalStrength'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$EspConnectionStatusToJson(
        _EspConnectionStatus instance) =>
    <String, dynamic>{
      'isConnected': instance.isConnected,
      'deviceName': instance.deviceName,
      'deviceAddress': instance.deviceAddress,
      'lastError': instance.lastError,
      'signalStrength': instance.signalStrength,
    };

_EspFingerprintData _$EspFingerprintDataFromJson(Map<String, dynamic> json) =>
    _EspFingerprintData(
      fingerprintId: json['fingerprintId'] as String,
      template: json['template'] as String,
      quality: (json['quality'] as num?)?.toInt() ?? 0,
      imageData: json['imageData'] as String? ?? '',
      timestamp: json['timestamp'] as String? ?? '',
    );

Map<String, dynamic> _$EspFingerprintDataToJson(_EspFingerprintData instance) =>
    <String, dynamic>{
      'fingerprintId': instance.fingerprintId,
      'template': instance.template,
      'quality': instance.quality,
      'imageData': instance.imageData,
      'timestamp': instance.timestamp,
    };

_EspCommand _$EspCommandFromJson(Map<String, dynamic> json) => _EspCommand(
      command: json['command'] as String,
      parameters: json['parameters'] as String? ?? '',
      deviceAddress: json['deviceAddress'] as String? ?? '',
    );

Map<String, dynamic> _$EspCommandToJson(_EspCommand instance) =>
    <String, dynamic>{
      'command': instance.command,
      'parameters': instance.parameters,
      'deviceAddress': instance.deviceAddress,
    };
