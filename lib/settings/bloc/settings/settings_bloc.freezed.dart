// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsEventTearOff {
  const _$SettingsEventTearOff();

  _LoadData loadData() {
    return const _LoadData();
  }

  _ShowFloatWidget showFloatWidget(bool value) {
    return _ShowFloatWidget(
      value,
    );
  }

  _TurnOffWifi turnOffWifi(bool value) {
    return _TurnOffWifi(
      value,
    );
  }
}

/// @nodoc
const $SettingsEvent = _$SettingsEventTearOff();

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(bool value) showFloatWidget,
    required TResult Function(bool value) turnOffWifi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(bool value)? showFloatWidget,
    TResult Function(bool value)? turnOffWifi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_ShowFloatWidget value) showFloatWidget,
    required TResult Function(_TurnOffWifi value) turnOffWifi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_ShowFloatWidget value)? showFloatWidget,
    TResult Function(_TurnOffWifi value)? turnOffWifi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  final SettingsEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsEvent) _then;
}

/// @nodoc
abstract class _$LoadDataCopyWith<$Res> {
  factory _$LoadDataCopyWith(_LoadData value, $Res Function(_LoadData) then) =
      __$LoadDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadDataCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res>
    implements _$LoadDataCopyWith<$Res> {
  __$LoadDataCopyWithImpl(_LoadData _value, $Res Function(_LoadData) _then)
      : super(_value, (v) => _then(v as _LoadData));

  @override
  _LoadData get _value => super._value as _LoadData;
}

/// @nodoc

class _$_LoadData implements _LoadData {
  const _$_LoadData();

  @override
  String toString() {
    return 'SettingsEvent.loadData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(bool value) showFloatWidget,
    required TResult Function(bool value) turnOffWifi,
  }) {
    return loadData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(bool value)? showFloatWidget,
    TResult Function(bool value)? turnOffWifi,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_ShowFloatWidget value) showFloatWidget,
    required TResult Function(_TurnOffWifi value) turnOffWifi,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_ShowFloatWidget value)? showFloatWidget,
    TResult Function(_TurnOffWifi value)? turnOffWifi,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class _LoadData implements SettingsEvent {
  const factory _LoadData() = _$_LoadData;
}

/// @nodoc
abstract class _$ShowFloatWidgetCopyWith<$Res> {
  factory _$ShowFloatWidgetCopyWith(
          _ShowFloatWidget value, $Res Function(_ShowFloatWidget) then) =
      __$ShowFloatWidgetCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$ShowFloatWidgetCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$ShowFloatWidgetCopyWith<$Res> {
  __$ShowFloatWidgetCopyWithImpl(
      _ShowFloatWidget _value, $Res Function(_ShowFloatWidget) _then)
      : super(_value, (v) => _then(v as _ShowFloatWidget));

  @override
  _ShowFloatWidget get _value => super._value as _ShowFloatWidget;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ShowFloatWidget(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShowFloatWidget implements _ShowFloatWidget {
  const _$_ShowFloatWidget(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'SettingsEvent.showFloatWidget(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowFloatWidget &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ShowFloatWidgetCopyWith<_ShowFloatWidget> get copyWith =>
      __$ShowFloatWidgetCopyWithImpl<_ShowFloatWidget>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(bool value) showFloatWidget,
    required TResult Function(bool value) turnOffWifi,
  }) {
    return showFloatWidget(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(bool value)? showFloatWidget,
    TResult Function(bool value)? turnOffWifi,
    required TResult orElse(),
  }) {
    if (showFloatWidget != null) {
      return showFloatWidget(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_ShowFloatWidget value) showFloatWidget,
    required TResult Function(_TurnOffWifi value) turnOffWifi,
  }) {
    return showFloatWidget(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_ShowFloatWidget value)? showFloatWidget,
    TResult Function(_TurnOffWifi value)? turnOffWifi,
    required TResult orElse(),
  }) {
    if (showFloatWidget != null) {
      return showFloatWidget(this);
    }
    return orElse();
  }
}

abstract class _ShowFloatWidget implements SettingsEvent {
  const factory _ShowFloatWidget(bool value) = _$_ShowFloatWidget;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ShowFloatWidgetCopyWith<_ShowFloatWidget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TurnOffWifiCopyWith<$Res> {
  factory _$TurnOffWifiCopyWith(
          _TurnOffWifi value, $Res Function(_TurnOffWifi) then) =
      __$TurnOffWifiCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$TurnOffWifiCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res>
    implements _$TurnOffWifiCopyWith<$Res> {
  __$TurnOffWifiCopyWithImpl(
      _TurnOffWifi _value, $Res Function(_TurnOffWifi) _then)
      : super(_value, (v) => _then(v as _TurnOffWifi));

  @override
  _TurnOffWifi get _value => super._value as _TurnOffWifi;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_TurnOffWifi(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TurnOffWifi implements _TurnOffWifi {
  const _$_TurnOffWifi(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'SettingsEvent.turnOffWifi(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TurnOffWifi &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$TurnOffWifiCopyWith<_TurnOffWifi> get copyWith =>
      __$TurnOffWifiCopyWithImpl<_TurnOffWifi>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(bool value) showFloatWidget,
    required TResult Function(bool value) turnOffWifi,
  }) {
    return turnOffWifi(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(bool value)? showFloatWidget,
    TResult Function(bool value)? turnOffWifi,
    required TResult orElse(),
  }) {
    if (turnOffWifi != null) {
      return turnOffWifi(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_ShowFloatWidget value) showFloatWidget,
    required TResult Function(_TurnOffWifi value) turnOffWifi,
  }) {
    return turnOffWifi(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_ShowFloatWidget value)? showFloatWidget,
    TResult Function(_TurnOffWifi value)? turnOffWifi,
    required TResult orElse(),
  }) {
    if (turnOffWifi != null) {
      return turnOffWifi(this);
    }
    return orElse();
  }
}

abstract class _TurnOffWifi implements SettingsEvent {
  const factory _TurnOffWifi(bool value) = _$_TurnOffWifi;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TurnOffWifiCopyWith<_TurnOffWifi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

  _SettingsState call(
      {required String appVersion,
      required bool showFloatWidget,
      required bool turnOffWifi}) {
    return _SettingsState(
      appVersion: appVersion,
      showFloatWidget: showFloatWidget,
      turnOffWifi: turnOffWifi,
    );
  }
}

/// @nodoc
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  String get appVersion => throw _privateConstructorUsedError;
  bool get showFloatWidget => throw _privateConstructorUsedError;
  bool get turnOffWifi => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call({String appVersion, bool showFloatWidget, bool turnOffWifi});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

  @override
  $Res call({
    Object? appVersion = freezed,
    Object? showFloatWidget = freezed,
    Object? turnOffWifi = freezed,
  }) {
    return _then(_value.copyWith(
      appVersion: appVersion == freezed
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      showFloatWidget: showFloatWidget == freezed
          ? _value.showFloatWidget
          : showFloatWidget // ignore: cast_nullable_to_non_nullable
              as bool,
      turnOffWifi: turnOffWifi == freezed
          ? _value.turnOffWifi
          : turnOffWifi // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(
          _SettingsState value, $Res Function(_SettingsState) then) =
      __$SettingsStateCopyWithImpl<$Res>;
  @override
  $Res call({String appVersion, bool showFloatWidget, bool turnOffWifi});
}

/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(
      _SettingsState _value, $Res Function(_SettingsState) _then)
      : super(_value, (v) => _then(v as _SettingsState));

  @override
  _SettingsState get _value => super._value as _SettingsState;

  @override
  $Res call({
    Object? appVersion = freezed,
    Object? showFloatWidget = freezed,
    Object? turnOffWifi = freezed,
  }) {
    return _then(_SettingsState(
      appVersion: appVersion == freezed
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      showFloatWidget: showFloatWidget == freezed
          ? _value.showFloatWidget
          : showFloatWidget // ignore: cast_nullable_to_non_nullable
              as bool,
      turnOffWifi: turnOffWifi == freezed
          ? _value.turnOffWifi
          : turnOffWifi // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SettingsState implements _SettingsState {
  const _$_SettingsState(
      {required this.appVersion,
      required this.showFloatWidget,
      required this.turnOffWifi});

  @override
  final String appVersion;
  @override
  final bool showFloatWidget;
  @override
  final bool turnOffWifi;

  @override
  String toString() {
    return 'SettingsState(appVersion: $appVersion, showFloatWidget: $showFloatWidget, turnOffWifi: $turnOffWifi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingsState &&
            (identical(other.appVersion, appVersion) ||
                const DeepCollectionEquality()
                    .equals(other.appVersion, appVersion)) &&
            (identical(other.showFloatWidget, showFloatWidget) ||
                const DeepCollectionEquality()
                    .equals(other.showFloatWidget, showFloatWidget)) &&
            (identical(other.turnOffWifi, turnOffWifi) ||
                const DeepCollectionEquality()
                    .equals(other.turnOffWifi, turnOffWifi)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appVersion) ^
      const DeepCollectionEquality().hash(showFloatWidget) ^
      const DeepCollectionEquality().hash(turnOffWifi);

  @JsonKey(ignore: true)
  @override
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {required String appVersion,
      required bool showFloatWidget,
      required bool turnOffWifi}) = _$_SettingsState;

  @override
  String get appVersion => throw _privateConstructorUsedError;
  @override
  bool get showFloatWidget => throw _privateConstructorUsedError;
  @override
  bool get turnOffWifi => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
