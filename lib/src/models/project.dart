part of '_models.dart';

enum PrivacyType {
  private,
  public,
}

enum Flag {
  staff,
  staffMember,
  friendOfTheSite,
  noTransparentAvatar,
  suspended,
}

enum AvatarShape {
  circle,
  egg,
  square,
  squircle,
  roundrect,
  @JsonValue('capsule-big')
  capsuleBig,
  @JsonValue('capsule-small')
  capsuleSmall,
}

@freezed
class Project with _$Project {
  const factory Project({
    required String handle,
    String? displayName,
    String? dek,
    String? description,
    String? avatarUrl,
    String? avatarPreviewURL,
    String? headerURL,
    String? headerPreviewURL,
    required int projectId,
    PrivacyType? privacy,
    String? pronouns,
    String? url,
    required List<String>? flags,
    @JsonKey(defaultValue: AvatarShape.circle) AvatarShape? avatarShape,
  }) = _Project;

  factory Project.fromJson(Map<String, Object?> json) =>
      _$ProjectFromJson(json);
}

@freezed
class FollowingState with _$FollowingState {
  const factory FollowingState({
    required int projectToReader,
    required int readerToProject,
  }) = _FollowingState;

  factory FollowingState.fromJson(Map<String, Object?> json) =>
      _$FollowingStateFromJson(json);
}
