import 'package:injectable/injectable.dart';
import 'package:todo/app/app.dart';

@injectable
class UssdRepository {
  const UssdRepository(
    this._assetsDatasource,
    this._localDatasource,
    this._remoteDatasource,
  );

  final UssdAssetsDatasource _assetsDatasource;
  final UssdLocalDatasource _localDatasource;
  final UssdRemoteDatasource _remoteDatasource;

  Future<Result<List<UssdItem>>> getUssdCodes() async {
    try {
      final ussdItems = await _localDatasource.getUssdCodes();

      return Result.success(data: ussdItems);
    } on UssdCodesCacheException {
      try {
        final ussdItems = await _assetsDatasource.getUssdCodes();

        await _localDatasource.saveUssdCodes(ussdItems, '');

        return Result.success(data: ussdItems);
      } on Exception {
        return const Result.error(message: 'Error al cargar los códigos ussd');
      }
    }
  }

  Future<Result<List<UssdItem>>> getUssdCodesRemote() async {
    try {
      final hashRemote = await _remoteDatasource.getHash();
      final hashLocal = await _localDatasource.getHash();

      if (hashRemote != hashLocal) {
        final remoteCodes = await _remoteDatasource.getUssdCodes();

        await _localDatasource.saveUssdCodes(remoteCodes, hashRemote);

        return Result.success(data: remoteCodes);
      } else {
        final localCodes = await _localDatasource.getUssdCodes();

        return Result.success(data: localCodes);
      }
    } on UssdCodesServerException {
      return const Result.error(
        message: 'Error al cargar códigos desde el servidor remoto',
      );
    } on UssdCodesCacheException {
      return const Result.error(
        message: 'Error al cargar códigos desde almacenamiento local',
      );
    }
  }
}
