import 'package:cohost_api/src/helpers/http_client.dart';
import 'package:cohost_api/src/services/_cohost_service.dart';
import 'package:cohost_api/src/services/search_service.dart';

/// An API wrapper to access the unofficial cohost.org API through dart.
///
/// To get started, create a new [Cohost] instance, and consider logging in
/// with the `user.login` method.
///
/// This API wrapper tries to maintain the original structure of the live API
/// as well as possible, with some exceptions which are made for the sake
/// of convenience. As such, endpoints are accessible through the following
/// [Cohost] fields:
///
/// - `posts` - Used to get and interact with posts.
/// - `projects` - Used to get and interact with user pages.
/// - `user` -  Handles authentication, user details, and most authenticated
/// requests.
///
/// If you would like to make tRPC requests, you can us the tRPC builder
/// accessible through the `trpc` field.
///
/// Additionally, you can make authenticated HTTP requests using
/// the [HttpClient] instance within [Cohost]. You can access this instance
/// through the `http` field. The [HttpClient] class contains a wrapper around
/// the http package that can be accessed through methods such as `postCall` and
/// `getCall`. The tRPC builder can also be accessed through this class.
class Cohost {
  /// Creates a new [Cohost] instance. You should either initialize [Cohost]
  /// with your session cookie or login using [Cohost.user.login] to use
  /// authenticated requests.
  ///
  /// ### Parameters
  ///
  /// - [sessionCookie] Your session cookie, can be obtained with Cohost.getCookie();
  Cohost([String? sessionCookie])
      : _cohostService = CohostService(client: HttpClient(sessionCookie));

  final CohostService _cohostService;

  ProjectsService get projects => _cohostService.projectsService;
  UserService get user => _cohostService.userService;
  PostsService get posts => _cohostService.postsService;
  SearchService get search => _cohostService.searchService;
  HttpClient get http => _cohostService.http;
}
