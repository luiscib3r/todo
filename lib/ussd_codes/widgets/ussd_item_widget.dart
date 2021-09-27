import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/app/app.dart';
import 'package:todo/ussd_codes/ussd_codes.dart';

class UssdItemWidget extends StatelessWidget {
  const UssdItemWidget({
    Key? key,
    required this.ussdItem,
    this.recent,
  }) : super(key: key);

  final UssdItem ussdItem;
  final bool? recent;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: ussdItem.description.length > 34,
      title: Text(
        ussdItem.name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(ussdItem.description),
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.blue,
        ),
        height: 64,
        width: 57,
        child: Hero(
          tag: '${ussdItem.key}-$recent',
          child: Icon(
            strIcons[ussdItem.icon],
            size: 32,
            color: Colors.white,
          ),
        ),
      ),
      trailing: ussdItem.type == 'category'
          ? const Icon(
              Icons.arrow_forward_ios,
              color: Colors.blue,
              size: 16,
            )
          : null,
      onTap: _onTapAction(context),
    );
  }

  Function()? _onTapAction(BuildContext context) {
    if (ussdItem.type == 'code') {
      final item = ussdItem as UssdCode;
      if (item.fields.isEmpty) {
        return () {
          context.read<UssdCodeBloc>().add(UssdCodeEvent.putItem(ussdItem));
          callTo(item.code);
        };
      } else {
        return () {
          context.read<UssdCodeBloc>().add(UssdCodeEvent.putItem(ussdItem));
          UssdCodeFormPage.open(context, code: item);
        };
      }
    } else if (ussdItem.type == 'category') {
      return () {
        context.read<UssdCodeBloc>().add(UssdCodeEvent.putItem(ussdItem));
        UssdCategoryPage.open(
          context,
          category: ussdItem as UssdCategory,
          recent: recent,
        );
      };
    }

    return () {
      log('Unknown UssdItem type ${ussdItem.type}');
    };
  }
}
