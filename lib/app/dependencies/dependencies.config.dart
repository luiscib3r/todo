// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i13;
import 'package:sqflite/sqflite.dart' as _i7;

import '../../nauta/bloc/accounts/accounts_bloc.dart' as _i3;
import '../../nauta/bloc/save_account/save_account_bloc.dart' as _i11;
import '../../settings/bloc/settings/settings_bloc.dart' as _i12;
import '../../settings/bloc/update_ussd/update_ussd_bloc.dart' as _i15;
import '../../ussd_codes/bloc/ussd_code/ussd_code_bloc.dart' as _i17;
import '../app.dart' as _i4;
import '../app_environment.dart' as _i5;
import '../bloc/theme/theme_bloc.dart' as _i14;
import '../data/core/platform/http_client/http_client.dart' as _i8;
import '../data/datasources/nauta/nauta_account_datasource.dart' as _i9;
import '../data/datasources/nauta/nauta_session_local_datasource.dart' as _i22;
import '../data/datasources/ussd/ussd_assets_datasource.dart' as _i16;
import '../data/datasources/ussd/ussd_local_datasource.dart' as _i18;
import '../data/datasources/ussd/ussd_recent_datasource.dart' as _i19;
import '../data/datasources/ussd/ussd_remote_datasource.dart' as _i20;
import '../data/repositories/nauta_repository.dart' as _i10;
import '../data/repositories/ussd_repository.dart' as _i21;
import 'dependencies.dart' as _i23;

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
  gh.factory<_i6.Connectivity>(() => registerModule.connectivity);
  await gh.factoryAsync<_i7.Database>(() => registerModule.database,
      preResolve: true);
  gh.factory<_i8.HttpClient>(() => _i8.HttpClient());
  gh.factory<_i9.NautaAccountDatasource>(
      () => _i9.NautaAccountSqliteDatasource(get<_i7.Database>()));
  gh.factory<_i10.NautaRepository>(
      () => _i10.NautaRepository(get<_i4.NautaAccountDatasource>()));
  gh.factory<_i11.SaveAccountBloc>(
      () => _i11.SaveAccountBloc(get<_i4.NautaRepository>()));
  gh.factory<_i12.SettingsBloc>(
      () => _i12.SettingsBloc(get<_i4.AppEnvironment>()));
  await gh.factoryAsync<_i13.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.factory<_i14.ThemeBloc>(
      () => _i14.ThemeBloc(get<_i13.SharedPreferences>()));
  gh.factory<_i15.UpdateUssdBloc>(
      () => _i15.UpdateUssdBloc(get<_i4.UssdRepository>()));
  gh.factory<_i16.UssdAssetsDatasource>(() => _i16.UssdAssetsDatasource());
  gh.factory<_i17.UssdCodeBloc>(
      () => _i17.UssdCodeBloc(get<_i4.UssdRepository>()));
  gh.factory<_i18.UssdLocalDatasource>(
      () => _i18.UssdLocalDatasource(get<_i13.SharedPreferences>()));
  gh.factory<_i19.UssdRecentDatasource>(
      () => _i19.UssdRecentDatasource(get<_i13.SharedPreferences>()));
  gh.factory<_i20.UssdRemoteDatasource>(() => _i20.UssdRemoteDatasource(
      get<_i4.AppEnvironment>(), get<_i4.HttpClient>()));
  gh.factory<_i21.UssdRepository>(() => _i21.UssdRepository(
      get<_i4.UssdAssetsDatasource>(),
      get<_i4.UssdLocalDatasource>(),
      get<_i4.UssdRemoteDatasource>(),
      get<_i4.UssdRecentDatasource>(),
      get<_i6.Connectivity>()));
  gh.factory<_i22.NautaSessionLocalDataSource>(
      () => _i22.NautaSessionLocalDataSource(get<_i13.SharedPreferences>()));
  return get;
}

class _$RegisterModule extends _i23.RegisterModule {}
