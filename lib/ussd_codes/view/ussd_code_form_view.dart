import 'package:flutter/material.dart';
import 'package:todo/app/app.dart';
import 'package:todo/app/widgets/app_bar_title.dart';
import 'package:todo/ussd_codes/ussd_codes.dart';

class UssdCodeFormView extends StatelessWidget {
  const UssdCodeFormView({
    Key? key,
    required this.code,
  }) : super(key: key);

  final UssdCode code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(code.name),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: UssdCodeForm(
                  code: code.code,
                  type: code.type,
                  fields: code.fields,
                  icon: Hero(
                    tag: code.name + code.description,
                    child: Icon(
                      strIcons[code.icon],
                      size: 82,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
