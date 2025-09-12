// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'esp_device_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EspDeviceModel {
  String get name;
  String get address;
  bool get isConnected;
  int get signalStrength;
  String get deviceType;

  /// Create a copy of EspDeviceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EspDeviceModelCopyWith<EspDeviceModel> get copyWith =>
      _$EspDeviceModelCopyWithImpl<EspDeviceModel>(
          this as EspDeviceModel, _$identity);

  /// Serializes this EspDeviceModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EspDeviceModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected) &&
            (identical(other.signalStrength, signalStrength) ||
                other.signalStrength == signalStrength) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, address, isConnected, signalStrength, deviceType);

  @override
  String toString() {
    return 'EspDeviceModel(name: $name, address: $address, isConnected: $isConnected, signalStrength: $signalStrength, deviceType: $deviceType)';
  }
}

/// @nodoc
abstract mixin class $EspDeviceModelCopyWith<$Res> {
  factory $EspDeviceModelCopyWith(
          EspDeviceModel value, $Res Function(EspDeviceModel) _then) =
      _$EspDeviceModelCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String address,
      bool isConnected,
      int signalStrength,
      String deviceType});
}

/// @nodoc
class _$EspDeviceModelCopyWithImpl<$Res>
    implements $EspDeviceModelCopyWith<$Res> {
  _$EspDeviceModelCopyWithImpl(this._self, this._then);

  final EspDeviceModel _self;
  final $Res Function(EspDeviceModel) _then;

  /// Create a copy of EspDeviceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? isConnected = null,
    Object? signalStrength = null,
    Object? deviceType = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      isConnected: null == isConnected
          ? _self.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      signalStrength: null == signalStrength
          ? _self.signalStrength
          : signalStrength // ignore: cast_nullable_to_non_nullable
              as int,
      deviceType: null == deviceType
          ? _self.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [EspDeviceModel].
extension EspDeviceModelPatterns on EspDeviceModel {
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
    TResult Function(_EspDeviceModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EspDeviceModel() when $default != null:
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
    TResult Function(_EspDeviceModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EspDeviceModel():
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
    TResult? Function(_EspDeviceModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EspDeviceModel() when $default != null:
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
    TResult Function(String name, String address, bool isConnected,
            int signalStrength, String deviceType)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EspDeviceModel() when $default != null:
        return $default(_that.name, _that.address, _that.isConnected,
            _that.signalStrength, _that.deviceType);
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
    TResult Function(String name, String address, bool isConnected,
            int signalStrength, String deviceType)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EspDeviceModel():
        return $default(_that.name, _that.address, _that.isConnected,
            _that.signalStrength, _that.deviceType);
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
    TResult? Function(String name, String address, bool isConnected,
            int signalStrength, String deviceType)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EspDeviceModel() when $default != null:
        return $default(_that.name, _that.address, _that.isConnected,
            _that.signalStrength, _that.deviceType);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _EspDeviceModel implements EspDeviceModel {
  const _EspDeviceModel(
      {required this.name,
      required this.address,
      this.isConnected = false,
      this.signalStrength = 0,
      this.deviceType = ''});
  factory _EspDeviceModel.fromJson(Map<String, dynamic> json) =>
      _$EspDeviceModelFromJson(json);

  @override
  final String name;
  @override
  final String address;
  @override
  @JsonKey()
  final bool isConnected;
  @override
  @JsonKey()
  final int signalStrength;
  @override
  @JsonKey()
  final String deviceType;

  /// Create a copy of EspDeviceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EspDeviceModelCopyWith<_EspDeviceModel> get copyWith =>
      __$EspDeviceModelCopyWithImpl<_EspDeviceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EspDeviceModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EspDeviceModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected) &&
            (identical(other.signalStrength, signalStrength) ||
                other.signalStrength == signalStrength) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, address, isConnected, signalStrength, deviceType);

  @override
  String toString() {
    return 'EspDeviceModel(name: $name, address: $address, isConnected: $isConnected, signalStrength: $signalStrength, deviceType: $deviceType)';
  }
}

/// @nodoc
abstract mixin class _$EspDeviceModelCopyWith<$Res>
    implements $EspDeviceModelCopyWith<$Res> {
  factory _$EspDeviceModelCopyWith(
          _EspDeviceModel value, $Res Function(_EspDeviceModel) _then) =
      __$EspDeviceModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String address,
      bool isConnected,
      int signalStrength,
      String deviceType});
}

/// @nodoc
class __$EspDeviceModelCopyWithImpl<$Res>
    implements _$EspDeviceModelCopyWith<$Res> {
  __$EspDeviceModelCopyWithImpl(this._self, this._then);

  final _EspDeviceModel _self;
  final $Res Function(_EspDeviceModel) _then;

  /// Create a copy of EspDeviceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? isConnected = null,
    Object? signalStrength = null,
    Object? deviceType = null,
  }) {
    return _then(_EspDeviceModel(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      isConnected: null == isConnected
          ? _self.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      signalStrength: null == signalStrength
          ? _self.signalStrength
          : signalStrength // ignore: cast_nullable_to_non_nullable
              as int,
      deviceType: null == deviceType
          ? _self.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$EspConnectionStatus {
  bool get isConnected;
  String get deviceName;
  String get deviceAddress;
  String get lastError;
  int get signalStrength;

  /// Create a copy of EspConnectionStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EspConnectionStatusCopyWith<EspConnectionStatus> get copyWith =>
      _$EspConnectionStatusCopyWithImpl<EspConnectionStatus>(
          this as EspConnectionStatus, _$identity);

  /// Serializes this EspConnectionStatus to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EspConnectionStatus &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.deviceAddress, deviceAddress) ||
                other.deviceAddress == deviceAddress) &&
            (identical(other.lastError, lastError) ||
                other.lastError == lastError) &&
            (identical(other.signalStrength, signalStrength) ||
                other.signalStrength == signalStrength));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isConnected, deviceName,
      deviceAddress, lastError, signalStrength);

  @override
  String toString() {
    return 'EspConnectionStatus(isConnected: $isConnected, deviceName: $deviceName, deviceAddress: $deviceAddress, lastError: $lastError, signalStrength: $signalStrength)';
  }
}

/// @nodoc
abstract mixin class $EspConnectionStatusCopyWith<$Res> {
  factory $EspConnectionStatusCopyWith(
          EspConnectionStatus value, $Res Function(EspConnectionStatus) _then) =
      _$EspConnectionStatusCopyWithImpl;
  @useResult
  $Res call(
      {bool isConnected,
      String deviceName,
      String deviceAddress,
      String lastError,
      int signalStrength});
}

/// @nodoc
class _$EspConnectionStatusCopyWithImpl<$Res>
    implements $EspConnectionStatusCopyWith<$Res> {
  _$EspConnectionStatusCopyWithImpl(this._self, this._then);

  final EspConnectionStatus _self;
  final $Res Function(EspConnectionStatus) _then;

  /// Create a copy of EspConnectionStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
    Object? deviceName = null,
    Object? deviceAddress = null,
    Object? lastError = null,
    Object? signalStrength = null,
  }) {
    return _then(_self.copyWith(
      isConnected: null == isConnected
          ? _self.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      deviceName: null == deviceName
          ? _self.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
      deviceAddress: null == deviceAddress
          ? _self.deviceAddress
          : deviceAddress // ignore: cast_nullable_to_non_nullable
              as String,
      lastError: null == lastError
          ? _self.lastError
          : lastError // ignore: cast_nullable_to_non_nullable
              as String,
      signalStrength: null == signalStrength
          ? _self.signalStrength
          : signalStrength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [EspConnectionStatus].
extension EspConnectionStatusPatterns on EspConnectionStatus {
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
    TResult Function(_EspConnectionStatus value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EspConnectionStatus() when $default != null:
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
    TResult Function(_EspConnectionStatus value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EspConnectionStatus():
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
    TResult? Function(_EspConnectionStatus value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EspConnectionStatus() when $default != null:
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
    TResult Function(bool isConnected, String deviceName, String deviceAddress,
            String lastError, int signalStrength)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EspConnectionStatus() when $default != null:
        return $default(_that.isConnected, _that.deviceName,
            _that.deviceAddress, _that.lastError, _that.signalStrength);
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
    TResult Function(bool isConnected, String deviceName, String deviceAddress,
            String lastError, int signalStrength)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EspConnectionStatus():
        return $default(_that.isConnected, _that.deviceName,
            _that.deviceAddress, _that.lastError, _that.signalStrength);
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
    TResult? Function(bool isConnected, String deviceName, String deviceAddress,
            String lastError, int signalStrength)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EspConnectionStatus() when $default != null:
        return $default(_that.isConnected, _that.deviceName,
            _that.deviceAddress, _that.lastError, _that.signalStrength);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _EspConnectionStatus implements EspConnectionStatus {
  const _EspConnectionStatus(
      {this.isConnected = false,
      this.deviceName = '',
      this.deviceAddress = '',
      this.lastError = '',
      this.signalStrength = 0});
  factory _EspConnectionStatus.fromJson(Map<String, dynamic> json) =>
      _$EspConnectionStatusFromJson(json);

  @override
  @JsonKey()
  final bool isConnected;
  @override
  @JsonKey()
  final String deviceName;
  @override
  @JsonKey()
  final String deviceAddress;
  @override
  @JsonKey()
  final String lastError;
  @override
  @JsonKey()
  final int signalStrength;

  /// Create a copy of EspConnectionStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EspConnectionStatusCopyWith<_EspConnectionStatus> get copyWith =>
      __$EspConnectionStatusCopyWithImpl<_EspConnectionStatus>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EspConnectionStatusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EspConnectionStatus &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.deviceAddress, deviceAddress) ||
                other.deviceAddress == deviceAddress) &&
            (identical(other.lastError, lastError) ||
                other.lastError == lastError) &&
            (identical(other.signalStrength, signalStrength) ||
                other.signalStrength == signalStrength));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isConnected, deviceName,
      deviceAddress, lastError, signalStrength);

  @override
  String toString() {
    return 'EspConnectionStatus(isConnected: $isConnected, deviceName: $deviceName, deviceAddress: $deviceAddress, lastError: $lastError, signalStrength: $signalStrength)';
  }
}

/// @nodoc
abstract mixin class _$EspConnectionStatusCopyWith<$Res>
    implements $EspConnectionStatusCopyWith<$Res> {
  factory _$EspConnectionStatusCopyWith(_EspConnectionStatus value,
          $Res Function(_EspConnectionStatus) _then) =
      __$EspConnectionStatusCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isConnected,
      String deviceName,
      String deviceAddress,
      String lastError,
      int signalStrength});
}

/// @nodoc
class __$EspConnectionStatusCopyWithImpl<$Res>
    implements _$EspConnectionStatusCopyWith<$Res> {
  __$EspConnectionStatusCopyWithImpl(this._self, this._then);

  final _EspConnectionStatus _self;
  final $Res Function(_EspConnectionStatus) _then;

  /// Create a copy of EspConnectionStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isConnected = null,
    Object? deviceName = null,
    Object? deviceAddress = null,
    Object? lastError = null,
    Object? signalStrength = null,
  }) {
    return _then(_EspConnectionStatus(
      isConnected: null == isConnected
          ? _self.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      deviceName: null == deviceName
          ? _self.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
      deviceAddress: null == deviceAddress
          ? _self.deviceAddress
          : deviceAddress // ignore: cast_nullable_to_non_nullable
              as String,
      lastError: null == lastError
          ? _self.lastError
          : lastError // ignore: cast_nullable_to_non_nullable
              as String,
      signalStrength: null == signalStrength
          ? _self.signalStrength
          : signalStrength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$EspFingerprintData {
  String get fingerprintId;
  String get template;
  int get quality;
  String get imageData;
  String get timestamp;

  /// Create a copy of EspFingerprintData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EspFingerprintDataCopyWith<EspFingerprintData> get copyWith =>
      _$EspFingerprintDataCopyWithImpl<EspFingerprintData>(
          this as EspFingerprintData, _$identity);

  /// Serializes this EspFingerprintData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EspFingerprintData &&
            (identical(other.fingerprintId, fingerprintId) ||
                other.fingerprintId == fingerprintId) &&
            (identical(other.template, template) ||
                other.template == template) &&
            (identical(other.quality, quality) || other.quality == quality) &&
            (identical(other.imageData, imageData) ||
                other.imageData == imageData) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, fingerprintId, template, quality, imageData, timestamp);

  @override
  String toString() {
    return 'EspFingerprintData(fingerprintId: $fingerprintId, template: $template, quality: $quality, imageData: $imageData, timestamp: $timestamp)';
  }
}

/// @nodoc
abstract mixin class $EspFingerprintDataCopyWith<$Res> {
  factory $EspFingerprintDataCopyWith(
          EspFingerprintData value, $Res Function(EspFingerprintData) _then) =
      _$EspFingerprintDataCopyWithImpl;
  @useResult
  $Res call(
      {String fingerprintId,
      String template,
      int quality,
      String imageData,
      String timestamp});
}

/// @nodoc
class _$EspFingerprintDataCopyWithImpl<$Res>
    implements $EspFingerprintDataCopyWith<$Res> {
  _$EspFingerprintDataCopyWithImpl(this._self, this._then);

  final EspFingerprintData _self;
  final $Res Function(EspFingerprintData) _then;

  /// Create a copy of EspFingerprintData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fingerprintId = null,
    Object? template = null,
    Object? quality = null,
    Object? imageData = null,
    Object? timestamp = null,
  }) {
    return _then(_self.copyWith(
      fingerprintId: null == fingerprintId
          ? _self.fingerprintId
          : fingerprintId // ignore: cast_nullable_to_non_nullable
              as String,
      template: null == template
          ? _self.template
          : template // ignore: cast_nullable_to_non_nullable
              as String,
      quality: null == quality
          ? _self.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as int,
      imageData: null == imageData
          ? _self.imageData
          : imageData // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [EspFingerprintData].
extension EspFingerprintDataPatterns on EspFingerprintData {
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
    TResult Function(_EspFingerprintData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EspFingerprintData() when $default != null:
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
    TResult Function(_EspFingerprintData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EspFingerprintData():
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
    TResult? Function(_EspFingerprintData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EspFingerprintData() when $default != null:
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
    TResult Function(String fingerprintId, String template, int quality,
            String imageData, String timestamp)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EspFingerprintData() when $default != null:
        return $default(_that.fingerprintId, _that.template, _that.quality,
            _that.imageData, _that.timestamp);
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
    TResult Function(String fingerprintId, String template, int quality,
            String imageData, String timestamp)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EspFingerprintData():
        return $default(_that.fingerprintId, _that.template, _that.quality,
            _that.imageData, _that.timestamp);
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
    TResult? Function(String fingerprintId, String template, int quality,
            String imageData, String timestamp)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EspFingerprintData() when $default != null:
        return $default(_that.fingerprintId, _that.template, _that.quality,
            _that.imageData, _that.timestamp);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _EspFingerprintData implements EspFingerprintData {
  const _EspFingerprintData(
      {required this.fingerprintId,
      required this.template,
      this.quality = 0,
      this.imageData = '',
      this.timestamp = ''});
  factory _EspFingerprintData.fromJson(Map<String, dynamic> json) =>
      _$EspFingerprintDataFromJson(json);

  @override
  final String fingerprintId;
  @override
  final String template;
  @override
  @JsonKey()
  final int quality;
  @override
  @JsonKey()
  final String imageData;
  @override
  @JsonKey()
  final String timestamp;

  /// Create a copy of EspFingerprintData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EspFingerprintDataCopyWith<_EspFingerprintData> get copyWith =>
      __$EspFingerprintDataCopyWithImpl<_EspFingerprintData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EspFingerprintDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EspFingerprintData &&
            (identical(other.fingerprintId, fingerprintId) ||
                other.fingerprintId == fingerprintId) &&
            (identical(other.template, template) ||
                other.template == template) &&
            (identical(other.quality, quality) || other.quality == quality) &&
            (identical(other.imageData, imageData) ||
                other.imageData == imageData) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, fingerprintId, template, quality, imageData, timestamp);

  @override
  String toString() {
    return 'EspFingerprintData(fingerprintId: $fingerprintId, template: $template, quality: $quality, imageData: $imageData, timestamp: $timestamp)';
  }
}

/// @nodoc
abstract mixin class _$EspFingerprintDataCopyWith<$Res>
    implements $EspFingerprintDataCopyWith<$Res> {
  factory _$EspFingerprintDataCopyWith(
          _EspFingerprintData value, $Res Function(_EspFingerprintData) _then) =
      __$EspFingerprintDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String fingerprintId,
      String template,
      int quality,
      String imageData,
      String timestamp});
}

/// @nodoc
class __$EspFingerprintDataCopyWithImpl<$Res>
    implements _$EspFingerprintDataCopyWith<$Res> {
  __$EspFingerprintDataCopyWithImpl(this._self, this._then);

  final _EspFingerprintData _self;
  final $Res Function(_EspFingerprintData) _then;

  /// Create a copy of EspFingerprintData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fingerprintId = null,
    Object? template = null,
    Object? quality = null,
    Object? imageData = null,
    Object? timestamp = null,
  }) {
    return _then(_EspFingerprintData(
      fingerprintId: null == fingerprintId
          ? _self.fingerprintId
          : fingerprintId // ignore: cast_nullable_to_non_nullable
              as String,
      template: null == template
          ? _self.template
          : template // ignore: cast_nullable_to_non_nullable
              as String,
      quality: null == quality
          ? _self.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as int,
      imageData: null == imageData
          ? _self.imageData
          : imageData // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$EspCommand {
  String get command;
  String get parameters;
  String get deviceAddress;

  /// Create a copy of EspCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EspCommandCopyWith<EspCommand> get copyWith =>
      _$EspCommandCopyWithImpl<EspCommand>(this as EspCommand, _$identity);

  /// Serializes this EspCommand to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EspCommand &&
            (identical(other.command, command) || other.command == command) &&
            (identical(other.parameters, parameters) ||
                other.parameters == parameters) &&
            (identical(other.deviceAddress, deviceAddress) ||
                other.deviceAddress == deviceAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, command, parameters, deviceAddress);

  @override
  String toString() {
    return 'EspCommand(command: $command, parameters: $parameters, deviceAddress: $deviceAddress)';
  }
}

/// @nodoc
abstract mixin class $EspCommandCopyWith<$Res> {
  factory $EspCommandCopyWith(
          EspCommand value, $Res Function(EspCommand) _then) =
      _$EspCommandCopyWithImpl;
  @useResult
  $Res call({String command, String parameters, String deviceAddress});
}

/// @nodoc
class _$EspCommandCopyWithImpl<$Res> implements $EspCommandCopyWith<$Res> {
  _$EspCommandCopyWithImpl(this._self, this._then);

  final EspCommand _self;
  final $Res Function(EspCommand) _then;

  /// Create a copy of EspCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? command = null,
    Object? parameters = null,
    Object? deviceAddress = null,
  }) {
    return _then(_self.copyWith(
      command: null == command
          ? _self.command
          : command // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _self.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as String,
      deviceAddress: null == deviceAddress
          ? _self.deviceAddress
          : deviceAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [EspCommand].
extension EspCommandPatterns on EspCommand {
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
    TResult Function(_EspCommand value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EspCommand() when $default != null:
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
    TResult Function(_EspCommand value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EspCommand():
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
    TResult? Function(_EspCommand value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EspCommand() when $default != null:
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
    TResult Function(String command, String parameters, String deviceAddress)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EspCommand() when $default != null:
        return $default(_that.command, _that.parameters, _that.deviceAddress);
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
    TResult Function(String command, String parameters, String deviceAddress)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EspCommand():
        return $default(_that.command, _that.parameters, _that.deviceAddress);
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
    TResult? Function(String command, String parameters, String deviceAddress)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EspCommand() when $default != null:
        return $default(_that.command, _that.parameters, _that.deviceAddress);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _EspCommand implements EspCommand {
  const _EspCommand(
      {required this.command, this.parameters = '', this.deviceAddress = ''});
  factory _EspCommand.fromJson(Map<String, dynamic> json) =>
      _$EspCommandFromJson(json);

  @override
  final String command;
  @override
  @JsonKey()
  final String parameters;
  @override
  @JsonKey()
  final String deviceAddress;

  /// Create a copy of EspCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EspCommandCopyWith<_EspCommand> get copyWith =>
      __$EspCommandCopyWithImpl<_EspCommand>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EspCommandToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EspCommand &&
            (identical(other.command, command) || other.command == command) &&
            (identical(other.parameters, parameters) ||
                other.parameters == parameters) &&
            (identical(other.deviceAddress, deviceAddress) ||
                other.deviceAddress == deviceAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, command, parameters, deviceAddress);

  @override
  String toString() {
    return 'EspCommand(command: $command, parameters: $parameters, deviceAddress: $deviceAddress)';
  }
}

/// @nodoc
abstract mixin class _$EspCommandCopyWith<$Res>
    implements $EspCommandCopyWith<$Res> {
  factory _$EspCommandCopyWith(
          _EspCommand value, $Res Function(_EspCommand) _then) =
      __$EspCommandCopyWithImpl;
  @override
  @useResult
  $Res call({String command, String parameters, String deviceAddress});
}

/// @nodoc
class __$EspCommandCopyWithImpl<$Res> implements _$EspCommandCopyWith<$Res> {
  __$EspCommandCopyWithImpl(this._self, this._then);

  final _EspCommand _self;
  final $Res Function(_EspCommand) _then;

  /// Create a copy of EspCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? command = null,
    Object? parameters = null,
    Object? deviceAddress = null,
  }) {
    return _then(_EspCommand(
      command: null == command
          ? _self.command
          : command // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _self.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as String,
      deviceAddress: null == deviceAddress
          ? _self.deviceAddress
          : deviceAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
