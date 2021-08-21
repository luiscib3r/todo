import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ussd_code_field.g.dart';

@JsonSerializable()
class UssdCodeField extends Equatable {
  const UssdCodeField({
    required this.name,
    required this.type,
  });

  factory UssdCodeField.fromJson(Map<String, dynamic> json) =>
      _$UssdCodeFieldFromJson(json);

  Map<String, dynamic> toJson() => _$UssdCodeFieldToJson(this);

  final String name;
  final String type;

  @override
  List<Object?> get props => [
        name,
        type,
      ];
}
