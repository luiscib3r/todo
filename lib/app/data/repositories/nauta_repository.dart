import 'package:injectable/injectable.dart';
import 'package:todo/app/app.dart';

@injectable
class NautaRepository {
  NautaRepository(this._accountDatasource);

  final NautaAccountDatasource _accountDatasource;

  Future<int> saveAccount(NautaAccount account) =>
      _accountDatasource.save(account);

  Future<List<NautaAccount>> findAllAccounts() => _accountDatasource.findAll();

  Future<NautaAccount?> findByIdAccount(int id) =>
      _accountDatasource.findById(id);

  Future<NautaAccount?> findByUsernameAccount(String username) =>
      _accountDatasource.findByUsername(username);

  Future<int> updateAccount(int id, NautaAccount account) =>
      _accountDatasource.update(id, account);

  Future<int> deleteAccount(int id) => _accountDatasource.delete(id);
}
