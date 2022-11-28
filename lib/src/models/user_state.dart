part of '_models.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default(<Project>[]) List<Project> editedProjects,
    @Default(0) int? numNotifcation,
    @Default(0) int? numFollowRequests,
    @Default(<String>[]) List<String>? bookmarkedTags,
    @Default(false) bool? hasActiveSubscription,
    @Default(UserDisplayPrefs()) UserDisplayPrefs? displayPrefs,
    @Default(User(loggedIn: false)) User? user,
  }) = _UserState;

  factory UserState.fromJson(Map<String, Object?> json) =>
      _$UserStateFromJson(json);
}
