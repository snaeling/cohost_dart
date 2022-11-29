import 'package:cohost_api/cohost.dart';
import 'package:cohost_api/src/services/base_service.dart';

import '../exceptions/exceptions.dart';

class SearchService extends BaseService {
  const SearchService(super.httpClient);

  /// Query a string for a [SearchResponse] consisting of tags and projects.
  ///
  /// ### Requires authentication.
  ///
  /// ### Parameters
  /// * [query] - The term to search
  Future<SearchResult> query(String query) async {
    try {
      if (!httpClient.cookieProvided) {
        throw UnauthorizedException(
            "Authentication is required for this endpoint");
      }
      final res = await httpClient.tRPC(
        methods: {
          "projects.searchByHandle": {
            "query": query,
            "skipMinimum": false,
          },
          "tags.query": {
            "query": query,
          },
        },
      ).timeout(httpClient.timeout);
      if ((res[0] as Map).containsKey('error')) {
        throw UnauthorizedException('Invalid cookie');
      }
      List<dynamic> projectsJson = res[0]['result']['data']['projects'];
      List<Project> projectsList =
          projectsJson.map((e) => Project.fromJson(e)).toList();
      List<dynamic> tagsJson = res[1]['result']['data']['result'];
      List<Tag> tagsList = tagsJson.map((e) => Tag.fromJson(e)).toList();

      return SearchResult(tags: tagsList, projects: projectsList);
    } catch (e) {
      rethrow;
    }
  }

  /// Query a tag for a [SearchResponse]. Only the tags will be populated.
  ///
  /// ### Parameters
  /// * [tag] - The tag to search
  Future<SearchResult> queryTag(String tag) async {
    try {
      final res = await httpClient.get(
        path: '$api/tags/query',
        queryParameters: {
          'q': tag,
        },
      ).timeout(httpClient.timeout);

      List<dynamic> tagsJson = res['result'];
      List<Tag> tagsList = tagsJson.map((e) => Tag.fromJson(e)).toList();

      return SearchResult(tags: tagsList, projects: []);
    } catch (e) {
      rethrow;
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
}
