import 'package:json_annotation/json_annotation.dart';
import 'package:todo/app/app.dart';

part 'ussd_code.g.dart';

@JsonSerializable()
class UssdCode extends UssdItem {
  const UssdCode({
    required String name,
    required String description,
    required String icon,
    required String type,
    required this.code,
    required this.fields,
  }) : super(
          name: name,
          description: description,
          icon: icon,
          type: type,
        );

  factory UssdCode.fromJson(Map<String, dynamic> json) =>
      _$UssdCodeFromJson(json);

  Map<String, dynamic> toJson() => _$UssdCodeToJson(this);

  final String code;

  @JsonKey(toJson: _fieldsToJson)
  final List<UssdCodeField> fields;

  static List<Map<String, dynamic>> _fieldsToJson(
    List<UssdCodeField> fieldList,
  ) =>
      fieldList.map((e) => e.toJson()).toList();

  @override
  List<Object> get props => super.props..addAll([code, fields]);
}
