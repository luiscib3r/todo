part of 'accounts_bloc.dart';

@freezed
class AccountsState with _$AccountsState {
  const factory AccountsState({
    required bool loading,
    required List<NautaAccount> accounts,
  }) = _AccountsState;
}
