import 'dart:convert';

import 'package:http/http.dart' as http;

import 'http_client_base.dart';

class HttpClient extends HttpClientBase {
  String _sessionCookie;
  final String _authority = 'cohost.org';
  final String _apiBase = '/api/v1/';
  final String _tPRC = '/trpc/';
  final Duration timeout = Duration(seconds: 30);

  HttpClient(String? cookie)
      : _sessionCookie = cookie != null ? 'connect.sid=$cookie' : '';

  // currently a unnecessary_getters_setters so
  // TODO: make this a generic cookie jar
  set setCookie(String sid) => _sessionCookie = 'connect.sid=$sid';
  String? get getCookie => _sessionCookie;
  bool get cookieProvided => (_sessionCookie == '') ? false : true;
  // Future getCall({
  //   required String path,
  //   Map<String, dynamic> queryParameters = const {},
  //   bool raw = false,
  // }) =>
  //     _getCall(path: path, queryParameters: queryParameters, raw: raw)
  //         .timeout(timeout);

  @override
  Future<T> get<T>({
    Uri? uri,
    required String path,
    Map<String, dynamic> queryParameters = const {},
    bool raw = false,
  }) async {
    final headers = {
      'Cookie': _sessionCookie,
    };
    final Uri genUri = Uri.https(_authority, path, queryParameters);
    final res = await http.get(uri ?? genUri, headers: headers);

    return raw ? res as T : jsonDecode(utf8.decode(res.bodyBytes)) as T;
  }

  @override
  Future<T> post<T>({
    required String path,
    data,
    Map<String, dynamic> queryParameters = const {},
    bool raw = false,
  }) async {
    final headers = {
      'Cookie': _sessionCookie,
    };
    final Uri uri = Uri.https(_authority, path, queryParameters);
    final res = await http.post(uri, body: data, headers: headers);

    return raw ? res as T : jsonDecode(utf8.decode(res.bodyBytes)) as T;
  }

  @override
  Future<T> put<T>(Uri uri, data,
      {Map<String, dynamic> queryParameters = const {}}) {
    // TODO: implement putCall
    throw UnimplementedError();
  }

  @override
  Future<T?> delete<T>(
    Uri uri, {
    Map<String, dynamic> queryParameters = const {},
  }) {
    // TODO: implement deleteCall
    throw UnimplementedError();
  }

  @override
  Future<T?> tRPC<T>({
    required Map<String, Map<String, dynamic>?> methods,
    int batch = 1,
    TrpcMethod method = TrpcMethod.get,
  }) async {
    final headers = {
      'Cookie': _sessionCookie,
    };
    final String methodList = methods.keys.toList().join(',');
    final Map<String, Map<String, dynamic>> inputMap = {};
    int index = 0;

    methods.forEach((queryKey, input) {
      if (input != null && input.isNotEmpty) {
        inputMap[index.toString()] = {};
        input.forEach((inputKey, value) {
          inputMap[index.toString()]?[inputKey] = value;
        });
      }
      index++;
    });
    late final dynamic res;
    switch (method) {
      case TrpcMethod.get:
        final queryParameters = {
          "batch": batch.toString(),
          "input": json.encode(inputMap).toString(),
        };

        final Uri uri = Uri.https(
            _authority, '$_apiBase$_tPRC$methodList', queryParameters);

        res = await http.get(uri, headers: headers);
        break;
      case TrpcMethod.post:
        final queryParameters = {
          "batch": batch.toString(),
        };

        final Uri uri = Uri.https(
            _authority, '$_apiBase$_tPRC$methodList', queryParameters);

        res = await http.post(uri,
            body: json.encode(inputMap).toString(), headers: headers);
        return res;
    }
    if (methods.keys.length > 1) return jsonDecode(utf8.decode(res.bodyBytes));
    // TODO: not good
    return jsonDecode(utf8.decode(res.bodyBytes))[0]['result']['data'] as T;
  }
}

enum TrpcMethod {
  get,
  post,
}
