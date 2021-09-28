import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'nauta_account.g.dart';

@JsonSerializable()
class NautaAccount extends Equatable {
  const NautaAccount({
    this.id,
    required this.username,
    required this.password,
  });

  factory NautaAccount.fromJson(Map<String, dynamic> json) =>
      _$NautaAccountFromJson(json);

  Map<String, dynamic> toJson() => _$NautaAccountToJson(this);

  final int? id;
  final String username;
  final String password;

  @override
  List<Object?> get props => [
        id,
        username,
        password,
      ];
}
