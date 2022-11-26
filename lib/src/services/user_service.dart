import 'dart:convert';

import 'package:cohost_api/src/helpers/client_hash_helper.dart';
import 'package:cohost_api/src/models/_models.dart';
import 'package:cohost_api/src/services/base_service.dart';
import 'package:cryptography/cryptography.dart';

class Credentials {
  final String email;
  final String password;

  Credentials(this.email, this.password);
}

class UserService extends BaseService {
  const UserService(super.httpClient);

  /// Login with either a cookie or email and password.
  ///
  /// Requests the login endpoint with your salted email and encoded password to
  /// authenticate the user with a session cookie. Also returns the cookie
  /// string after successful authentication.
  ///
  /// Make sure to store any of these details securely!
  ///
  /// For flutter, will hang the UI thread if not in an isolate!
  ///
  /// ### Parameters
  /// - [cookie] A plain text cookie. Will take precedence over further parameters.
  /// - [email] A plain text email.
  /// - [password] A plain text password.
  Future<String> login({
    String? cookie,
    String? email,
    String? password,
  }) async {
    if (cookie != null) {
      httpClient.setCookie = cookie;
      return cookie;
    }
    try {
      var saltRes = await httpClient.get(
        path: '$api/login/salt',
        queryParameters: {'email': email},
      ).timeout(httpClient.timeout);

      String salt = saltRes['salt'];
      // from cohost.py, ty. i reimplemented the .js the site uses originally lol
      // https://github.com/valknight/Cohost.py/blob/b604a3963db833c9b7ac1d0e8207948c29842887/cohost/models/user.py#L85
      salt = salt.replaceAll('-', 'A');
      salt = salt.replaceAll('_', 'A');
      salt = "$salt==";

      //salt = await hashHelper.calculateHash(salt, password!);

      final saltDecoded = base64Decode(ascii.decode(ascii.encode(salt)));

      // make sure to put this in an isolate gamers!!
      final pbkdf2 = Pbkdf2(
        macAlgorithm: Hmac(Sha384()),
        iterations: 200000,
        bits: 1024,
      );

      final newSecretKey = await pbkdf2.deriveKey(
        secretKey: SecretKey(utf8.encode(password!)),
        nonce: saltDecoded,
      );
      final bytes = await newSecretKey.extractBytes();
      var clientHash = base64Encode(bytes);

      Map<String, String> data = {
        'email': email as String,
        'clientHash': clientHash,
      };

      final res = await httpClient
          .post(
            path: '$api/login',
            data: data,
            raw: true,
          )
          .timeout(httpClient.timeout);

      if (res.headers['set-cookie'] == null) throw Exception('Unauthorized.');

      final cookie = res.headers['set-cookie']!.split(";")[0].split("=")[1];

      httpClient.setCookie = cookie;
      return cookie;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  /// Grabs [User] info, including a [loggedIn] property that can be used to
  /// verify the session cookie is valid.
  Future<User> loggedIn() async {
    try {
      final res = await httpClient
          .get(
            path: '$api/logged-in',
          )
          .timeout(httpClient.timeout);
      return User.fromJson(res);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
