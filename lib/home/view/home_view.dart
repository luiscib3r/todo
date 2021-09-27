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

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: AppBarTitle(l10n.appName),
        ),
        drawer: const AppDrawer(),
        drawerEdgeDragWidth: 40,
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
                    buildWhen: (prev, next) {
                      return prev.maybeWhen(
                        ready: (itemsPrev, recentsPrev) {
                          return next.maybeWhen(
                            ready: (itemsNext, recentsNext) =>
                                itemsPrev != itemsNext,
                            orElse: () => true,
                          );
                        },
                        orElse: () => true,
                      );
                    },
                    builder: (context, state) => state.when(
                      loading: () => const Loading(),
                      ready: (items, recents) => UssdCodeView(
                        items: items,
                        recent: false,
                      ),
                      error: (error) => Center(child: Text(error)),
                    ),
                  ),
                  BlocBuilder<UssdCodeBloc, UssdCodeState>(
                    buildWhen: (prev, next) {
                      return prev.maybeWhen(
                        ready: (itemsPrev, recentsPrev) {
                          return next.maybeWhen(
                            ready: (itemsNext, recentsNext) =>
                                recentsPrev != recentsNext,
                            orElse: () => true,
                          );
                        },
                        orElse: () => true,
                      );
                    },
                    builder: (context, state) => state.when(
                      loading: () => const Loading(),
                      ready: (items, recents) => UssdCodeView(
                        items: recents,
                        recent: true,
                      ),
                      error: (error) => Center(child: Text(error)),
                    ),
                  ),
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
