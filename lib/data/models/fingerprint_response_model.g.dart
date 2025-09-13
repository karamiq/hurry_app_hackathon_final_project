// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fingerprint_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FingerprintResponse _$FingerprintResponseFromJson(Map<String, dynamic> json) =>
    _FingerprintResponse(
      status: json['status'] as String,
      fingerprintId: json['fingerprint_id'] as String,
      minutiaeCount: (json['minutiae_count'] as num).toInt(),
      qualityScore: (json['quality_score'] as num).toDouble(),
      enrollmentTimestamp:
          DateTime.parse(json['enrollment_timestamp'] as String),
    );

Map<String, dynamic> _$FingerprintResponseToJson(
        _FingerprintResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'fingerprint_id': instance.fingerprintId,
      'minutiae_count': instance.minutiaeCount,
      'quality_score': instance.qualityScore,
      'enrollment_timestamp': instance.enrollmentTimestamp.toIso8601String(),
    };
