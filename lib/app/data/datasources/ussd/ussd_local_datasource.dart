import 'package:injectable/injectable.dart';
import 'package:todo/app/app.dart';

const USSD_CODES_KEY = 'config';
const USSD_CODES_HASH = 'hash';

@injectable
class UssdLocalDatasource {
  const UssdLocalDatasource();

  Future<List<UssdItem>> getUssdCodes() async {
    throw UssdCodesCacheException();
  }

  Future<String?> getHash() async {
    return null;
  }

  Future<void> saveUssdCodes(List<UssdItem> items, String hash) async {}
}
