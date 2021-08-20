// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ThemeEventTearOff {
  const _$ThemeEventTearOff();

  _SetDark setDark() {
    return const _SetDark();
  }

  _SetLight setLight() {
    return const _SetLight();
  }
}

/// @nodoc
const $ThemeEvent = _$ThemeEventTearOff();

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setDark,
    required TResult Function() setLight,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setDark,
    TResult Function()? setLight,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDark value) setDark,
    required TResult Function(_SetLight value) setLight,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDark value)? setDark,
    TResult Function(_SetLight value)? setLight,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res> implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  final ThemeEvent _value;
  // ignore: unused_field
  final $Res Function(ThemeEvent) _then;
}

/// @nodoc
abstract class _$SetDarkCopyWith<$Res> {
  factory _$SetDarkCopyWith(_SetDark value, $Res Function(_SetDark) then) =
      __$SetDarkCopyWithImpl<$Res>;
}

/// @nodoc
class __$SetDarkCopyWithImpl<$Res> extends _$ThemeEventCopyWithImpl<$Res>
    implements _$SetDarkCopyWith<$Res> {
  __$SetDarkCopyWithImpl(_SetDark _value, $Res Function(_SetDark) _then)
      : super(_value, (v) => _then(v as _SetDark));

  @override
  _SetDark get _value => super._value as _SetDark;
}

/// @nodoc

class _$_SetDark implements _SetDark {
  const _$_SetDark();

  @override
  String toString() {
    return 'ThemeEvent.setDark()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SetDark);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setDark,
    required TResult Function() setLight,
  }) {
    return setDark();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setDark,
    TResult Function()? setLight,
    required TResult orElse(),
  }) {
    if (setDark != null) {
      return setDark();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDark value) setDark,
    required TResult Function(_SetLight value) setLight,
  }) {
    return setDark(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDark value)? setDark,
    TResult Function(_SetLight value)? setLight,
    required TResult orElse(),
  }) {
    if (setDark != null) {
      return setDark(this);
    }
    return orElse();
  }
}

abstract class _SetDark implements ThemeEvent {
  const factory _SetDark() = _$_SetDark;
}

/// @nodoc
abstract class _$SetLightCopyWith<$Res> {
  factory _$SetLightCopyWith(_SetLight value, $Res Function(_SetLight) then) =
      __$SetLightCopyWithImpl<$Res>;
}

/// @nodoc
class __$SetLightCopyWithImpl<$Res> extends _$ThemeEventCopyWithImpl<$Res>
    implements _$SetLightCopyWith<$Res> {
  __$SetLightCopyWithImpl(_SetLight _value, $Res Function(_SetLight) _then)
      : super(_value, (v) => _then(v as _SetLight));

  @override
  _SetLight get _value => super._value as _SetLight;
}

/// @nodoc

class _$_SetLight implements _SetLight {
  const _$_SetLight();

  @override
  String toString() {
    return 'ThemeEvent.setLight()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SetLight);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setDark,
    required TResult Function() setLight,
  }) {
    return setLight();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setDark,
    TResult Function()? setLight,
    required TResult orElse(),
  }) {
    if (setLight != null) {
      return setLight();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDark value) setDark,
    required TResult Function(_SetLight value) setLight,
  }) {
    return setLight(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDark value)? setDark,
    TResult Function(_SetLight value)? setLight,
    required TResult orElse(),
  }) {
    if (setLight != null) {
      return setLight(this);
    }
    return orElse();
  }
}

abstract class _SetLight implements ThemeEvent {
  const factory _SetLight() = _$_SetLight;
}

/// @nodoc
class _$ThemeStateTearOff {
  const _$ThemeStateTearOff();

  _ThemeState call({required ThemeMode themeMode}) {
    return _ThemeState(
      themeMode: themeMode,
    );
  }
}

/// @nodoc
const $ThemeState = _$ThemeStateTearOff();

/// @nodoc
mixin _$ThemeState {
  ThemeMode get themeMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res>;
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res> implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  final ThemeState _value;
  // ignore: unused_field
  final $Res Function(ThemeState) _then;

  @override
  $Res call({
    Object? themeMode = freezed,
  }) {
    return _then(_value.copyWith(
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc
abstract class _$ThemeStateCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$ThemeStateCopyWith(
          _ThemeState value, $Res Function(_ThemeState) then) =
      __$ThemeStateCopyWithImpl<$Res>;
  @override
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$ThemeStateCopyWithImpl<$Res> extends _$ThemeStateCopyWithImpl<$Res>
    implements _$ThemeStateCopyWith<$Res> {
  __$ThemeStateCopyWithImpl(
      _ThemeState _value, $Res Function(_ThemeState) _then)
      : super(_value, (v) => _then(v as _ThemeState));

  @override
  _ThemeState get _value => super._value as _ThemeState;

  @override
  $Res call({
    Object? themeMode = freezed,
  }) {
    return _then(_ThemeState(
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$_ThemeState implements _ThemeState {
  const _$_ThemeState({required this.themeMode});

  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'ThemeState(themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThemeState &&
            (identical(other.themeMode, themeMode) ||
                const DeepCollectionEquality()
                    .equals(other.themeMode, themeMode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(themeMode);

  @JsonKey(ignore: true)
  @override
  _$ThemeStateCopyWith<_ThemeState> get copyWith =>
      __$ThemeStateCopyWithImpl<_ThemeState>(this, _$identity);
}

abstract class _ThemeState implements ThemeState {
  const factory _ThemeState({required ThemeMode themeMode}) = _$_ThemeState;

  @override
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ThemeStateCopyWith<_ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}
