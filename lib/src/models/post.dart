part of '_models.dart';

@freezed
class SinglePost with _$SinglePost {
  const factory SinglePost({
    required Post post,
    required Map<String, List<Comment>> comments,
  }) = _SinglePost;

  factory SinglePost.fromJson(Map<String, Object?> json) =>
      _$SinglePostFromJson(json);
}

@freezed
class Post with _$Post {
  const factory Post({
    required int postId,
    required String headline,
    required DateTime publishedAt,
    required String filename,
    int? transparentShareOfPostId,
    required int state,
    required int numComments,
    required int numSharedComments,
    required List<String> cws,
    required List<String> tags,
    required List<PostBlock>? blocks,
    required String plainTextBody,
    required Project postingProject,
    required List<Post> shareTree,
    required List<Project> relatedProjects,
    required String singlePostPageUrl,
    required bool effectiveAdultContent,
    required bool isEditor,
    required bool contributorBlockIncomingOrOutgoing,
    required bool hasAnyContributorMuted,
    required String postEditUrl,
    required bool isLiked,
    required bool canShare,
    required bool canPublish,
    required bool hasCohostPlus,
    required bool pinned,
    required bool commentsLocked,
  }) = _Post;

  factory Post.fromJson(Map<String, Object?> json) => _$PostFromJson(json);
}

List<PostBlock> _blocksFromJson(List<dynamic> json) =>
    json.map((e) => PostBlock.fromJson(e)).toList();
