import 'package:flutter/material.dart';
import 'package:todo/app/app.dart';
import 'package:todo/home/widgets/widgets.dart';

class UssdCodeView extends StatelessWidget {
  const UssdCodeView({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<UssdItem> items;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: items.map((e) => UssdItemWidget(ussdItem: e)).toList(),
    );
  }
}
