class ParseUssdCodeException implements Exception {
  const ParseUssdCodeException({
    required this.message,
    this.map,
  });

  final String message;
  final Map<String, dynamic>? map;
}

class UssdCodesCacheException implements Exception {}

class UssdCodesServerException implements Exception {
  const UssdCodesServerException(this.message);

  final String message;
}
