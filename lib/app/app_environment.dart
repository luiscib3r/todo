import 'package:injectable/injectable.dart';

abstract class AppEnvironment {
  const AppEnvironment({
    required this.ussdCodesRemote,
    required this.ussdCodesHashRemote,
  });

  final String ussdCodesRemote;
  final String ussdCodesHashRemote;
}

@prod
@Injectable(as: AppEnvironment)
class AppEnvironmentProd extends AppEnvironment {
  AppEnvironmentProd()
      : super(
          ussdCodesHashRemote:
              'https://todo-devs.github.io/todo-json/hash.json',
          ussdCodesRemote: 'https://todo-devs.github.io/todo-json/config.json',
        );
}

@dev
@Injectable(as: AppEnvironment)
class AppEnvironmentDev extends AppEnvironment {
  AppEnvironmentDev()
      : super(
          ussdCodesHashRemote:
              'https://todo-devs.github.io/todo-json/hash.json',
          ussdCodesRemote: 'https://todo-devs.github.io/todo-json/config.json',
        );
}
