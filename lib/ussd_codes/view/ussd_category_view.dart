import 'package:flutter/material.dart';
import 'package:todo/app/app.dart';
import 'package:todo/ussd_codes/ussd_codes.dart';

class UssdCategoryView extends StatelessWidget {
  const UssdCategoryView({
    Key? key,
    required this.category,
  }) : super(key: key);

  final UssdCategory category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          category.name,
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          Hero(
            tag: category.name + category.description,
            child: Icon(
              strIcons[category.icon],
              size: 82,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.blue,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ...category.items.map((e) => UssdItemWidget(ussdItem: e)).toList(),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
