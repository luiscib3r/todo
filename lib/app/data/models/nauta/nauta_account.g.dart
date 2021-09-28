// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nauta_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NautaAccount _$NautaAccountFromJson(Map<String, dynamic> json) {
  return NautaAccount(
    id: json['id'] as int?,
    username: json['username'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$NautaAccountToJson(NautaAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
    };
