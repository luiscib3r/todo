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
    List<Map<String, dynamic>> fieldList,
  ) =>
      fieldList.map<UssdItem>(
        (e) {
          if (e['type'] == 'code') {
            return UssdCode.fromJson(e);
          } else if (e['type'] == 'category') {
            return UssdCategory.fromJson(e);
          } else {
            throw ParseUssdCodeException(
              message: "Unknown type ${e['type']}",
              map: e,
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
