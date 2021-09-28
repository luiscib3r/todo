// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i11;
import 'package:sqflite/sqflite.dart' as _i6;

import '../../nauta/bloc/accounts/accounts_bloc.dart' as _i3;
import '../../settings/bloc/settings/settings_bloc.dart' as _i10;
import '../../settings/bloc/update_ussd/update_ussd_bloc.dart' as _i13;
import '../../ussd_codes/bloc/ussd_code/ussd_code_bloc.dart' as _i15;
import '../app.dart' as _i4;
import '../app_environment.dart' as _i5;
import '../bloc/theme/theme_bloc.dart' as _i12;
import '../data/core/platform/http_client/http_client.dart' as _i7;
import '../data/datasources/nauta/nauta_account_datasource.dart' as _i8;
import '../data/datasources/ussd/ussd_assets_datasource.dart' as _i14;
import '../data/datasources/ussd/ussd_local_datasource.dart' as _i16;
import '../data/datasources/ussd/ussd_recent_datasource.dart' as _i17;
import '../data/datasources/ussd/ussd_remote_datasource.dart' as _i18;
import '../data/repositories/nauta_repository.dart' as _i9;
import '../data/repositories/ussd_repository.dart' as _i19;
import 'dependencies.dart' as _i20;

const String _prod = 'prod';
const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AccountsBloc>(
      () => _i3.AccountsBloc(get<_i4.NautaRepository>()));
  gh.factory<_i5.AppEnvironment>(() => _i5.AppEnvironmentProd(),
      registerFor: {_prod});
  gh.factory<_i5.AppEnvironment>(() => _i5.AppEnvironmentDev(),
      registerFor: {_dev});
  await gh.factoryAsync<_i6.Database>(() => registerModule.database,
      preResolve: true);
  gh.factory<_i7.HttpClient>(() => _i7.HttpClient());
  gh.factory<_i8.NautaAccountDatasource>(
      () => _i8.NautaAccountSqliteDatasource(get<_i6.Database>()));
  gh.factory<_i9.NautaRepository>(
      () => _i9.NautaRepository(get<_i4.NautaAccountDatasource>()));
  gh.factory<_i10.SettingsBloc>(
      () => _i10.SettingsBloc(get<_i4.AppEnvironment>()));
  await gh.factoryAsync<_i11.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.factory<_i12.ThemeBloc>(
      () => _i12.ThemeBloc(get<_i11.SharedPreferences>()));
  gh.factory<_i13.UpdateUssdBloc>(
      () => _i13.UpdateUssdBloc(get<_i4.UssdRepository>()));
  gh.factory<_i14.UssdAssetsDatasource>(() => _i14.UssdAssetsDatasource());
  gh.factory<_i15.UssdCodeBloc>(
      () => _i15.UssdCodeBloc(get<_i4.UssdRepository>()));
  gh.factory<_i16.UssdLocalDatasource>(
      () => _i16.UssdLocalDatasource(get<_i11.SharedPreferences>()));
  gh.factory<_i17.UssdRecentDatasource>(
      () => _i17.UssdRecentDatasource(get<_i11.SharedPreferences>()));
  gh.factory<_i18.UssdRemoteDatasource>(() => _i18.UssdRemoteDatasource(
      get<_i4.AppEnvironment>(), get<_i4.HttpClient>()));
  gh.factory<_i19.UssdRepository>(() => _i19.UssdRepository(
      get<_i4.UssdAssetsDatasource>(),
      get<_i4.UssdLocalDatasource>(),
      get<_i4.UssdRemoteDatasource>(),
      get<_i4.UssdRecentDatasource>()));
  return get;
}

class _$RegisterModule extends _i20.RegisterModule {}
