import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// ignore: always_use_package_imports
import 'adapters/http_stub_adapter.dart'
    if (dart.library.html) 'adapters/http_browser_adapter.dart'
    if (dart.library.io) 'adapters/http_native_adapter.dart';

@injectable
class HttpClient with DioMixin implements Dio {
  HttpClient() {
    options = BaseOptions(
      headers: {
        'Accept-Encoding': 'gzip, deflate, br',
        'Content-Type': 'application/json',
      },
    );

    httpClientAdapter = httpAdapter();
  }
}
