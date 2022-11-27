import 'package:cohost_api/cohost.dart';
import 'package:cohost_api/src/services/base_service.dart';

import '../exceptions/exceptions.dart';

class SearchService extends BaseService {
  const SearchService(super.httpClient);

  Future<SearchResult> query(String query) async {
    try {
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
      if ((res[0] as Map).containsKey('error'))
        throw UnauthorizedException('Invalid cookie');
      List<dynamic> projectsJson = res[0]['result']['data']['projects'];
      List<Project> projectsList =
          projectsJson.map((e) => Project.fromJson(e)).toList();
      List<dynamic> tagsJson = res[1]['result']['data']['result'];
      List<Tag> tagsList = tagsJson.map((e) => Tag.fromJson(e)).toList();

      return SearchResult(tags: tagsList, projects: projectsList);
    } on UnauthorizedException {
      throw UnauthorizedException('Invalid cookie');
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
}
