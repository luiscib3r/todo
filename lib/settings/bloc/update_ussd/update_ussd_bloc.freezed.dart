// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'update_ussd_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpdateUssdEventTearOff {
  const _$UpdateUssdEventTearOff();

  _LoadData loadData() {
    return const _LoadData();
  }
}

/// @nodoc
const $UpdateUssdEvent = _$UpdateUssdEventTearOff();

/// @nodoc
mixin _$UpdateUssdEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUssdEventCopyWith<$Res> {
  factory $UpdateUssdEventCopyWith(
          UpdateUssdEvent value, $Res Function(UpdateUssdEvent) then) =
      _$UpdateUssdEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateUssdEventCopyWithImpl<$Res>
    implements $UpdateUssdEventCopyWith<$Res> {
  _$UpdateUssdEventCopyWithImpl(this._value, this._then);

  final UpdateUssdEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateUssdEvent) _then;
}

/// @nodoc
abstract class _$LoadDataCopyWith<$Res> {
  factory _$LoadDataCopyWith(_LoadData value, $Res Function(_LoadData) then) =
      __$LoadDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadDataCopyWithImpl<$Res> extends _$UpdateUssdEventCopyWithImpl<$Res>
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
    return 'UpdateUssdEvent.loadData()';
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
  }) {
    return loadData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
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
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class _LoadData implements UpdateUssdEvent {
  const factory _LoadData() = _$_LoadData;
}

/// @nodoc
class _$UpdateUssdStateTearOff {
  const _$UpdateUssdStateTearOff();

  _UpdateUssdState call({required bool loading, required bool success}) {
    return _UpdateUssdState(
      loading: loading,
      success: success,
    );
  }
}

/// @nodoc
const $UpdateUssdState = _$UpdateUssdStateTearOff();

/// @nodoc
mixin _$UpdateUssdState {
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateUssdStateCopyWith<UpdateUssdState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUssdStateCopyWith<$Res> {
  factory $UpdateUssdStateCopyWith(
          UpdateUssdState value, $Res Function(UpdateUssdState) then) =
      _$UpdateUssdStateCopyWithImpl<$Res>;
  $Res call({bool loading, bool success});
}

/// @nodoc
class _$UpdateUssdStateCopyWithImpl<$Res>
    implements $UpdateUssdStateCopyWith<$Res> {
  _$UpdateUssdStateCopyWithImpl(this._value, this._then);

  final UpdateUssdState _value;
  // ignore: unused_field
  final $Res Function(UpdateUssdState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UpdateUssdStateCopyWith<$Res>
    implements $UpdateUssdStateCopyWith<$Res> {
  factory _$UpdateUssdStateCopyWith(
          _UpdateUssdState value, $Res Function(_UpdateUssdState) then) =
      __$UpdateUssdStateCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, bool success});
}

/// @nodoc
class __$UpdateUssdStateCopyWithImpl<$Res>
    extends _$UpdateUssdStateCopyWithImpl<$Res>
    implements _$UpdateUssdStateCopyWith<$Res> {
  __$UpdateUssdStateCopyWithImpl(
      _UpdateUssdState _value, $Res Function(_UpdateUssdState) _then)
      : super(_value, (v) => _then(v as _UpdateUssdState));

  @override
  _UpdateUssdState get _value => super._value as _UpdateUssdState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? success = freezed,
  }) {
    return _then(_UpdateUssdState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UpdateUssdState implements _UpdateUssdState {
  const _$_UpdateUssdState({required this.loading, required this.success});

  @override
  final bool loading;
  @override
  final bool success;

  @override
  String toString() {
    return 'UpdateUssdState(loading: $loading, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateUssdState &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(success);

  @JsonKey(ignore: true)
  @override
  _$UpdateUssdStateCopyWith<_UpdateUssdState> get copyWith =>
      __$UpdateUssdStateCopyWithImpl<_UpdateUssdState>(this, _$identity);
}

abstract class _UpdateUssdState implements UpdateUssdState {
  const factory _UpdateUssdState(
      {required bool loading, required bool success}) = _$_UpdateUssdState;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  bool get success => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateUssdStateCopyWith<_UpdateUssdState> get copyWith =>
      throw _privateConstructorUsedError;
}
