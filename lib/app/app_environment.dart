import 'package:injectable/injectable.dart';

abstract class AppEnvironment {
  const AppEnvironment({
    required this.appVersion,
    required this.ussdCodesRemote,
    required this.ussdCodesHashRemote,
    required this.telegramGroupUrl,
  });

  final String appVersion;
  final String ussdCodesRemote;
  final String ussdCodesHashRemote;
  final String telegramGroupUrl;
}

@prod
@Injectable(as: AppEnvironment)
class AppEnvironmentProd extends AppEnvironment {
  AppEnvironmentProd()
      : super(
          appVersion: 'TODO v2.0',
          ussdCodesHashRemote:
              'https://todo-devs.github.io/todo-json/hash.json',
          ussdCodesRemote: 'https://todo-devs.github.io/todo-json/config.json',
          telegramGroupUrl: 'https://t.me/todoapp_cuba',
        );
}

@dev
@Injectable(as: AppEnvironment)
class AppEnvironmentDev extends AppEnvironment {
  AppEnvironmentDev()
      : super(
          appVersion: 'TODO v2.0-dev',
          ussdCodesHashRemote:
              'https://todo-devs.github.io/todo-json/hash.json',
          ussdCodesRemote: 'https://todo-devs.github.io/todo-json/config.json',
          telegramGroupUrl: 'https://t.me/todoapp_cuba',
        );
}
