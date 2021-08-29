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

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(l10n.appName),
        ),
        body: Column(
          children: [
            const _AppTabBar(),
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

class _AppTabBar extends StatelessWidget {
  const _AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.blue,
      ),
      isScrollable: true,
      labelPadding: const EdgeInsets.only(top: 0.5, bottom: 0.5),
      unselectedLabelColor: Theme.of(context).brightness == Brightness.dark
          ? Colors.white
          : Colors.blue,
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      tabs: const [
        SizedBox(
          height: 64,
          width: 68,
          child: Icon(
            Icons.phone_android_rounded,
            size: 38,
          ),
        ),
        SizedBox(
          height: 64,
          width: 68,
          child: Icon(
            Icons.data_usage_rounded,
            size: 38,
          ),
        ),
        SizedBox(
          height: 64,
          width: 68,
          child: Icon(
            Icons.wifi,
            size: 38,
          ),
        ),
      ],
    );
  }
}

//  BlocBuilder<UssdCodeBloc, UssdCodeState>(
//           builder: (context, state) => state.when(
//             loading: () => const Loading(),
//             ready: (items) => UssdCodeView(items: items),
//             error: (error) => Center(child: Text(error)),
//           ),
