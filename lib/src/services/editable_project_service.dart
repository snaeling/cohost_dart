import 'package:cohost_api/cohost.dart';
import 'package:cohost_api/src/services/base_service.dart';

import '../helpers/http_client.dart';

class EditableProjectService extends BaseService {
  const EditableProjectService(super.httpClient);

  // {"0":{"privacy":"private","adultContent":false}}
  /// Mutate the user's CW settings with a ***new*** list of silenced and expanded
  /// tags.
  ///
  /// **Requires authentication**
  ///
  /// ### Parameters
  ///
  /// * [silenced] - Tags to be sliences, include tags the user already had
  /// silenced unless they are being removed.
  /// * [autoexpanded] - Tags to be expanded, include tags the user already had
  /// silenced unless they are being removed.
  Future<void> changeProjectSettings(
      {required PrivacyType privacy, required bool adultContent}) async {
    try {
      if (!httpClient.cookieProvided) {
        throw UnauthorizedException(
            "Authentication is required for this endpoint");
      }
      await httpClient.tRPC(
        methods: {
          "projects.changeProjectSettings": {
            "adultContent": adultContent,
            "privacy": privacy.toString(),
          }
        },
        method: TrpcMethod.post,
      );
    } catch (e) {
      rethrow;
    }
  }

  /// Creates a follow request towards a project.
  ///
  /// returns:
  /// **0** not following
  ///
  /// **1** requested following
  ///
  /// **2** following
  ///
  /// **Requires Authentication**
  ///
  /// ### Parameters
  ///
  /// - [editableProjectId] - The id of a project the user has control over.
  /// - [projectToFollowId] - The id of the project the personal project will
  /// attempt to follow.
  Future<int> createFollowRequest(
      int editableProjectId, int projectToFollowId) async {
    try {
      if (!httpClient.cookieProvided) {
        throw UnauthorizedException(
            "Authentication is required for this endpoint");
      }
      final res = await httpClient.post(
        path:
            '/rc/relationships/project-$editableProjectId/to-project-$projectToFollowId/create-follow-request',
      );
      return res['followingState'] as int;
    } catch (e) {
      rethrow;
    }
  }

  /// Creates a follow request towards a project.
  ///
  /// returns:
  /// **0** not following
  ///
  /// **1** requested following
  ///
  /// **2** following
  ///
  /// **Requires Authentication**
  ///
  /// ### Parameters
  ///
  /// - [editableProjectId] - The id of a project the user has control over.
  /// - [projectToFollowId] - The id of the project the personal project will
  /// stop to attempting to follow.
  Future<int> cancelFollowRequest(
      int editableProjectId, int projectToFollowId) async {
    try {
      if (!httpClient.cookieProvided) {
        throw UnauthorizedException(
            "Authentication is required for this endpoint");
      }
      final res = await httpClient.post(
        path:
            '/rc/relationships/project-$editableProjectId/to-project-$projectToFollowId/cancel-follow-request',
      );
      return res['followingState'] as int;
    } catch (e) {
      rethrow;
    }
  }

  /// Unfollows a project.
  ///
  /// returns:
  /// **0** not following
  ///
  /// **1** requested following
  ///
  /// **2** following
  ///
  /// **Requires Authentication**
  ///
  /// ### Parameters
  ///
  /// - [editableProjectId] - The id of a project the user has control over.
  /// - [projectToUnfollowId] - The id of the project the personal project will
  /// be unfollowing.
  Future<int> unfollowProject(
      int editableProjectId, int projectToUnfollowId) async {
    try {
      if (!httpClient.cookieProvided) {
        throw UnauthorizedException(
            "Authentication is required for this endpoint");
      }
      final res = await httpClient.post(
        path:
            '/rc/relationships/project-$editableProjectId/to-project-$projectToUnfollowId/unfollow',
      );
      return res['followingState'] as int;
    } catch (e) {
      rethrow;
    }
  }
}
