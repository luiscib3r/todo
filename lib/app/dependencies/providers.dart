import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/app/app.dart';
import 'package:todo/nauta/nauta.dart';
import 'package:todo/ussd_codes/ussd_codes.dart';

final blocProviders = <BlocProvider>[
  BlocProvider<UssdCodeBloc>(
    create: (context) => getIt(),
  ),
  BlocProvider<AccountsBloc>(
    create: (context) => getIt(),
  ),
  BlocProvider<ThemeBloc>(
    create: (context) => getIt(),
  ),
];
