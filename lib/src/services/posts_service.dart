import 'dart:convert';

import 'package:cohost_api/cohost.dart';
import 'package:cohost_api/src/services/base_service.dart';
import 'package:html/parser.dart' show parse;
import 'package:http/http.dart';

class PostsService extends BaseService {
  const PostsService(super.httpClient);

  /// Returns a [Post] object based on a specified id.
  ///
  /// ### Parameters
  ///
  /// - [id] The post's numerical id
  Future<Post> getPost(int id) async {
    try {
      final res = await httpClient
          .get(
            path: '$api/project_post/$id',
          )
          .timeout(httpClient.timeout);
      return Post.fromJson(res);
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a [SinglePost] object based on a specified id.
  ///
  /// ### Parameters
  ///
  /// * [handle] - The posting project's handle, (e.g. `staff`)
  /// * [id] - The id of the post. (e.g. `470372`)
  Future<SinglePost> getSinglePost(
    String handle,
    int id,
  ) async {
    try {
      final res = await httpClient.tRPC(
        methods: {
          "posts.singlePost": {"handle": handle, "postId": id},
        },
      ).timeout(httpClient.timeout);
      return SinglePost.fromJson(res);
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a list of [Comment] objects based on a specified.
  /// Not implemented as it is not implemented server-side.
  ///
  /// Use tRPC.
  /// e.g. `posts.singlePost?batch=1&input={"0":{"handle":"vogon","postId":109808}}`
  ///
  /// ### Parameters
  ///
  /// - [project] The project's handle (e.g. `staff`)
  /// - [page] What page to fetch posts from, defaults to 0.
  Future<void> getComments(int id) async {
    throw UnimplementedError();
    try {
      final res = await httpClient.get(
        path: '$api/project_post/$id',
      );
      //return Post.fromJson(res);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> test() async {
    try {
      final res = await httpClient.tRPC(
        methods: {
          "posts.singlePost": {"handle": "vogon", "postId": 109808},
        },
      ).timeout(httpClient.timeout);
      print(res[0]['result']['data']['comments']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  /// Get post from a user, including stickied posts.
  ///
  /// ### Parameters
  /// * [page] - Page to fetch (e.g. `0`).
  /// * [handle] - The handle of the project (e.g. `staff`).
  /// * [hideReplies] - If the response should include replies or not.
  /// * [hideReplies] - If the response should include shares or not.
  Future<List<Post>> getProfilePosts(int page, String handle,
      {bool hideReplies = false, bool hideShares = false}) async {
    try {
      final res = await httpClient.tRPC(
        methods: {
          "posts.profilePosts": {
            "options": {"hideReplies": hideReplies, "hideShares": hideShares},
            "page": page,
            "projectHandle": handle
          },
        },
      ).timeout(httpClient.timeout);
      List<dynamic> posts = res['posts'];
      return posts.map((e) => Post.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  /// The user's dashboard.
  ///
  /// Returns a list of [Post] by parsing the raw HTML response
  ///
  /// **Requires Authentication**
  ///
  /// ### Parameters
  ///
  /// - [timestamp] - The timestamp to use as a reference for skips, usually just
  /// `DateTime.now()`
  /// - [skip] - Amount of posts to skip. Should be in multiples of 20, starting from 0.
  Future<List<Post>> htmlDashboard([DateTime? timestamp, int? skip = 0]) async {
    try {
      if (!httpClient.cookieProvided) {
        throw UnauthorizedException(
            "Authentication is required for this endpoint");
      }
      Response res = await httpClient
          .get(
            path: "/",
            raw: true,
            queryParameters: timestamp != null
                ? {
                    "refTimestamp": timestamp.millisecondsSinceEpoch.toString(),
                    "skipPosts": skip.toString()
                  }
                : {},
          )
          .timeout(httpClient.timeout);
      final html = parse(res.bodyBytes);
      final rawPosts =
          html.getElementById("__COHOST_LOADER_STATE__")?.innerHtml;
      // TODO fix up these exceptions
      if (rawPosts == null) throw UnauthorizedException('Invalid cookie');

      List<dynamic> posts;
      if (timestamp != null) {
        posts = jsonDecode(rawPosts)['dashboard-nonlive-post-feed']['posts'];
      } else {
        posts = jsonDecode(rawPosts)['dashboard']['posts'];
      }
      return posts.map((e) => Post.fromJson(e)).toList();
    } on UnauthorizedException {
      throw UnauthorizedException('Invalid cookie');
    } catch (e) {
      rethrow;
    }
  }

  /// The feed of a single tag.
  ///
  /// Returns a list of [Post] by parsing the raw HTML response
  ///
  /// ### Parameters
  ///
  /// - [tag] - The tag of the requested feed. Supports spaces. (e.g. `The Cohost Global Feed`)
  /// - [timestamp] - The timestamp to use as a reference for skips, usually just
  /// `DateTime.now()`
  /// - [skip] - Amount of posts to skip. Should be in multiples of 20, starting from 0.
  Future<List<Post>> htmlTagged(String tag,
      [DateTime? timestamp, int? skip = 0]) async {
    try {
      Response res = await httpClient
          .get(
            path: "/rc/tagged/$tag",
            raw: true,
            queryParameters: timestamp != null
                ? {
                    "refTimestamp": timestamp.millisecondsSinceEpoch.toString(),
                    "skipPosts": skip.toString()
                  }
                : {},
          )
          .timeout(httpClient.timeout);
      final html = parse(res.bodyBytes);
      final rawPosts =
          html.getElementById("__COHOST_LOADER_STATE__")?.innerHtml;
      // TODO fix up these exceptions
      if (rawPosts == null) throw Exception('aa');
      List<dynamic> posts = jsonDecode(rawPosts)['tagged-post-feed']['posts'];
      return posts.map((e) => Post.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  /// The compilation feed of a users bookmarked tags.
  ///
  /// Returns a list of [Post] by parsing the raw HTML response
  ///
  /// ### Parameters
  ///
  /// - [timestamp] - The timestamp to use as a reference for skips, usually just
  /// `DateTime.now()`
  /// - [skip] - Amount of posts to skip. Should be in multiples of 20, starting from 0.
  Future<List<Post>> htmlBookmarkedTagFeed(
      [DateTime? timestamp, int? skip = 0]) async {
    try {
      Response res = await httpClient
          .get(
            path: "/rc/bookmarks",
            raw: true,
            queryParameters: timestamp != null
                ? {
                    "refTimestamp": timestamp.millisecondsSinceEpoch.toString(),
                    "skipPosts": skip.toString()
                  }
                : {},
          )
          .timeout(httpClient.timeout);
      final html = parse(res.bodyBytes);
      final rawPosts =
          html.getElementById("__COHOST_LOADER_STATE__")?.innerHtml;
      // TODO fix up these exceptions
      if (rawPosts == null) throw Exception('aa');
      List<dynamic> posts =
          jsonDecode(rawPosts)['bookmarked-tag-feed']['posts'];
      return posts.map((e) => Post.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
