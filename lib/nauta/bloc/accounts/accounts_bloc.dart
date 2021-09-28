import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo/app/app.dart';

part 'accounts_event.dart';
part 'accounts_state.dart';
part 'accounts_bloc.freezed.dart';

@injectable
class AccountsBloc extends Bloc<AccountsEvent, AccountsState> {
  AccountsBloc(this._repository)
      : super(
          const _AccountsState(
            loading: true,
            accounts: [],
          ),
        ) {
    on<_LoadData>(_loadData);
    on<_RemoveAccount>(_removeAccount);

    add(const _LoadData());
  }

  final NautaRepository _repository;

  Future<void> _loadData(
    _LoadData event,
    Emitter<AccountsState> emit,
  ) async {
    final result = await _repository.findAllAccounts();

    emit(state.copyWith(loading: false, accounts: result));
  }

  Future<void> _removeAccount(
    _RemoveAccount event,
    Emitter<AccountsState> emit,
  ) async {
    await _repository.deleteAccount(event.id);

    add(const _LoadData());
  }
}
