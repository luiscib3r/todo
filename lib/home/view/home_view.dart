import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/app/app.dart';
import 'package:todo/home/home.dart';
import 'package:todo/l10n/l10n.dart';
import 'package:todo/ussd_codes/ussd_codes.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(l10n.appName),
        ),
        body: Column(
          children: [
            const AppTabBar(),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  BlocBuilder<UssdCodeBloc, UssdCodeState>(
                    builder: (context, state) => state.when(
                      loading: () => const Loading(),
                      ready: (items) => UssdCodeView(items: items),
                      error: (error) => Center(child: Text(error)),
                    ),
                  ),
                  const Center(child: Text('DATA')),
                  const Center(child: Text('WIFI')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



//  BlocBuilder<UssdCodeBloc, UssdCodeState>(
//           builder: (context, state) => state.when(
//             loading: () => const Loading(),
//             ready: (items) => UssdCodeView(items: items),
//             error: (error) => Center(child: Text(error)),
//           ),
