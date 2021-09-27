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
    on<_PutItem>(_putItem);

    add(const _LoadData());
  }

  final UssdRepository _repository;

  Future<void> _loadData(
    _LoadData event,
    Emitter<UssdCodeState> emit,
  ) async {
    final result = await _repository.getUssdCodes();

    var st = const _Ready(
      items: [],
      recentItems: [],
    );

    result.when(
      success: (data) {
        st = st.copyWith(items: data);
        emit(st);
      },
      error: (error) {
        emit(_Error(message: error));
      },
    );

    final recentResult = await _repository.getUssdCodesRecent();

    recentResult.when(
      success: (dataRecent) {
        st = st.copyWith(recentItems: dataRecent);
        emit(st);
      },
      error: (error) {},
    );
  }

  Future<void> _putItem(_PutItem event, Emitter<UssdCodeState> emit) async {
    final st = state as _Ready;
    final result = await _repository.putRecentUssdItem(event.item);

    result.when(
      success: (dataRecent) {
        emit(st.copyWith(recentItems: dataRecent));
      },
      error: (error) {},
    );
  }
}
