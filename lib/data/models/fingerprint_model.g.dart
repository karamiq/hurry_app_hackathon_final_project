// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fingerprint_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FingerPrintModel _$FingerPrintModelFromJson(Map<String, dynamic> json) =>
    _FingerPrintModel(
      verified: json['verified'] as bool,
      matched_fingerprint_id: json['matched_fingerprint_id'] as String?,
      confidence_score: (json['confidence_score'] as num).toDouble(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$FingerPrintModelToJson(_FingerPrintModel instance) =>
    <String, dynamic>{
      'verified': instance.verified,
      'matched_fingerprint_id': instance.matched_fingerprint_id,
      'confidence_score': instance.confidence_score,
      'message': instance.message,
    };
