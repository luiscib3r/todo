import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo/app/app.dart';

part 'ussd_code_event.dart';
part 'ussd_code_state.dart';
part 'ussd_code_bloc.freezed.dart';

@injectable
class UssdCodeBloc extends Bloc<UssdCodeEvent, UssdCodeState> {
  UssdCodeBloc(this._repository) : super(const _Loading()) {
    on<_LoadData>(_loadData);

    add(const _LoadData());
  }

  final UssdRepository _repository;

  Future<void> _loadData(
    _LoadData event,
    Emitter<UssdCodeState> emit,
  ) async {
    final result = await _repository.getUssdCodes();

    result.when(
      success: (data) {
        emit(_Ready(items: data));
      },
      error: (error) {
        emit(_Error(message: error));
      },
    );
  }
}
