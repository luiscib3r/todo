import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:todo/app/app.dart';
import 'package:todo/nauta/nauta.dart';

class SaveAccountView extends StatelessWidget {
  const SaveAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final bloc = context.read<SaveAccountBloc>();
    final accountsBloc = context.read<AccountsBloc>();

    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(l10n.saveAccount),
      ),
      body: FormBlocListener<SaveAccountBloc, String, String>(
        onSuccess: (context, state) {
          accountsBloc.add(const AccountsEvent.loadData());
          AccountsPage.open(context);
        },
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: AutofillGroup(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.person, size: 64),
                    ],
                  ),
                  TextFieldBlocBuilder(
                    textFieldBloc: bloc.username,
                    keyboardType: TextInputType.emailAddress,
                    autofillHints: const [
                      AutofillHints.username,
                    ],
                    decoration: InputDecoration(
                      labelText: l10n.username,
                      prefixIcon: const Icon(Icons.person),
                    ),
                  ),
                  TextFieldBlocBuilder(
                    textFieldBloc: bloc.password,
                    suffixButton: SuffixButton.obscureText,
                    autofillHints: const [
                      AutofillHints.password,
                    ],
                    decoration: InputDecoration(
                      labelText: l10n.password,
                      prefixIcon: const Icon(Icons.lock),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: bloc.submit,
        child: const Icon(
          Icons.save,
          color: Colors.white,
        ),
      ),
    );
  }
}
