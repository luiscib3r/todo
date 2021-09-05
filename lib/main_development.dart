import 'dart:async';
import 'dart:developer';

import 'package:beamer/beamer.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

import 'package:todo/app/app.dart';
import 'package:todo/app/app_bloc_observer.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Beamer.setPathUrlStrategy();

  runZonedGuarded(
    () => runApp(const App(env: Environment.dev)),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
