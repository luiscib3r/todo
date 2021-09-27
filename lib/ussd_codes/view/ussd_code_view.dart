import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo/app/app.dart';
import 'package:todo/ussd_codes/ussd_codes.dart';

class UssdCodeView extends StatelessWidget {
  const UssdCodeView({
    Key? key,
    required this.items,
    this.recent,
  }) : super(key: key);

  final List<UssdItem> items;
  final bool? recent;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return const Center(
        child: FaIcon(
          FontAwesomeIcons.history,
          size: 64,
        ),
      );
    }

    return ListView(
      children: [
        ...items.map(
          (e) => UssdItemWidget(
            ussdItem: e,
            recent: recent,
          ),
        )
      ],
    );
  }
}
