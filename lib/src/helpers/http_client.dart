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
  String get getCookie => _sessionCookie;

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
    final res = await http.post(uri, body: data);

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
  }) async {
    final headers = {
      'Cookie': _sessionCookie,
    };
    final String methodList = methods.keys.toList().join(',');
    final Map<String, Map<String, dynamic>> inputMap = {};
    int index = 0;

    methods.forEach((queryKey, input) {
      if (input != null) {
        inputMap[index.toString()] = {};
        input.forEach((inputKey, value) {
          inputMap[index.toString()]?[inputKey] = value;
        });
      }
      index++;
    });

    final queryParameters = {
      "batch": batch.toString(),
      "input": json.encode(inputMap).toString(),
    };

    final Uri uri =
        Uri.https(_authority, '$_apiBase$_tPRC$methodList', queryParameters);

    final res = await http.get(uri, headers: headers);
    if (methods.keys.length > 1) return jsonDecode(utf8.decode(res.bodyBytes));
    return jsonDecode(utf8.decode(res.bodyBytes))[0]['result']['data'] as T;
  }
}
