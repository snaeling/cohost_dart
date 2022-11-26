part of '_models.dart';

bool _allowedFromJson(String value) => value == 'allowed' ? true : false;

@freezed
class Comment with _$Comment {
  const factory Comment({
    required CommentData comment,
    @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
        required bool canInteract,
    @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
        required bool canEdit,
    @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
        required bool canHide,
    required Project poster,
  }) = _Comment;

  factory Comment.fromJson(Map<String, Object?> json) =>
      _$CommentFromJson(json);
}

@freezed
class CommentData with _$CommentData {
  const factory CommentData({
    required String commentId,
    required DateTime postedAtISO,
    required bool deleted,
    required String body,
    required List<Comment>? children,
    required int postId,
    String? inReplyTo,
    required bool hasCohostPlus,
    required bool hidden,
  }) = _CommentData;

  factory CommentData.fromJson(Map<String, Object?> json) =>
      _$CommentDataFromJson(json);
}
