import 'package:flutter/material.dart';
import 'package:todo/l10n/l10n.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appName),
      ),
      body: Center(
        child: Text(l10n.appName),
      ),
    );
  }
}
