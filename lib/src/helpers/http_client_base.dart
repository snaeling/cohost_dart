abstract class HttpClientBase {
  /// Generic method for GET calls.
  Future<T> get<T>({
    required String path,
    Map<String, dynamic> queryParameters = const {},
    bool raw,
  });

  /// Generic method for POST calls.
  Future<T> post<T>({
    required String path,
    dynamic data,
    Map<String, dynamic> queryParameters = const {},
  });

  /// Generic method for PUT calls.
  Future<T> put<T>(
    Uri uri,
    dynamic data, {
    Map<String, dynamic> queryParameters = const {},
  });

  /// Generic method for DELETE calls.
  Future<T?> delete<T>(
    Uri uri, {
    Map<String, dynamic> queryParameters = const {},
  });

  /// Generic method for building and getting tRPC calls.
  Future<T?> tRPC<T>({
    required Map<String, Map<String, dynamic>?> methods,
    int batch = 1,
  });
}
