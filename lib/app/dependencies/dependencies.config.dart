// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i10;
import 'package:sqflite/sqflite.dart' as _i4;

import '../../settings/bloc/settings/settings_bloc.dart' as _i9;
import '../../settings/bloc/update_ussd/update_ussd_bloc.dart' as _i12;
import '../../ussd_codes/bloc/ussd_code/ussd_code_bloc.dart' as _i14;
import '../app.dart' as _i8;
import '../app_environment.dart' as _i3;
import '../bloc/theme/theme_bloc.dart' as _i11;
import '../data/core/platform/http_client/http_client.dart' as _i5;
import '../data/datasources/nauta/nauta_account_datasource.dart' as _i6;
import '../data/datasources/ussd/ussd_assets_datasource.dart' as _i13;
import '../data/datasources/ussd/ussd_local_datasource.dart' as _i15;
import '../data/datasources/ussd/ussd_recent_datasource.dart' as _i16;
import '../data/datasources/ussd/ussd_remote_datasource.dart' as _i17;
import '../data/repositories/nauta_repository.dart' as _i7;
import '../data/repositories/ussd_repository.dart' as _i18;
import 'dependencies.dart' as _i19;

const String _prod = 'prod';
const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AppEnvironment>(() => _i3.AppEnvironmentProd(),
      registerFor: {_prod});
  gh.factory<_i3.AppEnvironment>(() => _i3.AppEnvironmentDev(),
      registerFor: {_dev});
  await gh.factoryAsync<_i4.Database>(() => registerModule.database,
      preResolve: true);
  gh.factory<_i5.HttpClient>(() => _i5.HttpClient());
  gh.factory<_i6.NautaAccountDatasource>(
      () => _i6.NautaAccountSqliteDatasource(get<_i4.Database>()));
  gh.factory<_i7.NautaRepository>(
      () => _i7.NautaRepository(get<_i8.NautaAccountDatasource>()));
  gh.factory<_i9.SettingsBloc>(
      () => _i9.SettingsBloc(get<_i8.AppEnvironment>()));
  await gh.factoryAsync<_i10.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.factory<_i11.ThemeBloc>(
      () => _i11.ThemeBloc(get<_i10.SharedPreferences>()));
  gh.factory<_i12.UpdateUssdBloc>(
      () => _i12.UpdateUssdBloc(get<_i8.UssdRepository>()));
  gh.factory<_i13.UssdAssetsDatasource>(() => _i13.UssdAssetsDatasource());
  gh.factory<_i14.UssdCodeBloc>(
      () => _i14.UssdCodeBloc(get<_i8.UssdRepository>()));
  gh.factory<_i15.UssdLocalDatasource>(
      () => _i15.UssdLocalDatasource(get<_i10.SharedPreferences>()));
  gh.factory<_i16.UssdRecentDatasource>(
      () => _i16.UssdRecentDatasource(get<_i10.SharedPreferences>()));
  gh.factory<_i17.UssdRemoteDatasource>(() => _i17.UssdRemoteDatasource(
      get<_i8.AppEnvironment>(), get<_i8.HttpClient>()));
  gh.factory<_i18.UssdRepository>(() => _i18.UssdRepository(
      get<_i8.UssdAssetsDatasource>(),
      get<_i8.UssdLocalDatasource>(),
      get<_i8.UssdRemoteDatasource>(),
      get<_i8.UssdRecentDatasource>()));
  return get;
}

class _$RegisterModule extends _i19.RegisterModule {}
