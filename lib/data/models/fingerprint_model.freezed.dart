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
  bool get verified;
  String? get matched_fingerprint_id;
  double get confidence_score;
  String get message;

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
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.matched_fingerprint_id, matched_fingerprint_id) ||
                other.matched_fingerprint_id == matched_fingerprint_id) &&
            (identical(other.confidence_score, confidence_score) ||
                other.confidence_score == confidence_score) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, verified, matched_fingerprint_id, confidence_score, message);

  @override
  String toString() {
    return 'FingerPrintModel(verified: $verified, matched_fingerprint_id: $matched_fingerprint_id, confidence_score: $confidence_score, message: $message)';
  }
}

/// @nodoc
abstract mixin class $FingerPrintModelCopyWith<$Res> {
  factory $FingerPrintModelCopyWith(
          FingerPrintModel value, $Res Function(FingerPrintModel) _then) =
      _$FingerPrintModelCopyWithImpl;
  @useResult
  $Res call(
      {bool verified,
      String? matched_fingerprint_id,
      double confidence_score,
      String message});
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
    Object? verified = null,
    Object? matched_fingerprint_id = freezed,
    Object? confidence_score = null,
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      verified: null == verified
          ? _self.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      matched_fingerprint_id: freezed == matched_fingerprint_id
          ? _self.matched_fingerprint_id
          : matched_fingerprint_id // ignore: cast_nullable_to_non_nullable
              as String?,
      confidence_score: null == confidence_score
          ? _self.confidence_score
          : confidence_score // ignore: cast_nullable_to_non_nullable
              as double,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
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
    TResult Function(bool verified, String? matched_fingerprint_id,
            double confidence_score, String message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FingerPrintModel() when $default != null:
        return $default(_that.verified, _that.matched_fingerprint_id,
            _that.confidence_score, _that.message);
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
    TResult Function(bool verified, String? matched_fingerprint_id,
            double confidence_score, String message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FingerPrintModel():
        return $default(_that.verified, _that.matched_fingerprint_id,
            _that.confidence_score, _that.message);
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
    TResult? Function(bool verified, String? matched_fingerprint_id,
            double confidence_score, String message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FingerPrintModel() when $default != null:
        return $default(_that.verified, _that.matched_fingerprint_id,
            _that.confidence_score, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FingerPrintModel implements FingerPrintModel {
  const _FingerPrintModel(
      {required this.verified,
      required this.matched_fingerprint_id,
      required this.confidence_score,
      required this.message});
  factory _FingerPrintModel.fromJson(Map<String, dynamic> json) =>
      _$FingerPrintModelFromJson(json);

  @override
  final bool verified;
  @override
  final String? matched_fingerprint_id;
  @override
  final double confidence_score;
  @override
  final String message;

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
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.matched_fingerprint_id, matched_fingerprint_id) ||
                other.matched_fingerprint_id == matched_fingerprint_id) &&
            (identical(other.confidence_score, confidence_score) ||
                other.confidence_score == confidence_score) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, verified, matched_fingerprint_id, confidence_score, message);

  @override
  String toString() {
    return 'FingerPrintModel(verified: $verified, matched_fingerprint_id: $matched_fingerprint_id, confidence_score: $confidence_score, message: $message)';
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
      {bool verified,
      String? matched_fingerprint_id,
      double confidence_score,
      String message});
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
    Object? verified = null,
    Object? matched_fingerprint_id = freezed,
    Object? confidence_score = null,
    Object? message = null,
  }) {
    return _then(_FingerPrintModel(
      verified: null == verified
          ? _self.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      matched_fingerprint_id: freezed == matched_fingerprint_id
          ? _self.matched_fingerprint_id
          : matched_fingerprint_id // ignore: cast_nullable_to_non_nullable
              as String?,
      confidence_score: null == confidence_score
          ? _self.confidence_score
          : confidence_score // ignore: cast_nullable_to_non_nullable
              as double,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
