import 'package:freezed_annotation/freezed_annotation.dart';

part 'fingerprint_model.freezed.dart';
part 'fingerprint_model.g.dart';

@freezed
abstract class FingerPrintModel with _$FingerPrintModel {
  const factory FingerPrintModel({
    required String filename,
    required FileInfo file,
    required int size,
    required Headers headers,
    @JsonKey(name: '_max_mem_size') required int maxMemSize,
  }) = _FingerPrintModel;

  factory FingerPrintModel.fromJson(Map<String, dynamic> json) => _$FingerPrintModelFromJson(json);
}

@freezed
abstract class FileInfo with _$FileInfo {
  const factory FileInfo({
    @JsonKey(name: '_file') required Map<String, dynamic> file,
    @JsonKey(name: '_max_size') required int maxSize,
    @JsonKey(name: '_rolled') required bool rolled,
  }) = _FileInfo;

  factory FileInfo.fromJson(Map<String, dynamic> json) => _$FileInfoFromJson(json);
}

@freezed
abstract class Headers with _$Headers {
  const factory Headers({
    @JsonKey(name: 'content-disposition') required String contentDisposition,
    @JsonKey(name: 'content-type') required String contentType,
  }) = _Headers;

  factory Headers.fromJson(Map<String, dynamic> json) => _$HeadersFromJson(json);
}
