import 'dart:convert';

import 'package:cohost_api/cohost.dart';
import 'package:cohost_api/src/services/base_service.dart';
import 'package:html/parser.dart';

class ProjectsService extends BaseService {
  const ProjectsService(super.httpClient);

  /// Returns a list of [Post] objects based on a specified handle and page.
  ///
  /// ### Parameters
  ///
  /// - [handle] The project's handle (e.g. `staff`)
  /// - [page] What page to fetch posts from, defaults to 0.
  Future<List<Post>> getPosts(String handle, [int page = 0]) async {
    try {
      final res = await httpClient.get(
        path: '$api/project/$handle/posts',
        queryParameters: {
          'page': page.toString(),
        },
      ).timeout(httpClient.timeout);

      final List<dynamic> posts = res['items'];
      return posts.map((e) => Post.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a list of [Post] objects based on a specified handle and page.
  ///
  /// ### Parameters
  ///
  /// - [handle] The project's handle (e.g. `staff`)
  /// - [page] What page to fetch posts from, defaults to 0.
  Future<List<Post>> getProjectPostsByTag(
    String handle, {
    required String tag,
    int page = 0,
  }) async {
    try {
      final res = await httpClient.get(
        path: '$api/project/$handle/tagged/$tag',
        queryParameters: {
          'page': page.toString(),
        },
      ).timeout(httpClient.timeout);
      final List<dynamic> posts = res['items'];
      return posts.map((e) => Post.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  /// Returns the [Project] of the the specificed handle.
  ///
  /// Only gets [projectId], [displayName], [dek], and [description].
  ///
  /// ### Parameters
  ///
  /// - [handle] The project's handle (e.g. `staff`)
  Future<Project> getProject(String handle) async {
    try {
      final res = await httpClient
          .get(
            path: '$api/project/$handle',
          )
          .timeout(httpClient.timeout);
      return Project.fromJson(res);
    } catch (e) {
      rethrow;
    }
  }

  /// Returns the [FollowingState] of the the specificed handle.
  ///
  /// ### Parameters
  ///
  /// - [project] The project's handle (e.g. `staff`)
  Future<FollowingState> getFollowingState(String project) async {
    try {
      final res = await httpClient
          .get(
            path: '$api/project/$project/following',
          )
          .timeout(httpClient.timeout);
      return FollowingState.fromJson(res);
    } catch (e) {
      rethrow;
    }
  }

  /// To be implemented if an official API supports it in the future.
  Future<Project> createProject() async {
    throw UnimplementedError();
  }

  /// Returns a [Project] by parsing the raw HTML response
  ///
  /// ### Parameters
  ///
  /// - [handle] The project's handle (e.g. `staff`)
  Future<Project> htmlProject(String handle) async {
    try {
      final res = await httpClient
          .get(
            path: "/$handle",
            raw: true,
          )
          .timeout(httpClient.timeout);
      final html = parse(res.bodyBytes);
      final rawPosts =
          html.getElementById("__COHOST_LOADER_STATE__")?.innerHtml;
      // TODO fix up these exceptions
      if (rawPosts == null) throw Exception('aa');
      final project = jsonDecode(rawPosts)['project-page-view']['project'];
      return Project.fromJson(project);
    } catch (e) {
      rethrow;
    }
  }
}
