// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nauta_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NautaSession _$NautaSessionFromJson(Map<String, dynamic> json) {
  return NautaSession(
    loginAction: json['loginAction'] as String,
    csrfhw: json['csrfhw'] as String,
    wlanuserip: json['wlanuserip'] as String,
    attributeUuid: json['attributeUuid'] as String,
    ssid: json['ssid'] as String,
    loggerId: json['loggerId'] as String,
  );
}

Map<String, dynamic> _$NautaSessionToJson(NautaSession instance) =>
    <String, dynamic>{
      'loginAction': instance.loginAction,
      'csrfhw': instance.csrfhw,
      'wlanuserip': instance.wlanuserip,
      'attributeUuid': instance.attributeUuid,
      'ssid': instance.ssid,
      'loggerId': instance.loggerId,
    };
