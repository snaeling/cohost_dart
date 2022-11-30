import 'package:cohost_api/src/helpers/http_client.dart';
import 'package:cohost_api/src/services/editable_project_service.dart';
import 'package:cohost_api/src/services/posts_service.dart';
import 'package:cohost_api/src/services/projects_service.dart';
import 'package:cohost_api/src/services/search_service.dart';
import 'package:cohost_api/src/services/user_service.dart';

export 'package:cohost_api/src/services/projects_service.dart';
export 'package:cohost_api/src/services/user_service.dart';
export 'package:cohost_api/src/services/posts_service.dart';

class CohostService {
  CohostService({required HttpClient client})
      : projectsService = ProjectsService(client),
        editableProjectService = EditableProjectService(client),
        userService = UserService(client),
        postsService = PostsService(client),
        searchService = SearchService(client),
        http = client;

  final ProjectsService projectsService;

  final EditableProjectService editableProjectService;

  final UserService userService;

  final PostsService postsService;

  final SearchService searchService;

  final HttpClient http;
}
