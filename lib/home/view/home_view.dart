import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/app/app.dart';
import 'package:todo/home/home.dart';
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
      body: BlocBuilder<UssdCodeBloc, UssdCodeState>(
        builder: (context, state) => state.when(
          loading: () => const Loading(),
          ready: (items) => const Center(child: Text('Ready')),
          error: (error) => const Center(child: Text('Error')),
        ),
      ),
    );
  }
}
