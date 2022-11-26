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
      throw Exception(e.toString());
    }
  }

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
      throw Exception(e.toString());
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

  Future<List<Post>> getProfilePosts(int page, String handle) async {
    try {
      final res = await httpClient.tRPC(
        methods: {
          "posts.profilePosts": {
            "options": {"hideReplies": false, "hideShares": false},
            "page": page,
            "projectHandle": handle
          },
        },
      ).timeout(httpClient.timeout);
      List<dynamic> posts = res['posts'];
      return posts.map((e) => Post.fromJson(e)).toList();
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<Post>> htmlDashboard([DateTime? timestamp, int? skip = 0]) async {
    try {
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
      print(res);
      final html = parse(res.bodyBytes);
      final rawPosts =
          html.getElementById("__COHOST_LOADER_STATE__")?.innerHtml;
      // TODO fix up these exceptions
      if (rawPosts == null) throw Exception('aa');

      List<dynamic> posts;
      if (timestamp != null) {
        posts = jsonDecode(rawPosts)['dashboard-nonlive-post-feed']['posts'];
      } else {
        posts = jsonDecode(rawPosts)['dashboard']['posts'];
      }
      return posts.map((e) => Post.fromJson(e)).toList();
    } catch (e) {
      throw Exception(e.toString());
    }
  }

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
      print(res);
      final html = parse(res.bodyBytes);
      final rawPosts =
          html.getElementById("__COHOST_LOADER_STATE__")?.innerHtml;
      // TODO fix up these exceptions
      if (rawPosts == null) throw Exception('aa');
      List<dynamic> posts = jsonDecode(rawPosts)['tagged-post-feed']['posts'];
      return posts.map((e) => Post.fromJson(e)).toList();
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
