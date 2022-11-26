part of '_models.dart';

@freezed
class SearchResult with _$SearchResult {
  const factory SearchResult({
    @JsonKey(name: "result") required List<Tag> tags,
    required List<Project> projects,
  }) = _SearchResult;

  factory SearchResult.fromJson(Map<String, Object?> json) =>
      _$SearchResultFromJson(json);
}
