// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fingerprint_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FingerprintResponse {
  String get status;
  @JsonKey(name: 'fingerprint_id')
  String get fingerprintId;
  @JsonKey(name: 'minutiae_count')
  int get minutiaeCount;
  @JsonKey(name: 'quality_score')
  double get qualityScore;
  @JsonKey(name: 'enrollment_timestamp')
  DateTime get enrollmentTimestamp;

  /// Create a copy of FingerprintResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FingerprintResponseCopyWith<FingerprintResponse> get copyWith =>
      _$FingerprintResponseCopyWithImpl<FingerprintResponse>(
          this as FingerprintResponse, _$identity);

  /// Serializes this FingerprintResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FingerprintResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.fingerprintId, fingerprintId) ||
                other.fingerprintId == fingerprintId) &&
            (identical(other.minutiaeCount, minutiaeCount) ||
                other.minutiaeCount == minutiaeCount) &&
            (identical(other.qualityScore, qualityScore) ||
                other.qualityScore == qualityScore) &&
            (identical(other.enrollmentTimestamp, enrollmentTimestamp) ||
                other.enrollmentTimestamp == enrollmentTimestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, fingerprintId,
      minutiaeCount, qualityScore, enrollmentTimestamp);

  @override
  String toString() {
    return 'FingerprintResponse(status: $status, fingerprintId: $fingerprintId, minutiaeCount: $minutiaeCount, qualityScore: $qualityScore, enrollmentTimestamp: $enrollmentTimestamp)';
  }
}

/// @nodoc
abstract mixin class $FingerprintResponseCopyWith<$Res> {
  factory $FingerprintResponseCopyWith(
          FingerprintResponse value, $Res Function(FingerprintResponse) _then) =
      _$FingerprintResponseCopyWithImpl;
  @useResult
  $Res call(
      {String status,
      @JsonKey(name: 'fingerprint_id') String fingerprintId,
      @JsonKey(name: 'minutiae_count') int minutiaeCount,
      @JsonKey(name: 'quality_score') double qualityScore,
      @JsonKey(name: 'enrollment_timestamp') DateTime enrollmentTimestamp});
}

/// @nodoc
class _$FingerprintResponseCopyWithImpl<$Res>
    implements $FingerprintResponseCopyWith<$Res> {
  _$FingerprintResponseCopyWithImpl(this._self, this._then);

  final FingerprintResponse _self;
  final $Res Function(FingerprintResponse) _then;

  /// Create a copy of FingerprintResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? fingerprintId = null,
    Object? minutiaeCount = null,
    Object? qualityScore = null,
    Object? enrollmentTimestamp = null,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      fingerprintId: null == fingerprintId
          ? _self.fingerprintId
          : fingerprintId // ignore: cast_nullable_to_non_nullable
              as String,
      minutiaeCount: null == minutiaeCount
          ? _self.minutiaeCount
          : minutiaeCount // ignore: cast_nullable_to_non_nullable
              as int,
      qualityScore: null == qualityScore
          ? _self.qualityScore
          : qualityScore // ignore: cast_nullable_to_non_nullable
              as double,
      enrollmentTimestamp: null == enrollmentTimestamp
          ? _self.enrollmentTimestamp
          : enrollmentTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [FingerprintResponse].
extension FingerprintResponsePatterns on FingerprintResponse {
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
    TResult Function(_FingerprintResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FingerprintResponse() when $default != null:
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
    TResult Function(_FingerprintResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FingerprintResponse():
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
    TResult? Function(_FingerprintResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FingerprintResponse() when $default != null:
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
            String status,
            @JsonKey(name: 'fingerprint_id') String fingerprintId,
            @JsonKey(name: 'minutiae_count') int minutiaeCount,
            @JsonKey(name: 'quality_score') double qualityScore,
            @JsonKey(name: 'enrollment_timestamp')
            DateTime enrollmentTimestamp)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FingerprintResponse() when $default != null:
        return $default(_that.status, _that.fingerprintId, _that.minutiaeCount,
            _that.qualityScore, _that.enrollmentTimestamp);
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
            String status,
            @JsonKey(name: 'fingerprint_id') String fingerprintId,
            @JsonKey(name: 'minutiae_count') int minutiaeCount,
            @JsonKey(name: 'quality_score') double qualityScore,
            @JsonKey(name: 'enrollment_timestamp') DateTime enrollmentTimestamp)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FingerprintResponse():
        return $default(_that.status, _that.fingerprintId, _that.minutiaeCount,
            _that.qualityScore, _that.enrollmentTimestamp);
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
            String status,
            @JsonKey(name: 'fingerprint_id') String fingerprintId,
            @JsonKey(name: 'minutiae_count') int minutiaeCount,
            @JsonKey(name: 'quality_score') double qualityScore,
            @JsonKey(name: 'enrollment_timestamp')
            DateTime enrollmentTimestamp)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FingerprintResponse() when $default != null:
        return $default(_that.status, _that.fingerprintId, _that.minutiaeCount,
            _that.qualityScore, _that.enrollmentTimestamp);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _FingerprintResponse implements FingerprintResponse {
  const _FingerprintResponse(
      {required this.status,
      @JsonKey(name: 'fingerprint_id') required this.fingerprintId,
      @JsonKey(name: 'minutiae_count') required this.minutiaeCount,
      @JsonKey(name: 'quality_score') required this.qualityScore,
      @JsonKey(name: 'enrollment_timestamp')
      required this.enrollmentTimestamp});
  factory _FingerprintResponse.fromJson(Map<String, dynamic> json) =>
      _$FingerprintResponseFromJson(json);

  @override
  final String status;
  @override
  @JsonKey(name: 'fingerprint_id')
  final String fingerprintId;
  @override
  @JsonKey(name: 'minutiae_count')
  final int minutiaeCount;
  @override
  @JsonKey(name: 'quality_score')
  final double qualityScore;
  @override
  @JsonKey(name: 'enrollment_timestamp')
  final DateTime enrollmentTimestamp;

  /// Create a copy of FingerprintResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FingerprintResponseCopyWith<_FingerprintResponse> get copyWith =>
      __$FingerprintResponseCopyWithImpl<_FingerprintResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FingerprintResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FingerprintResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.fingerprintId, fingerprintId) ||
                other.fingerprintId == fingerprintId) &&
            (identical(other.minutiaeCount, minutiaeCount) ||
                other.minutiaeCount == minutiaeCount) &&
            (identical(other.qualityScore, qualityScore) ||
                other.qualityScore == qualityScore) &&
            (identical(other.enrollmentTimestamp, enrollmentTimestamp) ||
                other.enrollmentTimestamp == enrollmentTimestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, fingerprintId,
      minutiaeCount, qualityScore, enrollmentTimestamp);

  @override
  String toString() {
    return 'FingerprintResponse(status: $status, fingerprintId: $fingerprintId, minutiaeCount: $minutiaeCount, qualityScore: $qualityScore, enrollmentTimestamp: $enrollmentTimestamp)';
  }
}

/// @nodoc
abstract mixin class _$FingerprintResponseCopyWith<$Res>
    implements $FingerprintResponseCopyWith<$Res> {
  factory _$FingerprintResponseCopyWith(_FingerprintResponse value,
          $Res Function(_FingerprintResponse) _then) =
      __$FingerprintResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String status,
      @JsonKey(name: 'fingerprint_id') String fingerprintId,
      @JsonKey(name: 'minutiae_count') int minutiaeCount,
      @JsonKey(name: 'quality_score') double qualityScore,
      @JsonKey(name: 'enrollment_timestamp') DateTime enrollmentTimestamp});
}

/// @nodoc
class __$FingerprintResponseCopyWithImpl<$Res>
    implements _$FingerprintResponseCopyWith<$Res> {
  __$FingerprintResponseCopyWithImpl(this._self, this._then);

  final _FingerprintResponse _self;
  final $Res Function(_FingerprintResponse) _then;

  /// Create a copy of FingerprintResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? fingerprintId = null,
    Object? minutiaeCount = null,
    Object? qualityScore = null,
    Object? enrollmentTimestamp = null,
  }) {
    return _then(_FingerprintResponse(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      fingerprintId: null == fingerprintId
          ? _self.fingerprintId
          : fingerprintId // ignore: cast_nullable_to_non_nullable
              as String,
      minutiaeCount: null == minutiaeCount
          ? _self.minutiaeCount
          : minutiaeCount // ignore: cast_nullable_to_non_nullable
              as int,
      qualityScore: null == qualityScore
          ? _self.qualityScore
          : qualityScore // ignore: cast_nullable_to_non_nullable
              as double,
      enrollmentTimestamp: null == enrollmentTimestamp
          ? _self.enrollmentTimestamp
          : enrollmentTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
