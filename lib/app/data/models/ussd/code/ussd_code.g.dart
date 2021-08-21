// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ussd_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UssdCode _$UssdCodeFromJson(Map<String, dynamic> json) {
  return UssdCode(
    name: json['name'] as String,
    description: json['description'] as String,
    icon: json['icon'] as String,
    type: json['type'] as String,
    code: json['code'] as String,
    fields: (json['fields'] as List<dynamic>)
        .map((e) => UssdCodeField.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$UssdCodeToJson(UssdCode instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'icon': instance.icon,
      'type': instance.type,
      'code': instance.code,
      'fields': UssdCode._fieldsToJson(instance.fields),
    };
