import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo/app/app.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc(
    AppEnvironment environment,
  ) : super(
          _SettingsState(
            appVersion: environment.appVersion,
            showFloatWidget: false,
            turnOffWifi: false,
          ),
        ) {
    on<_LoadData>(_loadData);
    on<_ShowFloatWidget>(_showFloatWidget);
    on<_TurnOffWifi>(_turnOffWifi);

    add(const _LoadData());
  }

  Future<void> _loadData(
    _LoadData event,
    Emitter<SettingsState> emit,
  ) async {
    final showFloatWidget = await getShowWidgetPreference();
    final turnOffWifi = await getTurnOffWifiPreference();

    emit(
      state.copyWith(
        showFloatWidget: showFloatWidget ?? false,
        turnOffWifi: turnOffWifi ?? false,
      ),
    );
  }

  Future<void> _showFloatWidget(
    _ShowFloatWidget event,
    Emitter<SettingsState> emit,
  ) async {
    if (event.value) {
      setTrueShowWidget();
    } else {
      setFalseShowWidget();
    }

    emit(state.copyWith(showFloatWidget: event.value));
  }

  Future<void> _turnOffWifi(
    _TurnOffWifi event,
    Emitter<SettingsState> emit,
  ) async {
    if (event.value) {
      setTrueTurnOffWifi();
    } else {
      setFalseTurnOffWifi();
    }

    emit(state.copyWith(turnOffWifi: event.value));
  }
}
