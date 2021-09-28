import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/app/app.dart';
import 'package:todo/nauta/nauta.dart';

class AccountTile extends StatelessWidget {
  const AccountTile({
    Key? key,
    required this.account,
  }) : super(key: key);

  final NautaAccount account;

  @override
  Widget build(BuildContext context) {
    final accountsBloc = context.read<AccountsBloc>();

    return ListTile(
      title: Text(
        account.username,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: const Text(''),
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.blue,
        ),
        height: 64,
        width: 57,
        child: Hero(
          tag: account.username,
          child: const Icon(
            Icons.person,
            size: 32,
            color: Colors.white,
          ),
        ),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          accountsBloc.add(
            AccountsEvent.removeAccount(
              account.id ?? -1,
            ),
          );
        },
      ),
    );
  }
}
