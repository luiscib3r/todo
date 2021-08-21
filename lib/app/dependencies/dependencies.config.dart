// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../app.dart' as _i10;
import '../app_environment.dart' as _i3;
import '../bloc/theme/theme_bloc.dart' as _i6;
import '../data/core/platform/http_client/http_client.dart' as _i4;
import '../data/datasources/ussd/ussd_assets_datasource.dart' as _i7;
import '../data/datasources/ussd/ussd_local_datasource.dart' as _i8;
import '../data/datasources/ussd/ussd_remote_datasource.dart' as _i9;
import 'dependencies.dart' as _i11;

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
  gh.factory<_i4.HttpClient>(() => _i4.HttpClient());
  await gh.factoryAsync<_i5.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.factory<_i6.ThemeBloc>(() => _i6.ThemeBloc(get<_i5.SharedPreferences>()));
  gh.factory<_i7.UssdAssetsDatasource>(() => _i7.UssdAssetsDatasource());
  gh.factory<_i8.UssdLocalDatasource>(
      () => _i8.UssdLocalDatasource(get<_i5.SharedPreferences>()));
  gh.factory<_i9.UssdRemoteDatasource>(() => _i9.UssdRemoteDatasource(
      get<_i10.AppEnvironment>(), get<_i10.HttpClient>()));
  return get;
}

class _$RegisterModule extends _i11.RegisterModule {}
