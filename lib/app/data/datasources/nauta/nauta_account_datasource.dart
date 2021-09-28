import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo/app/app.dart';

abstract class NautaAccountDatasource {
  Future<int> save(NautaAccount account);
  Future<List<NautaAccount>> findAll();
  Future<NautaAccount?> findById(int id);
  Future<NautaAccount?> findByUsername(String username);
  Future<int> update(int id, NautaAccount account);
  Future<int> delete(int id);
}

@Injectable(as: NautaAccountDatasource)
class NautaAccountSqliteDatasource extends NautaAccountDatasource {
  NautaAccountSqliteDatasource(this._db);

  final Database _db;

  static const table = 'users';

  @override
  Future<int> delete(int id) => _db.delete(
        table,
        where: 'id = ?',
        whereArgs: [id],
      );

  @override
  Future<List<NautaAccount>> findAll() async {
    final map = await _db.query(table);

    return List.generate(
      map.length,
      (index) => NautaAccount.fromJson(map[index]),
    );
  }

  @override
  Future<NautaAccount?> findById(int id) async {
    final map = await _db.query(
      table,
      where: 'id = ?',
      whereArgs: [id],
    );

    final result = List.generate(
      map.length,
      (index) => NautaAccount.fromJson(map[index]),
    );

    return result.isNotEmpty ? result.first : null;
  }

  @override
  Future<NautaAccount?> findByUsername(String username) async {
    final map = await _db.query(
      table,
      where: 'username = ?',
      whereArgs: [username],
    );

    final result = List.generate(
      map.length,
      (index) => NautaAccount.fromJson(map[index]),
    );

    return result.isNotEmpty ? result.first : null;
  }

  @override
  Future<int> save(NautaAccount account) => _db.insert(
        table,
        account.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );

  @override
  Future<int> update(int id, NautaAccount account) => _db.update(
        table,
        account.toJson(),
        where: 'id = ?',
        whereArgs: [id],
      );
}
