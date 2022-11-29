import 'dart:convert';
import 'dart:typed_data';

import 'package:cohost_api/cohost.dart';
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
  /// - [cookie] - A plain text cookie. Will take precedence over further parameters.
  /// - [email] - A plain text email.
  /// - [password] - A plain text password.
  /// - [clientHash] - If you calculate the client hash yourself, you can provide
  /// it instead of a password.
  Future<String> login({
    String? cookie,
    String? email,
    String? password,
    String? clientHash,
  }) async {
    if (cookie != null) {
      httpClient.setCookie = cookie;
      return cookie;
    }
    try {
      var saltDecoded = await salt(email: email!);

      if (clientHash == null) {
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
        clientHash = base64Encode(bytes);
      }

      Map<String, String> data = {
        'email': email,
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
      rethrow;
    }
  }

  /// Fetches the salt of an email as a Uint8List
  ///
  /// ### Parameters
  ///
  /// * [email] - an email, e.g. `example@example.com`
  Future<Uint8List> salt({
    required String email,
  }) async {
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

      return base64Decode(ascii.decode(ascii.encode(salt)));
    } catch (e) {
      rethrow;
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
      rethrow;
    }
  }

  /// Fetches the pages the user has access to
  ///
  /// **Requires authentication**
  Future<List<Project>> editedProjects() async {
    try {
      if (!httpClient.cookieProvided) {
        throw UnauthorizedException(
            "Authentication is required for this endpoint");
      }
      final res = await httpClient
          .get(
            path: '$api/projects/edited',
          )
          .timeout(httpClient.timeout);
      List<dynamic> projects = res['projects'];
      return projects.map((e) => Project.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  /// Compilation of notifcation counts, follow reqs, bookmarks, prefs etc
  ///
  /// **Requires authentication**
  Future<UserState> userState(String handle) async {
    try {
      var res = await httpClient.tRPC(methods: {
        "projects.listEditedProjects": {},
        "notifications.count": {"projectHndle": handle},
        "relationships.countFollowRequests": {"projectHandle": handle},
        "bookmarks.tags.list": {},
        "subscriptions.hasActiveSubscription": {},
        "users.displayPrefs": {},
        "login.loggedIn": {},
      }).timeout(httpClient.timeout);
      if (res?[0]?['error'] != null) {
        throw UnauthorizedException('UNAUTHORIZED');
      }
      // hec k
      final projectsJson = res[0]?['result']?['data']['projects'];
      List<Project> editedProjects =
          projectsJson.map<Project>((e) => Project.fromJson(e)).toList();
      int numNotifcation = res[1]?['result']?['data']['count'];
      int numFollowRequests = res[2]?['result']?['data']['count'];
      List<dynamic> bookmarksJson = res[3]?['result']?['data']['tags'];
      List<String> bookmarkedTags =
          bookmarksJson.map<String>((e) => e).toList();
      bool hasActiveSubscription = res[4]?['result']?['data'];
      UserDisplayPrefs displayPrefs =
          UserDisplayPrefs.fromJson(res[5]?['result']?['data']);
      User user = User.fromJson(res[6]?['result']?['data']);
      return UserState(
        editedProjects: editedProjects,
        numNotifcation: numNotifcation,
        numFollowRequests: numFollowRequests,
        bookmarkedTags: bookmarkedTags,
        hasActiveSubscription: hasActiveSubscription,
        displayPrefs: displayPrefs,
        user: user,
      );
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a list of [Project]s who follow the user
  ///
  /// **Requires authentication**
  Future<List<Project>> getFollowers() async {
    try {
      if (!httpClient.cookieProvided) {
        throw UnauthorizedException(
            "Authentication is required for this endpoint");
      }
      final res = await httpClient
          .get(
            path: '$api/projects/followers',
          )
          .timeout(httpClient.timeout);
      List<dynamic> projects = res['projects'];
      return projects.map((e) => Project.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a list of [Project]s who the user is following
  ///
  /// **Requires authentication**
  Future<List<Project>> getFollowing() async {
    try {
      if (!httpClient.cookieProvided) {
        throw UnauthorizedException(
            "Authentication is required for this endpoint");
      }
      final res = await httpClient
          .get(
            path: '$api/projects/following',
          )
          .timeout(httpClient.timeout);
      List<dynamic> projects = res['projects'];
      return projects.map((e) => Project.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
