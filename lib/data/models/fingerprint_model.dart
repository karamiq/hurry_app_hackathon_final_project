import 'package:freezed_annotation/freezed_annotation.dart';

part 'fingerprint_model.freezed.dart';
part 'fingerprint_model.g.dart';

@freezed
abstract class FingerPrintModel with _$FingerPrintModel {
  const factory FingerPrintModel({
    required bool verified,
    required String? matched_fingerprint_id,
    required double confidence_score,
    required String message,
  }) = _FingerPrintModel;

  factory FingerPrintModel.fromJson(Map<String, dynamic> json) => _$FingerPrintModelFromJson(json);
}
