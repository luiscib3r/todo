// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../settings/bloc/settings/settings_bloc.dart' as _i5;
import '../../ussd_codes/bloc/ussd_code/ussd_code_bloc.dart' as _i8;
import '../app.dart' as _i6;
import '../app_environment.dart' as _i3;
import '../data/core/platform/http_client/http_client.dart' as _i4;
import '../data/datasources/ussd/ussd_assets_datasource.dart' as _i7;
import '../data/datasources/ussd/ussd_local_datasource.dart' as _i9;
import '../data/datasources/ussd/ussd_remote_datasource.dart' as _i10;
import '../data/repositories/ussd_repository.dart' as _i11;

const String _prod = 'prod';
const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AppEnvironment>(() => _i3.AppEnvironmentProd(),
      registerFor: {_prod});
  gh.factory<_i3.AppEnvironment>(() => _i3.AppEnvironmentDev(),
      registerFor: {_dev});
  gh.factory<_i4.HttpClient>(() => _i4.HttpClient());
  gh.factory<_i5.SettingsBloc>(
      () => _i5.SettingsBloc(get<_i6.AppEnvironment>()));
  gh.factory<_i7.UssdAssetsDatasource>(() => _i7.UssdAssetsDatasource());
  gh.factory<_i8.UssdCodeBloc>(
      () => _i8.UssdCodeBloc(get<_i6.UssdRepository>()));
  gh.factory<_i9.UssdLocalDatasource>(() => _i9.UssdLocalDatasource());
  gh.factory<_i10.UssdRemoteDatasource>(() => _i10.UssdRemoteDatasource(
      get<_i6.AppEnvironment>(), get<_i6.HttpClient>()));
  gh.factory<_i11.UssdRepository>(() => _i11.UssdRepository(
      get<_i6.UssdAssetsDatasource>(),
      get<_i6.UssdLocalDatasource>(),
      get<_i6.UssdRemoteDatasource>()));
  return get;
}
