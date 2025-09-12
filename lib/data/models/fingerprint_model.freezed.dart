// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fingerprint_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FingerPrintModel {
  String get filename;
  FileInfo get file;
  int get size;
  Headers get headers;
  @JsonKey(name: '_max_mem_size')
  int get maxMemSize;

  /// Create a copy of FingerPrintModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FingerPrintModelCopyWith<FingerPrintModel> get copyWith =>
      _$FingerPrintModelCopyWithImpl<FingerPrintModel>(
          this as FingerPrintModel, _$identity);

  /// Serializes this FingerPrintModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FingerPrintModel &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.headers, headers) || other.headers == headers) &&
            (identical(other.maxMemSize, maxMemSize) ||
                other.maxMemSize == maxMemSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, filename, file, size, headers, maxMemSize);

  @override
  String toString() {
    return 'FingerPrintModel(filename: $filename, file: $file, size: $size, headers: $headers, maxMemSize: $maxMemSize)';
  }
}

/// @nodoc
abstract mixin class $FingerPrintModelCopyWith<$Res> {
  factory $FingerPrintModelCopyWith(
          FingerPrintModel value, $Res Function(FingerPrintModel) _then) =
      _$FingerPrintModelCopyWithImpl;
  @useResult
  $Res call(
      {String filename,
      FileInfo file,
      int size,
      Headers headers,
      @JsonKey(name: '_max_mem_size') int maxMemSize});

  $FileInfoCopyWith<$Res> get file;
  $HeadersCopyWith<$Res> get headers;
}

/// @nodoc
class _$FingerPrintModelCopyWithImpl<$Res>
    implements $FingerPrintModelCopyWith<$Res> {
  _$FingerPrintModelCopyWithImpl(this._self, this._then);

  final FingerPrintModel _self;
  final $Res Function(FingerPrintModel) _then;

  /// Create a copy of FingerPrintModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
    Object? file = null,
    Object? size = null,
    Object? headers = null,
    Object? maxMemSize = null,
  }) {
    return _then(_self.copyWith(
      filename: null == filename
          ? _self.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileInfo,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      headers: null == headers
          ? _self.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Headers,
      maxMemSize: null == maxMemSize
          ? _self.maxMemSize
          : maxMemSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of FingerPrintModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileInfoCopyWith<$Res> get file {
    return $FileInfoCopyWith<$Res>(_self.file, (value) {
      return _then(_self.copyWith(file: value));
    });
  }

  /// Create a copy of FingerPrintModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeadersCopyWith<$Res> get headers {
    return $HeadersCopyWith<$Res>(_self.headers, (value) {
      return _then(_self.copyWith(headers: value));
    });
  }
}

/// Adds pattern-matching-related methods to [FingerPrintModel].
extension FingerPrintModelPatterns on FingerPrintModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FingerPrintModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FingerPrintModel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FingerPrintModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FingerPrintModel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FingerPrintModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FingerPrintModel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String filename, FileInfo file, int size, Headers headers,
            @JsonKey(name: '_max_mem_size') int maxMemSize)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FingerPrintModel() when $default != null:
        return $default(_that.filename, _that.file, _that.size, _that.headers,
            _that.maxMemSize);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String filename, FileInfo file, int size, Headers headers,
            @JsonKey(name: '_max_mem_size') int maxMemSize)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FingerPrintModel():
        return $default(_that.filename, _that.file, _that.size, _that.headers,
            _that.maxMemSize);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String filename, FileInfo file, int size, Headers headers,
            @JsonKey(name: '_max_mem_size') int maxMemSize)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FingerPrintModel() when $default != null:
        return $default(_that.filename, _that.file, _that.size, _that.headers,
            _that.maxMemSize);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FingerPrintModel implements FingerPrintModel {
  const _FingerPrintModel(
      {required this.filename,
      required this.file,
      required this.size,
      required this.headers,
      @JsonKey(name: '_max_mem_size') required this.maxMemSize});
  factory _FingerPrintModel.fromJson(Map<String, dynamic> json) =>
      _$FingerPrintModelFromJson(json);

  @override
  final String filename;
  @override
  final FileInfo file;
  @override
  final int size;
  @override
  final Headers headers;
  @override
  @JsonKey(name: '_max_mem_size')
  final int maxMemSize;

  /// Create a copy of FingerPrintModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FingerPrintModelCopyWith<_FingerPrintModel> get copyWith =>
      __$FingerPrintModelCopyWithImpl<_FingerPrintModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FingerPrintModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FingerPrintModel &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.headers, headers) || other.headers == headers) &&
            (identical(other.maxMemSize, maxMemSize) ||
                other.maxMemSize == maxMemSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, filename, file, size, headers, maxMemSize);

  @override
  String toString() {
    return 'FingerPrintModel(filename: $filename, file: $file, size: $size, headers: $headers, maxMemSize: $maxMemSize)';
  }
}

/// @nodoc
abstract mixin class _$FingerPrintModelCopyWith<$Res>
    implements $FingerPrintModelCopyWith<$Res> {
  factory _$FingerPrintModelCopyWith(
          _FingerPrintModel value, $Res Function(_FingerPrintModel) _then) =
      __$FingerPrintModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String filename,
      FileInfo file,
      int size,
      Headers headers,
      @JsonKey(name: '_max_mem_size') int maxMemSize});

  @override
  $FileInfoCopyWith<$Res> get file;
  @override
  $HeadersCopyWith<$Res> get headers;
}

/// @nodoc
class __$FingerPrintModelCopyWithImpl<$Res>
    implements _$FingerPrintModelCopyWith<$Res> {
  __$FingerPrintModelCopyWithImpl(this._self, this._then);

  final _FingerPrintModel _self;
  final $Res Function(_FingerPrintModel) _then;

  /// Create a copy of FingerPrintModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? filename = null,
    Object? file = null,
    Object? size = null,
    Object? headers = null,
    Object? maxMemSize = null,
  }) {
    return _then(_FingerPrintModel(
      filename: null == filename
          ? _self.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileInfo,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      headers: null == headers
          ? _self.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Headers,
      maxMemSize: null == maxMemSize
          ? _self.maxMemSize
          : maxMemSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of FingerPrintModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileInfoCopyWith<$Res> get file {
    return $FileInfoCopyWith<$Res>(_self.file, (value) {
      return _then(_self.copyWith(file: value));
    });
  }

  /// Create a copy of FingerPrintModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeadersCopyWith<$Res> get headers {
    return $HeadersCopyWith<$Res>(_self.headers, (value) {
      return _then(_self.copyWith(headers: value));
    });
  }
}

/// @nodoc
mixin _$FileInfo {
  @JsonKey(name: '_file')
  Map<String, dynamic> get file;
  @JsonKey(name: '_max_size')
  int get maxSize;
  @JsonKey(name: '_rolled')
  bool get rolled;

  /// Create a copy of FileInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FileInfoCopyWith<FileInfo> get copyWith =>
      _$FileInfoCopyWithImpl<FileInfo>(this as FileInfo, _$identity);

  /// Serializes this FileInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileInfo &&
            const DeepCollectionEquality().equals(other.file, file) &&
            (identical(other.maxSize, maxSize) || other.maxSize == maxSize) &&
            (identical(other.rolled, rolled) || other.rolled == rolled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(file), maxSize, rolled);

  @override
  String toString() {
    return 'FileInfo(file: $file, maxSize: $maxSize, rolled: $rolled)';
  }
}

/// @nodoc
abstract mixin class $FileInfoCopyWith<$Res> {
  factory $FileInfoCopyWith(FileInfo value, $Res Function(FileInfo) _then) =
      _$FileInfoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: '_file') Map<String, dynamic> file,
      @JsonKey(name: '_max_size') int maxSize,
      @JsonKey(name: '_rolled') bool rolled});
}

/// @nodoc
class _$FileInfoCopyWithImpl<$Res> implements $FileInfoCopyWith<$Res> {
  _$FileInfoCopyWithImpl(this._self, this._then);

  final FileInfo _self;
  final $Res Function(FileInfo) _then;

  /// Create a copy of FileInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? maxSize = null,
    Object? rolled = null,
  }) {
    return _then(_self.copyWith(
      file: null == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      maxSize: null == maxSize
          ? _self.maxSize
          : maxSize // ignore: cast_nullable_to_non_nullable
              as int,
      rolled: null == rolled
          ? _self.rolled
          : rolled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [FileInfo].
extension FileInfoPatterns on FileInfo {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FileInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FileInfo() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FileInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FileInfo():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FileInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FileInfo() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: '_file') Map<String, dynamic> file,
            @JsonKey(name: '_max_size') int maxSize,
            @JsonKey(name: '_rolled') bool rolled)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FileInfo() when $default != null:
        return $default(_that.file, _that.maxSize, _that.rolled);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: '_file') Map<String, dynamic> file,
            @JsonKey(name: '_max_size') int maxSize,
            @JsonKey(name: '_rolled') bool rolled)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FileInfo():
        return $default(_that.file, _that.maxSize, _that.rolled);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: '_file') Map<String, dynamic> file,
            @JsonKey(name: '_max_size') int maxSize,
            @JsonKey(name: '_rolled') bool rolled)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FileInfo() when $default != null:
        return $default(_that.file, _that.maxSize, _that.rolled);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FileInfo implements FileInfo {
  const _FileInfo(
      {@JsonKey(name: '_file') required final Map<String, dynamic> file,
      @JsonKey(name: '_max_size') required this.maxSize,
      @JsonKey(name: '_rolled') required this.rolled})
      : _file = file;
  factory _FileInfo.fromJson(Map<String, dynamic> json) =>
      _$FileInfoFromJson(json);

  final Map<String, dynamic> _file;
  @override
  @JsonKey(name: '_file')
  Map<String, dynamic> get file {
    if (_file is EqualUnmodifiableMapView) return _file;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_file);
  }

  @override
  @JsonKey(name: '_max_size')
  final int maxSize;
  @override
  @JsonKey(name: '_rolled')
  final bool rolled;

  /// Create a copy of FileInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FileInfoCopyWith<_FileInfo> get copyWith =>
      __$FileInfoCopyWithImpl<_FileInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FileInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FileInfo &&
            const DeepCollectionEquality().equals(other._file, _file) &&
            (identical(other.maxSize, maxSize) || other.maxSize == maxSize) &&
            (identical(other.rolled, rolled) || other.rolled == rolled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_file), maxSize, rolled);

  @override
  String toString() {
    return 'FileInfo(file: $file, maxSize: $maxSize, rolled: $rolled)';
  }
}

/// @nodoc
abstract mixin class _$FileInfoCopyWith<$Res>
    implements $FileInfoCopyWith<$Res> {
  factory _$FileInfoCopyWith(_FileInfo value, $Res Function(_FileInfo) _then) =
      __$FileInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_file') Map<String, dynamic> file,
      @JsonKey(name: '_max_size') int maxSize,
      @JsonKey(name: '_rolled') bool rolled});
}

/// @nodoc
class __$FileInfoCopyWithImpl<$Res> implements _$FileInfoCopyWith<$Res> {
  __$FileInfoCopyWithImpl(this._self, this._then);

  final _FileInfo _self;
  final $Res Function(_FileInfo) _then;

  /// Create a copy of FileInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? file = null,
    Object? maxSize = null,
    Object? rolled = null,
  }) {
    return _then(_FileInfo(
      file: null == file
          ? _self._file
          : file // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      maxSize: null == maxSize
          ? _self.maxSize
          : maxSize // ignore: cast_nullable_to_non_nullable
              as int,
      rolled: null == rolled
          ? _self.rolled
          : rolled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$Headers {
  @JsonKey(name: 'content-disposition')
  String get contentDisposition;
  @JsonKey(name: 'content-type')
  String get contentType;

  /// Create a copy of Headers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HeadersCopyWith<Headers> get copyWith =>
      _$HeadersCopyWithImpl<Headers>(this as Headers, _$identity);

  /// Serializes this Headers to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Headers &&
            (identical(other.contentDisposition, contentDisposition) ||
                other.contentDisposition == contentDisposition) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, contentDisposition, contentType);

  @override
  String toString() {
    return 'Headers(contentDisposition: $contentDisposition, contentType: $contentType)';
  }
}

/// @nodoc
abstract mixin class $HeadersCopyWith<$Res> {
  factory $HeadersCopyWith(Headers value, $Res Function(Headers) _then) =
      _$HeadersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'content-disposition') String contentDisposition,
      @JsonKey(name: 'content-type') String contentType});
}

/// @nodoc
class _$HeadersCopyWithImpl<$Res> implements $HeadersCopyWith<$Res> {
  _$HeadersCopyWithImpl(this._self, this._then);

  final Headers _self;
  final $Res Function(Headers) _then;

  /// Create a copy of Headers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentDisposition = null,
    Object? contentType = null,
  }) {
    return _then(_self.copyWith(
      contentDisposition: null == contentDisposition
          ? _self.contentDisposition
          : contentDisposition // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _self.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Headers].
extension HeadersPatterns on Headers {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Headers value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Headers() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Headers value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Headers():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Headers value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Headers() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'content-disposition') String contentDisposition,
            @JsonKey(name: 'content-type') String contentType)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Headers() when $default != null:
        return $default(_that.contentDisposition, _that.contentType);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'content-disposition') String contentDisposition,
            @JsonKey(name: 'content-type') String contentType)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Headers():
        return $default(_that.contentDisposition, _that.contentType);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'content-disposition') String contentDisposition,
            @JsonKey(name: 'content-type') String contentType)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Headers() when $default != null:
        return $default(_that.contentDisposition, _that.contentType);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Headers implements Headers {
  const _Headers(
      {@JsonKey(name: 'content-disposition') required this.contentDisposition,
      @JsonKey(name: 'content-type') required this.contentType});
  factory _Headers.fromJson(Map<String, dynamic> json) =>
      _$HeadersFromJson(json);

  @override
  @JsonKey(name: 'content-disposition')
  final String contentDisposition;
  @override
  @JsonKey(name: 'content-type')
  final String contentType;

  /// Create a copy of Headers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HeadersCopyWith<_Headers> get copyWith =>
      __$HeadersCopyWithImpl<_Headers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HeadersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Headers &&
            (identical(other.contentDisposition, contentDisposition) ||
                other.contentDisposition == contentDisposition) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, contentDisposition, contentType);

  @override
  String toString() {
    return 'Headers(contentDisposition: $contentDisposition, contentType: $contentType)';
  }
}

/// @nodoc
abstract mixin class _$HeadersCopyWith<$Res> implements $HeadersCopyWith<$Res> {
  factory _$HeadersCopyWith(_Headers value, $Res Function(_Headers) _then) =
      __$HeadersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content-disposition') String contentDisposition,
      @JsonKey(name: 'content-type') String contentType});
}

/// @nodoc
class __$HeadersCopyWithImpl<$Res> implements _$HeadersCopyWith<$Res> {
  __$HeadersCopyWithImpl(this._self, this._then);

  final _Headers _self;
  final $Res Function(_Headers) _then;

  /// Create a copy of Headers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? contentDisposition = null,
    Object? contentType = null,
  }) {
    return _then(_Headers(
      contentDisposition: null == contentDisposition
          ? _self.contentDisposition
          : contentDisposition // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _self.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
