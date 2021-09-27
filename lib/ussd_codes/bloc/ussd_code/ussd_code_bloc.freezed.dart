// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ussd_code_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UssdCodeEventTearOff {
  const _$UssdCodeEventTearOff();

  _LoadData loadData() {
    return const _LoadData();
  }

  _PutItem putItem(UssdItem item) {
    return _PutItem(
      item,
    );
  }
}

/// @nodoc
const $UssdCodeEvent = _$UssdCodeEventTearOff();

/// @nodoc
mixin _$UssdCodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(UssdItem item) putItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(UssdItem item)? putItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_PutItem value) putItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_PutItem value)? putItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UssdCodeEventCopyWith<$Res> {
  factory $UssdCodeEventCopyWith(
          UssdCodeEvent value, $Res Function(UssdCodeEvent) then) =
      _$UssdCodeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UssdCodeEventCopyWithImpl<$Res>
    implements $UssdCodeEventCopyWith<$Res> {
  _$UssdCodeEventCopyWithImpl(this._value, this._then);

  final UssdCodeEvent _value;
  // ignore: unused_field
  final $Res Function(UssdCodeEvent) _then;
}

/// @nodoc
abstract class _$LoadDataCopyWith<$Res> {
  factory _$LoadDataCopyWith(_LoadData value, $Res Function(_LoadData) then) =
      __$LoadDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadDataCopyWithImpl<$Res> extends _$UssdCodeEventCopyWithImpl<$Res>
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
    return 'UssdCodeEvent.loadData()';
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
    required TResult Function(UssdItem item) putItem,
  }) {
    return loadData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(UssdItem item)? putItem,
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
    required TResult Function(_PutItem value) putItem,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_PutItem value)? putItem,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class _LoadData implements UssdCodeEvent {
  const factory _LoadData() = _$_LoadData;
}

/// @nodoc
abstract class _$PutItemCopyWith<$Res> {
  factory _$PutItemCopyWith(_PutItem value, $Res Function(_PutItem) then) =
      __$PutItemCopyWithImpl<$Res>;
  $Res call({UssdItem item});
}

/// @nodoc
class __$PutItemCopyWithImpl<$Res> extends _$UssdCodeEventCopyWithImpl<$Res>
    implements _$PutItemCopyWith<$Res> {
  __$PutItemCopyWithImpl(_PutItem _value, $Res Function(_PutItem) _then)
      : super(_value, (v) => _then(v as _PutItem));

  @override
  _PutItem get _value => super._value as _PutItem;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_PutItem(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as UssdItem,
    ));
  }
}

/// @nodoc

class _$_PutItem implements _PutItem {
  const _$_PutItem(this.item);

  @override
  final UssdItem item;

  @override
  String toString() {
    return 'UssdCodeEvent.putItem(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PutItem &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @JsonKey(ignore: true)
  @override
  _$PutItemCopyWith<_PutItem> get copyWith =>
      __$PutItemCopyWithImpl<_PutItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(UssdItem item) putItem,
  }) {
    return putItem(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(UssdItem item)? putItem,
    required TResult orElse(),
  }) {
    if (putItem != null) {
      return putItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_PutItem value) putItem,
  }) {
    return putItem(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_PutItem value)? putItem,
    required TResult orElse(),
  }) {
    if (putItem != null) {
      return putItem(this);
    }
    return orElse();
  }
}

abstract class _PutItem implements UssdCodeEvent {
  const factory _PutItem(UssdItem item) = _$_PutItem;

  UssdItem get item => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PutItemCopyWith<_PutItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UssdCodeStateTearOff {
  const _$UssdCodeStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Ready ready(
      {required List<UssdItem> items, required List<UssdItem> recentItems}) {
    return _Ready(
      items: items,
      recentItems: recentItems,
    );
  }

  _Error error({required String message}) {
    return _Error(
      message: message,
    );
  }
}

/// @nodoc
const $UssdCodeState = _$UssdCodeStateTearOff();

/// @nodoc
mixin _$UssdCodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UssdItem> items, List<UssdItem> recentItems)
        ready,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UssdItem> items, List<UssdItem> recentItems)? ready,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UssdCodeStateCopyWith<$Res> {
  factory $UssdCodeStateCopyWith(
          UssdCodeState value, $Res Function(UssdCodeState) then) =
      _$UssdCodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UssdCodeStateCopyWithImpl<$Res>
    implements $UssdCodeStateCopyWith<$Res> {
  _$UssdCodeStateCopyWithImpl(this._value, this._then);

  final UssdCodeState _value;
  // ignore: unused_field
  final $Res Function(UssdCodeState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$UssdCodeStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'UssdCodeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UssdItem> items, List<UssdItem> recentItems)
        ready,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UssdItem> items, List<UssdItem> recentItems)? ready,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UssdCodeState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ReadyCopyWith<$Res> {
  factory _$ReadyCopyWith(_Ready value, $Res Function(_Ready) then) =
      __$ReadyCopyWithImpl<$Res>;
  $Res call({List<UssdItem> items, List<UssdItem> recentItems});
}

/// @nodoc
class __$ReadyCopyWithImpl<$Res> extends _$UssdCodeStateCopyWithImpl<$Res>
    implements _$ReadyCopyWith<$Res> {
  __$ReadyCopyWithImpl(_Ready _value, $Res Function(_Ready) _then)
      : super(_value, (v) => _then(v as _Ready));

  @override
  _Ready get _value => super._value as _Ready;

  @override
  $Res call({
    Object? items = freezed,
    Object? recentItems = freezed,
  }) {
    return _then(_Ready(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<UssdItem>,
      recentItems: recentItems == freezed
          ? _value.recentItems
          : recentItems // ignore: cast_nullable_to_non_nullable
              as List<UssdItem>,
    ));
  }
}

/// @nodoc

class _$_Ready implements _Ready {
  const _$_Ready({required this.items, required this.recentItems});

  @override
  final List<UssdItem> items;
  @override
  final List<UssdItem> recentItems;

  @override
  String toString() {
    return 'UssdCodeState.ready(items: $items, recentItems: $recentItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Ready &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.recentItems, recentItems) ||
                const DeepCollectionEquality()
                    .equals(other.recentItems, recentItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(recentItems);

  @JsonKey(ignore: true)
  @override
  _$ReadyCopyWith<_Ready> get copyWith =>
      __$ReadyCopyWithImpl<_Ready>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UssdItem> items, List<UssdItem> recentItems)
        ready,
    required TResult Function(String message) error,
  }) {
    return ready(items, recentItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UssdItem> items, List<UssdItem> recentItems)? ready,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(items, recentItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Error value) error,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements UssdCodeState {
  const factory _Ready(
      {required List<UssdItem> items,
      required List<UssdItem> recentItems}) = _$_Ready;

  List<UssdItem> get items => throw _privateConstructorUsedError;
  List<UssdItem> get recentItems => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReadyCopyWith<_Ready> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$UssdCodeStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Error(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'UssdCodeState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<UssdItem> items, List<UssdItem> recentItems)
        ready,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<UssdItem> items, List<UssdItem> recentItems)? ready,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements UssdCodeState {
  const factory _Error({required String message}) = _$_Error;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
