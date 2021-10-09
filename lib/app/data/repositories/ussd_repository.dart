import 'package:injectable/injectable.dart';
import 'package:todo/app/app.dart';

@injectable
class UssdRepository {
  const UssdRepository(
    this._assetsDatasource,
    this._localDatasource,
    this._remoteDatasource,
    this._recentDatasource,
  );

  final UssdAssetsDatasource _assetsDatasource;
  final UssdLocalDatasource _localDatasource;
  final UssdRemoteDatasource _remoteDatasource;
  final UssdRecentDatasource _recentDatasource;

  Future<Result<List<UssdItem>>> getUssdCodes() async {
    try {
      final lastDay = await _localDatasource.getDay();
      final actualDay = DateTime.now().day;

      if (lastDay != actualDay) {
        final result = await getUssdCodesRemote();

        return result.when(
          success: (data) {
            return Result.success(data: data);
          },
          error: (error) async {
            try {
              final ussdItems = await _localDatasource.getUssdCodes();

              return Result.success(data: ussdItems);
            } on UssdCodesCacheException {
              try {
                final ussdItems = await _assetsDatasource.getUssdCodes();

                await _localDatasource.saveUssdCodes(ussdItems, '');

                return Result.success(data: ussdItems);
              } on Exception {
                return const Result.error(
                  message: 'Error al cargar los códigos ussd',
                );
              }
            }
          },
        );
      } else {
        final ussdItems = await _localDatasource.getUssdCodes();

        return Result.success(data: ussdItems);
      }
    } on UssdCodesCacheException {
      try {
        final ussdItems = await _assetsDatasource.getUssdCodes();

        await _localDatasource.saveUssdCodes(ussdItems, '');

        return Result.success(data: ussdItems);
      } on Exception {
        return const Result.error(
          message: 'Error al cargar los códigos ussd',
        );
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
        await _localDatasource.updateDay();

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

  Future<Result<List<UssdItem>>> getUssdCodesRecent() async {
    final ussdItems = await _recentDatasource.getUssdCodes();

    return Result.success(data: ussdItems);
  }

  Future<Result<List<UssdItem>>> putRecentUssdItem(UssdItem item) async {
    final ussdItems = await _recentDatasource.putUssdItem(item);

    return Result.success(data: ussdItems);
  }
}
