// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fingerprint_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FingerPrintModel _$FingerPrintModelFromJson(Map<String, dynamic> json) =>
    _FingerPrintModel(
      filename: json['filename'] as String,
      file: FileInfo.fromJson(json['file'] as Map<String, dynamic>),
      size: (json['size'] as num).toInt(),
      headers: Headers.fromJson(json['headers'] as Map<String, dynamic>),
      maxMemSize: (json['_max_mem_size'] as num).toInt(),
    );

Map<String, dynamic> _$FingerPrintModelToJson(_FingerPrintModel instance) =>
    <String, dynamic>{
      'filename': instance.filename,
      'file': instance.file,
      'size': instance.size,
      'headers': instance.headers,
      '_max_mem_size': instance.maxMemSize,
    };

_FileInfo _$FileInfoFromJson(Map<String, dynamic> json) => _FileInfo(
      file: json['_file'] as Map<String, dynamic>,
      maxSize: (json['_max_size'] as num).toInt(),
      rolled: json['_rolled'] as bool,
    );

Map<String, dynamic> _$FileInfoToJson(_FileInfo instance) => <String, dynamic>{
      '_file': instance.file,
      '_max_size': instance.maxSize,
      '_rolled': instance.rolled,
    };

_Headers _$HeadersFromJson(Map<String, dynamic> json) => _Headers(
      contentDisposition: json['content-disposition'] as String,
      contentType: json['content-type'] as String,
    );

Map<String, dynamic> _$HeadersToJson(_Headers instance) => <String, dynamic>{
      'content-disposition': instance.contentDisposition,
      'content-type': instance.contentType,
    };
