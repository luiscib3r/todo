// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ussd_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UssdCategory _$UssdCategoryFromJson(Map<String, dynamic> json) {
  return UssdCategory(
    name: json['name'] as String,
    description: json['description'] as String,
    icon: json['icon'] as String,
    type: json['type'] as String,
    items: UssdCategory._fieldsFromJson(json['items'] as List),
  );
}

Map<String, dynamic> _$UssdCategoryToJson(UssdCategory instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'icon': instance.icon,
      'type': instance.type,
      'items': UssdCategory._fieldsToJson(instance.items),
    };
