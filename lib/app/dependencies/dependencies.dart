import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo/app/dependencies/dependencies.config.dart';

final getIt = GetIt.instance;

@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @preResolve
  Future<Database> get database async {
    return openDatabase(
      // Establece la ruta de la base de datos
      join(await getDatabasesPath(), 'todoapp.db'),
      // Cuando la base de datos se crea por primera vez, crea las tablas
      onCreate: (db, version) {
        db.execute(
          // ignore: lines_longer_than_80_chars
          'CREATE TABLE users(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, username TEXT, password TEXT)',
        );
      },
      version: 1,
    );
  }
}

@InjectableInit()
Future<void> setupDependencies(String env) => $initGetIt(
      getIt,
      environment: env,
    );
