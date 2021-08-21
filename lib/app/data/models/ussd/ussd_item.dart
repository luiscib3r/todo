import 'package:equatable/equatable.dart';

abstract class UssdItem extends Equatable {
  const UssdItem({
    required this.name,
    required this.description,
    required this.icon,
    required this.type,
  });

  final String name;
  final String description;
  final String icon;
  final String type;

  @override
  List<Object> get props => [
        name,
        description,
        icon,
        type,
      ];
}
