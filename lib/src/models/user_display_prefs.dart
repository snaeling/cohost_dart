part of '_models.dart';

@freezed
class UserDisplayPrefs with _$UserDisplayPrefs {
  const factory UserDisplayPrefs({
    @Default(false) bool isAdult,
    @Default(true) bool explicitlyCollapseAdultContent,
    @Default(false) bool collapseLongThreads,
    @Default(false) bool gifsStartPaused,
    @Default(false) bool pauseProfileGifs,
    @Default(false) bool disableEmbeds,
    @Default(true) bool externalLinksInNewTab,
    @Default(true) bool enableNotificationCount,
    @Default(<String>[]) List<String> autoexpandCWs,
    @Default(false) bool suggestedFollowsDismissed,
    @Default(true) bool enableMobileQuickShare,
  }) = _UserDisplayPrefs;

  factory UserDisplayPrefs.fromJson(Map<String, Object?> json) =>
      _$UserDisplayPrefsFromJson(json);
}
