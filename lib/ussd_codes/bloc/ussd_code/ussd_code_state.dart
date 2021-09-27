part of 'ussd_code_bloc.dart';

@freezed
class UssdCodeState with _$UssdCodeState {
  const factory UssdCodeState.loading() = _Loading;
  const factory UssdCodeState.ready({
    required List<UssdItem> items,
    required List<UssdItem> recentItems,
  }) = _Ready;
  const factory UssdCodeState.error({required String message}) = _Error;
}
