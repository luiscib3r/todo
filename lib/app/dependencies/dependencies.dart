import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:todo/app/dependencies/dependencies.config.dart';

final getIt = GetIt.instance;

@module
abstract class RegisterModule {}

@InjectableInit()
Future<void> setupDependencies(String env) async {
  $initGetIt(
    getIt,
    environment: env,
  );
}
