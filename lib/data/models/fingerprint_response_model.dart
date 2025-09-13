import 'package:app/utils/annotations/json_serializable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fingerprint_response_model.freezed.dart';
part 'fingerprint_response_model.g.dart';

@freezed
abstract class FingerprintResponse with _$FingerprintResponse {
  @jsonSerializable
  const factory FingerprintResponse({
    required String status,
    @JsonKey(name: 'fingerprint_id') required String fingerprintId,
    @JsonKey(name: 'minutiae_count') required int minutiaeCount,
    @JsonKey(name: 'quality_score') required double qualityScore,
    @JsonKey(name: 'enrollment_timestamp') required DateTime enrollmentTimestamp,
  }) = _FingerprintResponse;

  factory FingerprintResponse.fromJson(Map<String, dynamic> json) => _$FingerprintResponseFromJson(json);
}
