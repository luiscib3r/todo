import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/app/app_router.dart';
import 'package:todo/app/bloc/bloc.dart';
import 'package:todo/app/dependencies/dependencies.dart';
import 'package:todo/app/theme/theme.dart';
import 'package:todo/app/widgets/widgets.dart';

export 'app_environment.dart';
export 'bloc/bloc.dart';
export 'data/data.dart';
export 'dependencies/dependencies.dart';
export 'theme/theme.dart';
export 'widgets/widgets.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    required this.env,
  }) : super(key: key);

  final String env;

  Future<void> _init() async {
    await setupDependencies(env);
  }

  @override
  Widget build(BuildContext context) {
    final init = _init();

    return FutureBuilder(
      future: init,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return BlocProvider<ThemeBloc>(
            create: (context) => getIt(),
            child: const AppRouter(),
          );
        }

        return MaterialApp(
          theme: lightTheme,
          darkTheme: darkTheme,
          debugShowCheckedModeBanner: false,
          home: const Scaffold(
            body: Loading(),
          ),
        );
      },
    );
  }
}
