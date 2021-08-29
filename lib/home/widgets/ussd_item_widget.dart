import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo/app/app.dart';

class UssdItemWidget extends StatelessWidget {
  const UssdItemWidget({
    Key? key,
    required this.ussdItem,
  }) : super(key: key);

  final UssdItem ussdItem;

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
          tag: ussdItem.name + ussdItem.description,
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
          callTo(item.code);
        };
      } else {
        return () {
          // Get.to(
          //   UssdCodeFormPage(
          //     code: ussdItem,
          //   ),
          // );
        };
      }
    } else if (ussdItem.type == 'category') {
      return () {
        // Get.to(
        //   UssdCategoryPage(ussdItem),
        //   preventDuplicates: false,
        // );
      };
    }

    return () {
      log('Unknown UssdItem type ${ussdItem.type}');
    };
  }
}
