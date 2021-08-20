part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.setDark() = _SetDark;
  const factory ThemeEvent.setLight() = _SetLight;
}
