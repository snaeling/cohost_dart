part of '_models.dart';

@freezed
class Tag with _$Tag {
  const factory Tag({
    @JsonKey(name: 'content') required String tag,
    required double similarity,
  }) = _Tag;

  factory Tag.fromJson(Map<String, Object?> json) => _$TagFromJson(json);
}
