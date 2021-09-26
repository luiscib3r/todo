part of 'update_ussd_bloc.dart';

@freezed
class UpdateUssdState with _$UpdateUssdState {
  const factory UpdateUssdState({
    required bool loading,
    required bool success,
  }) = _UpdateUssdState;
}
