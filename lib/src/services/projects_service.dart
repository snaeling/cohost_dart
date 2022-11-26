import 'package:cohost_api/cohost.dart';
import 'package:cohost_api/src/services/base_service.dart';

class ProjectsService extends BaseService {
  const ProjectsService(super.httpClient);

  /// Returns a list of [Post] objects based on a specified handle and page.
  ///
  /// ### Parameters
  ///
  /// - [project] The project's handle (e.g. `staff`)
  /// - [page] What page to fetch posts from, defaults to 0.
  Future<List<Post>> getPosts(String project, [int page = 0]) async {
    try {
      final res = await httpClient.get(
        path: '$api/project/$project/posts',
        queryParameters: {
          'page': page.toString(),
        },
      ).timeout(httpClient.timeout);

      final List<dynamic> posts = res['items'];
      return posts.map((e) => Post.fromJson(e)).toList();
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  /// Returns a list of [Post] objects based on a specified handle and page.
  ///
  /// ### Parameters
  ///
  /// - [project] The project's handle (e.g. `staff`)
  /// - [page] What page to fetch posts from, defaults to 0.
  Future<List<Post>> getPostsByTag(
    String project, {
    required String tag,
    int page = 0,
  }) async {
    try {
      final res = await httpClient.get(
        path: '$api/project/$project/tagged/$tag',
        queryParameters: {
          'page': page.toString(),
        },
      ).timeout(httpClient.timeout);
      final List<dynamic> posts = res['items'];
      return posts.map((e) => Post.fromJson(e)).toList();
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  /// Returns the [Project] of the the specificed handle.
  ///
  /// Only gets [projectId], [displayName], [dek], and [description].
  ///
  /// ### Parameters
  ///
  /// - [project] The project's handle (e.g. `staff`)
  Future<Project> getProject(String project) async {
    try {
      final res = await httpClient
          .get(
            path: '$api/project/$project',
          )
          .timeout(httpClient.timeout);
      return Project.fromJson(res);
    } catch (e) {
      throw Exception(e.toString());
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
      throw Exception(e.toString());
    }
  }

  /// To be implemented if an official API supports it in the future.
  Future<Project> createProject() async {
    throw UnimplementedError();
  }
}
