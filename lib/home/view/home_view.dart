import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/app/app.dart';
import 'package:todo/l10n/l10n.dart';
import 'package:todo/ussd_codes/ussd_codes.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(l10n.appName),
      ),
      // drawer: const AppDrawer(),
      // drawerEdgeDragWidth: 40,
      body: BlocBuilder<UssdCodeBloc, UssdCodeState>(
        builder: (context, state) => state.when(
          loading: () => const Loading(),
          ready: (items) => UssdCodeView(items: items),
          error: (error) => Center(child: Text(error)),
        ),
      ),
    );
  }
}
