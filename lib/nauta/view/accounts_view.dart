import 'package:flutter/material.dart';
import 'package:todo/app/app.dart';

class AccountsView extends StatelessWidget {
  const AccountsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(l10n.accounts),
      ),
      body: Center(
        child: Text(l10n.accounts),
      ),
    );
  }
}
