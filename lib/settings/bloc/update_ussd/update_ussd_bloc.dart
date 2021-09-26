import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo/app/app.dart';

part 'update_ussd_event.dart';
part 'update_ussd_state.dart';
part 'update_ussd_bloc.freezed.dart';

@injectable
class UpdateUssdBloc extends Bloc<UpdateUssdEvent, UpdateUssdState> {
  UpdateUssdBloc(this._repository)
      : super(
          const _UpdateUssdState(
            loading: true,
            success: false,
          ),
        ) {
    on<_LoadData>(_loadData);

    add(const _LoadData());
  }

  final UssdRepository _repository;

  Future<void> _loadData(_LoadData event, Emitter<UpdateUssdState> emit) async {
    emit(state.copyWith(loading: true, success: false));
    final result = await _repository.getUssdCodesRemote();

    result.when(
      success: (data) {
        emit(state.copyWith(
          loading: false,
          success: true,
        ));
      },
      error: (message) {
        emit(state.copyWith(
          loading: false,
          success: false,
        ));
      },
    );
  }
}
