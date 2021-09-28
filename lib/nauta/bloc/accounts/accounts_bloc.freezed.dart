// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'accounts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccountsEventTearOff {
  const _$AccountsEventTearOff();

  _LoadData loadData() {
    return const _LoadData();
  }

  _RemoveAccount removeAccount(int id) {
    return _RemoveAccount(
      id,
    );
  }
}

/// @nodoc
const $AccountsEvent = _$AccountsEventTearOff();

/// @nodoc
mixin _$AccountsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(int id) removeAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(int id)? removeAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_RemoveAccount value) removeAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_RemoveAccount value)? removeAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountsEventCopyWith<$Res> {
  factory $AccountsEventCopyWith(
          AccountsEvent value, $Res Function(AccountsEvent) then) =
      _$AccountsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountsEventCopyWithImpl<$Res>
    implements $AccountsEventCopyWith<$Res> {
  _$AccountsEventCopyWithImpl(this._value, this._then);

  final AccountsEvent _value;
  // ignore: unused_field
  final $Res Function(AccountsEvent) _then;
}

/// @nodoc
abstract class _$LoadDataCopyWith<$Res> {
  factory _$LoadDataCopyWith(_LoadData value, $Res Function(_LoadData) then) =
      __$LoadDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadDataCopyWithImpl<$Res> extends _$AccountsEventCopyWithImpl<$Res>
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
    return 'AccountsEvent.loadData()';
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
    required TResult Function(int id) removeAccount,
  }) {
    return loadData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(int id)? removeAccount,
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
    required TResult Function(_RemoveAccount value) removeAccount,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_RemoveAccount value)? removeAccount,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class _LoadData implements AccountsEvent {
  const factory _LoadData() = _$_LoadData;
}

/// @nodoc
abstract class _$RemoveAccountCopyWith<$Res> {
  factory _$RemoveAccountCopyWith(
          _RemoveAccount value, $Res Function(_RemoveAccount) then) =
      __$RemoveAccountCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$RemoveAccountCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res>
    implements _$RemoveAccountCopyWith<$Res> {
  __$RemoveAccountCopyWithImpl(
      _RemoveAccount _value, $Res Function(_RemoveAccount) _then)
      : super(_value, (v) => _then(v as _RemoveAccount));

  @override
  _RemoveAccount get _value => super._value as _RemoveAccount;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_RemoveAccount(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoveAccount implements _RemoveAccount {
  const _$_RemoveAccount(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'AccountsEvent.removeAccount(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveAccount &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$RemoveAccountCopyWith<_RemoveAccount> get copyWith =>
      __$RemoveAccountCopyWithImpl<_RemoveAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(int id) removeAccount,
  }) {
    return removeAccount(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(int id)? removeAccount,
    required TResult orElse(),
  }) {
    if (removeAccount != null) {
      return removeAccount(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_RemoveAccount value) removeAccount,
  }) {
    return removeAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_RemoveAccount value)? removeAccount,
    required TResult orElse(),
  }) {
    if (removeAccount != null) {
      return removeAccount(this);
    }
    return orElse();
  }
}

abstract class _RemoveAccount implements AccountsEvent {
  const factory _RemoveAccount(int id) = _$_RemoveAccount;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RemoveAccountCopyWith<_RemoveAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AccountsStateTearOff {
  const _$AccountsStateTearOff();

  _AccountsState call(
      {required bool loading, required List<NautaAccount> accounts}) {
    return _AccountsState(
      loading: loading,
      accounts: accounts,
    );
  }
}

/// @nodoc
const $AccountsState = _$AccountsStateTearOff();

/// @nodoc
mixin _$AccountsState {
  bool get loading => throw _privateConstructorUsedError;
  List<NautaAccount> get accounts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountsStateCopyWith<AccountsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountsStateCopyWith<$Res> {
  factory $AccountsStateCopyWith(
          AccountsState value, $Res Function(AccountsState) then) =
      _$AccountsStateCopyWithImpl<$Res>;
  $Res call({bool loading, List<NautaAccount> accounts});
}

/// @nodoc
class _$AccountsStateCopyWithImpl<$Res>
    implements $AccountsStateCopyWith<$Res> {
  _$AccountsStateCopyWithImpl(this._value, this._then);

  final AccountsState _value;
  // ignore: unused_field
  final $Res Function(AccountsState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? accounts = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      accounts: accounts == freezed
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<NautaAccount>,
    ));
  }
}

/// @nodoc
abstract class _$AccountsStateCopyWith<$Res>
    implements $AccountsStateCopyWith<$Res> {
  factory _$AccountsStateCopyWith(
          _AccountsState value, $Res Function(_AccountsState) then) =
      __$AccountsStateCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, List<NautaAccount> accounts});
}

/// @nodoc
class __$AccountsStateCopyWithImpl<$Res>
    extends _$AccountsStateCopyWithImpl<$Res>
    implements _$AccountsStateCopyWith<$Res> {
  __$AccountsStateCopyWithImpl(
      _AccountsState _value, $Res Function(_AccountsState) _then)
      : super(_value, (v) => _then(v as _AccountsState));

  @override
  _AccountsState get _value => super._value as _AccountsState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? accounts = freezed,
  }) {
    return _then(_AccountsState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      accounts: accounts == freezed
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<NautaAccount>,
    ));
  }
}

/// @nodoc

class _$_AccountsState implements _AccountsState {
  const _$_AccountsState({required this.loading, required this.accounts});

  @override
  final bool loading;
  @override
  final List<NautaAccount> accounts;

  @override
  String toString() {
    return 'AccountsState(loading: $loading, accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountsState &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.accounts, accounts) ||
                const DeepCollectionEquality()
                    .equals(other.accounts, accounts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(accounts);

  @JsonKey(ignore: true)
  @override
  _$AccountsStateCopyWith<_AccountsState> get copyWith =>
      __$AccountsStateCopyWithImpl<_AccountsState>(this, _$identity);
}

abstract class _AccountsState implements AccountsState {
  const factory _AccountsState(
      {required bool loading,
      required List<NautaAccount> accounts}) = _$_AccountsState;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  List<NautaAccount> get accounts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AccountsStateCopyWith<_AccountsState> get copyWith =>
      throw _privateConstructorUsedError;
}
