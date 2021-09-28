import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'nauta_session.g.dart';

@JsonSerializable()
class NautaSession extends Equatable {
  const NautaSession({
    required this.loginAction,
    required this.csrfhw,
    required this.wlanuserip,
    required this.attributeUuid,
    required this.ssid,
    required this.loggerId,
  });

  factory NautaSession.fromJson(Map<String, dynamic> json) =>
      _$NautaSessionFromJson(json);

  final String loginAction;
  final String csrfhw;
  final String wlanuserip;
  final String attributeUuid;
  final String ssid;
  final String loggerId;

  Map<String, dynamic> toJson() => _$NautaSessionToJson(this);

  NautaSession copyWith({
    String? loginAction,
    String? csrfhw,
    String? wlanuserip,
    String? attributeUuid,
    String? ssid,
    String? loggerId,
  }) =>
      NautaSession(
        loginAction: loginAction ?? this.loginAction,
        csrfhw: csrfhw ?? this.csrfhw,
        wlanuserip: wlanuserip ?? this.wlanuserip,
        attributeUuid: attributeUuid ?? this.attributeUuid,
        ssid: ssid ?? this.ssid,
        loggerId: loggerId ?? this.loggerId,
      );

  @override
  List<Object?> get props => [
        loginAction,
        csrfhw,
        wlanuserip,
        attributeUuid,
        ssid,
        loggerId,
      ];
}
