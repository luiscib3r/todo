part of 'ussd_code_bloc.dart';

@freezed
class UssdCodeEvent with _$UssdCodeEvent {
  const factory UssdCodeEvent.loadData() = _LoadData;
  const factory UssdCodeEvent.putItem(UssdItem item) = _PutItem;
}
