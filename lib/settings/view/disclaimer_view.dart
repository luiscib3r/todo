import 'package:flutter/material.dart';
import 'package:todo/app/app.dart';
import 'package:todo/settings/settings.dart';
import 'package:beamer/beamer.dart';

class DisclaimerView extends StatelessWidget {
  const DisclaimerView({
    Key? key,
    required this.disclaimer,
  }) : super(key: key);

  final String disclaimer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle('Términos de uso'),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Text(disclaimer),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: SettingsButton(
              text: 'Aceptar',
              icon: Icons.verified_user,
              onPressed: context.beamBack,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
