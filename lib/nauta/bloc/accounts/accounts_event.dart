part of 'accounts_bloc.dart';

@freezed
class AccountsEvent with _$AccountsEvent {
  const factory AccountsEvent.loadData() = _LoadData;
  const factory AccountsEvent.removeAccount(int id) = _RemoveAccount;
}
