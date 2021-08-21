import 'package:json_annotation/json_annotation.dart';
import 'package:todo/app/app.dart';

part 'ussd_category.g.dart';

@JsonSerializable()
class UssdCategory extends UssdItem {
  const UssdCategory({
    required String name,
    required String description,
    required String icon,
    required String type,
    required this.items,
  }) : super(
          name: name,
          description: description,
          icon: icon,
          type: type,
        );

  factory UssdCategory.fromJson(Map<String, dynamic> json) =>
      _$UssdCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$UssdCategoryToJson(this);

  @JsonKey(fromJson: _fieldsFromJson, toJson: _fieldsToJson)
  final List<UssdItem> items;

  static List<UssdItem> _fieldsFromJson(
    List<dynamic> fieldList,
  ) =>
      fieldList.map<UssdItem>(
        (e) {
          final jsonMap = e as Map<String, dynamic>;
          if (jsonMap['type'] == 'code') {
            return UssdCode.fromJson(jsonMap);
          } else if (jsonMap['type'] == 'category') {
            return UssdCategory.fromJson(jsonMap);
          } else {
            throw ParseUssdCodeException(
              message: "Unknown type ${jsonMap['type']}",
              map: jsonMap,
            );
          }
        },
      ).toList();

  static List<Map<String, dynamic>> _fieldsToJson(List<UssdItem> fieldList) =>
      fieldList.map(
        (e) {
          if (e.type == 'code') {
            return (e as UssdCode).toJson();
          } else if (e.type == 'category') {
            return (e as UssdCategory).toJson();
          } else {
            throw ParseUssdCodeException(
              message: 'Unknown type ${e.type}',
            );
          }
        },
      ).toList();

  @override
  List<Object> get props => super.props..addAll([items]);
}
