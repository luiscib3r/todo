part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.loadData() = _LoadData;
  const factory SettingsEvent.showFloatWidget(bool value) = _ShowFloatWidget;
  const factory SettingsEvent.turnOffWifi(bool value) = _TurnOffWifi;
}
