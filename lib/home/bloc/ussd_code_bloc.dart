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
    add(const _LoadData());
  }

  final UssdRepository _repository;

  @override
  Stream<UssdCodeState> mapEventToState(
    UssdCodeEvent event,
  ) async* {
    yield* event.when(
      loadData: _loadData,
    );
  }

  Stream<UssdCodeState> _loadData() async* {
    final result = await _repository.getUssdCodes();

    yield* result.when(
      success: (data) async* {
        yield UssdCodeState.ready(items: data);
      },
      error: (error) async* {
        yield UssdCodeState.error(message: error);
      },
    );
  }
}
