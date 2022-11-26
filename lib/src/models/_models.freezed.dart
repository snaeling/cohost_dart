// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SinglePost _$SinglePostFromJson(Map<String, dynamic> json) {
  return _SinglePost.fromJson(json);
}

/// @nodoc
mixin _$SinglePost {
  Post get post => throw _privateConstructorUsedError;
  Map<String, List<Comment>> get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SinglePostCopyWith<SinglePost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SinglePostCopyWith<$Res> {
  factory $SinglePostCopyWith(
          SinglePost value, $Res Function(SinglePost) then) =
      _$SinglePostCopyWithImpl<$Res, SinglePost>;
  @useResult
  $Res call({Post post, Map<String, List<Comment>> comments});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class _$SinglePostCopyWithImpl<$Res, $Val extends SinglePost>
    implements $SinglePostCopyWith<$Res> {
  _$SinglePostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? comments = null,
  }) {
    return _then(_value.copyWith(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Comment>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SinglePostCopyWith<$Res>
    implements $SinglePostCopyWith<$Res> {
  factory _$$_SinglePostCopyWith(
          _$_SinglePost value, $Res Function(_$_SinglePost) then) =
      __$$_SinglePostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Post post, Map<String, List<Comment>> comments});

  @override
  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$$_SinglePostCopyWithImpl<$Res>
    extends _$SinglePostCopyWithImpl<$Res, _$_SinglePost>
    implements _$$_SinglePostCopyWith<$Res> {
  __$$_SinglePostCopyWithImpl(
      _$_SinglePost _value, $Res Function(_$_SinglePost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? comments = null,
  }) {
    return _then(_$_SinglePost(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Comment>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SinglePost implements _SinglePost {
  const _$_SinglePost(
      {required this.post, required final Map<String, List<Comment>> comments})
      : _comments = comments;

  factory _$_SinglePost.fromJson(Map<String, dynamic> json) =>
      _$$_SinglePostFromJson(json);

  @override
  final Post post;
  final Map<String, List<Comment>> _comments;
  @override
  Map<String, List<Comment>> get comments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_comments);
  }

  @override
  String toString() {
    return 'SinglePost(post: $post, comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SinglePost &&
            (identical(other.post, post) || other.post == post) &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, post, const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SinglePostCopyWith<_$_SinglePost> get copyWith =>
      __$$_SinglePostCopyWithImpl<_$_SinglePost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SinglePostToJson(
      this,
    );
  }
}

abstract class _SinglePost implements SinglePost {
  const factory _SinglePost(
      {required final Post post,
      required final Map<String, List<Comment>> comments}) = _$_SinglePost;

  factory _SinglePost.fromJson(Map<String, dynamic> json) =
      _$_SinglePost.fromJson;

  @override
  Post get post;
  @override
  Map<String, List<Comment>> get comments;
  @override
  @JsonKey(ignore: true)
  _$$_SinglePostCopyWith<_$_SinglePost> get copyWith =>
      throw _privateConstructorUsedError;
}

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  int get postId => throw _privateConstructorUsedError;
  String get headline => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  String get filename => throw _privateConstructorUsedError;
  int? get transparentShareOfPostId => throw _privateConstructorUsedError;
  int get state => throw _privateConstructorUsedError;
  int get numComments => throw _privateConstructorUsedError;
  int get numSharedComments => throw _privateConstructorUsedError;
  List<String> get cws => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _blocksFromJson)
  List<PostBlock>? get blocks => throw _privateConstructorUsedError;
  String get plainTextBody => throw _privateConstructorUsedError;
  Project get postingProject => throw _privateConstructorUsedError;
  List<Post> get shareTree => throw _privateConstructorUsedError;
  List<Project> get relatedProjects => throw _privateConstructorUsedError;
  String get singlePostPageUrl => throw _privateConstructorUsedError;
  bool get effectiveAdultContent => throw _privateConstructorUsedError;
  bool get isEditor => throw _privateConstructorUsedError;
  bool get contributorBlockIncomingOrOutgoing =>
      throw _privateConstructorUsedError;
  bool get hasAnyContributorMuted => throw _privateConstructorUsedError;
  String get postEditUrl => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;
  bool get canShare => throw _privateConstructorUsedError;
  bool get canPublish => throw _privateConstructorUsedError;
  bool get hasCohostPlus => throw _privateConstructorUsedError;
  bool get pinned => throw _privateConstructorUsedError;
  bool get commentsLocked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {int postId,
      String headline,
      DateTime publishedAt,
      String filename,
      int? transparentShareOfPostId,
      int state,
      int numComments,
      int numSharedComments,
      List<String> cws,
      List<String> tags,
      @JsonKey(fromJson: _blocksFromJson) List<PostBlock>? blocks,
      String plainTextBody,
      Project postingProject,
      List<Post> shareTree,
      List<Project> relatedProjects,
      String singlePostPageUrl,
      bool effectiveAdultContent,
      bool isEditor,
      bool contributorBlockIncomingOrOutgoing,
      bool hasAnyContributorMuted,
      String postEditUrl,
      bool isLiked,
      bool canShare,
      bool canPublish,
      bool hasCohostPlus,
      bool pinned,
      bool commentsLocked});

  $ProjectCopyWith<$Res> get postingProject;
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? headline = null,
    Object? publishedAt = null,
    Object? filename = null,
    Object? transparentShareOfPostId = freezed,
    Object? state = null,
    Object? numComments = null,
    Object? numSharedComments = null,
    Object? cws = null,
    Object? tags = null,
    Object? blocks = freezed,
    Object? plainTextBody = null,
    Object? postingProject = null,
    Object? shareTree = null,
    Object? relatedProjects = null,
    Object? singlePostPageUrl = null,
    Object? effectiveAdultContent = null,
    Object? isEditor = null,
    Object? contributorBlockIncomingOrOutgoing = null,
    Object? hasAnyContributorMuted = null,
    Object? postEditUrl = null,
    Object? isLiked = null,
    Object? canShare = null,
    Object? canPublish = null,
    Object? hasCohostPlus = null,
    Object? pinned = null,
    Object? commentsLocked = null,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      headline: null == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      transparentShareOfPostId: freezed == transparentShareOfPostId
          ? _value.transparentShareOfPostId
          : transparentShareOfPostId // ignore: cast_nullable_to_non_nullable
              as int?,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int,
      numComments: null == numComments
          ? _value.numComments
          : numComments // ignore: cast_nullable_to_non_nullable
              as int,
      numSharedComments: null == numSharedComments
          ? _value.numSharedComments
          : numSharedComments // ignore: cast_nullable_to_non_nullable
              as int,
      cws: null == cws
          ? _value.cws
          : cws // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blocks: freezed == blocks
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<PostBlock>?,
      plainTextBody: null == plainTextBody
          ? _value.plainTextBody
          : plainTextBody // ignore: cast_nullable_to_non_nullable
              as String,
      postingProject: null == postingProject
          ? _value.postingProject
          : postingProject // ignore: cast_nullable_to_non_nullable
              as Project,
      shareTree: null == shareTree
          ? _value.shareTree
          : shareTree // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      relatedProjects: null == relatedProjects
          ? _value.relatedProjects
          : relatedProjects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      singlePostPageUrl: null == singlePostPageUrl
          ? _value.singlePostPageUrl
          : singlePostPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      effectiveAdultContent: null == effectiveAdultContent
          ? _value.effectiveAdultContent
          : effectiveAdultContent // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditor: null == isEditor
          ? _value.isEditor
          : isEditor // ignore: cast_nullable_to_non_nullable
              as bool,
      contributorBlockIncomingOrOutgoing: null ==
              contributorBlockIncomingOrOutgoing
          ? _value.contributorBlockIncomingOrOutgoing
          : contributorBlockIncomingOrOutgoing // ignore: cast_nullable_to_non_nullable
              as bool,
      hasAnyContributorMuted: null == hasAnyContributorMuted
          ? _value.hasAnyContributorMuted
          : hasAnyContributorMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      postEditUrl: null == postEditUrl
          ? _value.postEditUrl
          : postEditUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      canShare: null == canShare
          ? _value.canShare
          : canShare // ignore: cast_nullable_to_non_nullable
              as bool,
      canPublish: null == canPublish
          ? _value.canPublish
          : canPublish // ignore: cast_nullable_to_non_nullable
              as bool,
      hasCohostPlus: null == hasCohostPlus
          ? _value.hasCohostPlus
          : hasCohostPlus // ignore: cast_nullable_to_non_nullable
              as bool,
      pinned: null == pinned
          ? _value.pinned
          : pinned // ignore: cast_nullable_to_non_nullable
              as bool,
      commentsLocked: null == commentsLocked
          ? _value.commentsLocked
          : commentsLocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res> get postingProject {
    return $ProjectCopyWith<$Res>(_value.postingProject, (value) {
      return _then(_value.copyWith(postingProject: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$_PostCopyWith(_$_Post value, $Res Function(_$_Post) then) =
      __$$_PostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int postId,
      String headline,
      DateTime publishedAt,
      String filename,
      int? transparentShareOfPostId,
      int state,
      int numComments,
      int numSharedComments,
      List<String> cws,
      List<String> tags,
      @JsonKey(fromJson: _blocksFromJson) List<PostBlock>? blocks,
      String plainTextBody,
      Project postingProject,
      List<Post> shareTree,
      List<Project> relatedProjects,
      String singlePostPageUrl,
      bool effectiveAdultContent,
      bool isEditor,
      bool contributorBlockIncomingOrOutgoing,
      bool hasAnyContributorMuted,
      String postEditUrl,
      bool isLiked,
      bool canShare,
      bool canPublish,
      bool hasCohostPlus,
      bool pinned,
      bool commentsLocked});

  @override
  $ProjectCopyWith<$Res> get postingProject;
}

/// @nodoc
class __$$_PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res, _$_Post>
    implements _$$_PostCopyWith<$Res> {
  __$$_PostCopyWithImpl(_$_Post _value, $Res Function(_$_Post) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? headline = null,
    Object? publishedAt = null,
    Object? filename = null,
    Object? transparentShareOfPostId = freezed,
    Object? state = null,
    Object? numComments = null,
    Object? numSharedComments = null,
    Object? cws = null,
    Object? tags = null,
    Object? blocks = freezed,
    Object? plainTextBody = null,
    Object? postingProject = null,
    Object? shareTree = null,
    Object? relatedProjects = null,
    Object? singlePostPageUrl = null,
    Object? effectiveAdultContent = null,
    Object? isEditor = null,
    Object? contributorBlockIncomingOrOutgoing = null,
    Object? hasAnyContributorMuted = null,
    Object? postEditUrl = null,
    Object? isLiked = null,
    Object? canShare = null,
    Object? canPublish = null,
    Object? hasCohostPlus = null,
    Object? pinned = null,
    Object? commentsLocked = null,
  }) {
    return _then(_$_Post(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      headline: null == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      transparentShareOfPostId: freezed == transparentShareOfPostId
          ? _value.transparentShareOfPostId
          : transparentShareOfPostId // ignore: cast_nullable_to_non_nullable
              as int?,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int,
      numComments: null == numComments
          ? _value.numComments
          : numComments // ignore: cast_nullable_to_non_nullable
              as int,
      numSharedComments: null == numSharedComments
          ? _value.numSharedComments
          : numSharedComments // ignore: cast_nullable_to_non_nullable
              as int,
      cws: null == cws
          ? _value._cws
          : cws // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blocks: freezed == blocks
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<PostBlock>?,
      plainTextBody: null == plainTextBody
          ? _value.plainTextBody
          : plainTextBody // ignore: cast_nullable_to_non_nullable
              as String,
      postingProject: null == postingProject
          ? _value.postingProject
          : postingProject // ignore: cast_nullable_to_non_nullable
              as Project,
      shareTree: null == shareTree
          ? _value._shareTree
          : shareTree // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      relatedProjects: null == relatedProjects
          ? _value._relatedProjects
          : relatedProjects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      singlePostPageUrl: null == singlePostPageUrl
          ? _value.singlePostPageUrl
          : singlePostPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      effectiveAdultContent: null == effectiveAdultContent
          ? _value.effectiveAdultContent
          : effectiveAdultContent // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditor: null == isEditor
          ? _value.isEditor
          : isEditor // ignore: cast_nullable_to_non_nullable
              as bool,
      contributorBlockIncomingOrOutgoing: null ==
              contributorBlockIncomingOrOutgoing
          ? _value.contributorBlockIncomingOrOutgoing
          : contributorBlockIncomingOrOutgoing // ignore: cast_nullable_to_non_nullable
              as bool,
      hasAnyContributorMuted: null == hasAnyContributorMuted
          ? _value.hasAnyContributorMuted
          : hasAnyContributorMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      postEditUrl: null == postEditUrl
          ? _value.postEditUrl
          : postEditUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      canShare: null == canShare
          ? _value.canShare
          : canShare // ignore: cast_nullable_to_non_nullable
              as bool,
      canPublish: null == canPublish
          ? _value.canPublish
          : canPublish // ignore: cast_nullable_to_non_nullable
              as bool,
      hasCohostPlus: null == hasCohostPlus
          ? _value.hasCohostPlus
          : hasCohostPlus // ignore: cast_nullable_to_non_nullable
              as bool,
      pinned: null == pinned
          ? _value.pinned
          : pinned // ignore: cast_nullable_to_non_nullable
              as bool,
      commentsLocked: null == commentsLocked
          ? _value.commentsLocked
          : commentsLocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Post implements _Post {
  const _$_Post(
      {required this.postId,
      required this.headline,
      required this.publishedAt,
      required this.filename,
      this.transparentShareOfPostId,
      required this.state,
      required this.numComments,
      required this.numSharedComments,
      required final List<String> cws,
      required final List<String> tags,
      @JsonKey(fromJson: _blocksFromJson)
          required final List<PostBlock>? blocks,
      required this.plainTextBody,
      required this.postingProject,
      required final List<Post> shareTree,
      required final List<Project> relatedProjects,
      required this.singlePostPageUrl,
      required this.effectiveAdultContent,
      required this.isEditor,
      required this.contributorBlockIncomingOrOutgoing,
      required this.hasAnyContributorMuted,
      required this.postEditUrl,
      required this.isLiked,
      required this.canShare,
      required this.canPublish,
      required this.hasCohostPlus,
      required this.pinned,
      required this.commentsLocked})
      : _cws = cws,
        _tags = tags,
        _blocks = blocks,
        _shareTree = shareTree,
        _relatedProjects = relatedProjects;

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

  @override
  final int postId;
  @override
  final String headline;
  @override
  final DateTime publishedAt;
  @override
  final String filename;
  @override
  final int? transparentShareOfPostId;
  @override
  final int state;
  @override
  final int numComments;
  @override
  final int numSharedComments;
  final List<String> _cws;
  @override
  List<String> get cws {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cws);
  }

  final List<String> _tags;
  @override
  List<String> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<PostBlock>? _blocks;
  @override
  @JsonKey(fromJson: _blocksFromJson)
  List<PostBlock>? get blocks {
    final value = _blocks;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String plainTextBody;
  @override
  final Project postingProject;
  final List<Post> _shareTree;
  @override
  List<Post> get shareTree {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shareTree);
  }

  final List<Project> _relatedProjects;
  @override
  List<Project> get relatedProjects {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedProjects);
  }

  @override
  final String singlePostPageUrl;
  @override
  final bool effectiveAdultContent;
  @override
  final bool isEditor;
  @override
  final bool contributorBlockIncomingOrOutgoing;
  @override
  final bool hasAnyContributorMuted;
  @override
  final String postEditUrl;
  @override
  final bool isLiked;
  @override
  final bool canShare;
  @override
  final bool canPublish;
  @override
  final bool hasCohostPlus;
  @override
  final bool pinned;
  @override
  final bool commentsLocked;

  @override
  String toString() {
    return 'Post(postId: $postId, headline: $headline, publishedAt: $publishedAt, filename: $filename, transparentShareOfPostId: $transparentShareOfPostId, state: $state, numComments: $numComments, numSharedComments: $numSharedComments, cws: $cws, tags: $tags, blocks: $blocks, plainTextBody: $plainTextBody, postingProject: $postingProject, shareTree: $shareTree, relatedProjects: $relatedProjects, singlePostPageUrl: $singlePostPageUrl, effectiveAdultContent: $effectiveAdultContent, isEditor: $isEditor, contributorBlockIncomingOrOutgoing: $contributorBlockIncomingOrOutgoing, hasAnyContributorMuted: $hasAnyContributorMuted, postEditUrl: $postEditUrl, isLiked: $isLiked, canShare: $canShare, canPublish: $canPublish, hasCohostPlus: $hasCohostPlus, pinned: $pinned, commentsLocked: $commentsLocked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Post &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.headline, headline) ||
                other.headline == headline) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(
                    other.transparentShareOfPostId, transparentShareOfPostId) ||
                other.transparentShareOfPostId == transparentShareOfPostId) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.numComments, numComments) ||
                other.numComments == numComments) &&
            (identical(other.numSharedComments, numSharedComments) ||
                other.numSharedComments == numSharedComments) &&
            const DeepCollectionEquality().equals(other._cws, _cws) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._blocks, _blocks) &&
            (identical(other.plainTextBody, plainTextBody) ||
                other.plainTextBody == plainTextBody) &&
            (identical(other.postingProject, postingProject) ||
                other.postingProject == postingProject) &&
            const DeepCollectionEquality()
                .equals(other._shareTree, _shareTree) &&
            const DeepCollectionEquality()
                .equals(other._relatedProjects, _relatedProjects) &&
            (identical(other.singlePostPageUrl, singlePostPageUrl) ||
                other.singlePostPageUrl == singlePostPageUrl) &&
            (identical(other.effectiveAdultContent, effectiveAdultContent) ||
                other.effectiveAdultContent == effectiveAdultContent) &&
            (identical(other.isEditor, isEditor) ||
                other.isEditor == isEditor) &&
            (identical(other.contributorBlockIncomingOrOutgoing,
                    contributorBlockIncomingOrOutgoing) ||
                other.contributorBlockIncomingOrOutgoing ==
                    contributorBlockIncomingOrOutgoing) &&
            (identical(other.hasAnyContributorMuted, hasAnyContributorMuted) ||
                other.hasAnyContributorMuted == hasAnyContributorMuted) &&
            (identical(other.postEditUrl, postEditUrl) ||
                other.postEditUrl == postEditUrl) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.canShare, canShare) ||
                other.canShare == canShare) &&
            (identical(other.canPublish, canPublish) ||
                other.canPublish == canPublish) &&
            (identical(other.hasCohostPlus, hasCohostPlus) ||
                other.hasCohostPlus == hasCohostPlus) &&
            (identical(other.pinned, pinned) || other.pinned == pinned) &&
            (identical(other.commentsLocked, commentsLocked) ||
                other.commentsLocked == commentsLocked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        postId,
        headline,
        publishedAt,
        filename,
        transparentShareOfPostId,
        state,
        numComments,
        numSharedComments,
        const DeepCollectionEquality().hash(_cws),
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(_blocks),
        plainTextBody,
        postingProject,
        const DeepCollectionEquality().hash(_shareTree),
        const DeepCollectionEquality().hash(_relatedProjects),
        singlePostPageUrl,
        effectiveAdultContent,
        isEditor,
        contributorBlockIncomingOrOutgoing,
        hasAnyContributorMuted,
        postEditUrl,
        isLiked,
        canShare,
        canPublish,
        hasCohostPlus,
        pinned,
        commentsLocked
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostCopyWith<_$_Post> get copyWith =>
      __$$_PostCopyWithImpl<_$_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostToJson(
      this,
    );
  }
}

abstract class _Post implements Post {
  const factory _Post(
      {required final int postId,
      required final String headline,
      required final DateTime publishedAt,
      required final String filename,
      final int? transparentShareOfPostId,
      required final int state,
      required final int numComments,
      required final int numSharedComments,
      required final List<String> cws,
      required final List<String> tags,
      @JsonKey(fromJson: _blocksFromJson)
          required final List<PostBlock>? blocks,
      required final String plainTextBody,
      required final Project postingProject,
      required final List<Post> shareTree,
      required final List<Project> relatedProjects,
      required final String singlePostPageUrl,
      required final bool effectiveAdultContent,
      required final bool isEditor,
      required final bool contributorBlockIncomingOrOutgoing,
      required final bool hasAnyContributorMuted,
      required final String postEditUrl,
      required final bool isLiked,
      required final bool canShare,
      required final bool canPublish,
      required final bool hasCohostPlus,
      required final bool pinned,
      required final bool commentsLocked}) = _$_Post;

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  int get postId;
  @override
  String get headline;
  @override
  DateTime get publishedAt;
  @override
  String get filename;
  @override
  int? get transparentShareOfPostId;
  @override
  int get state;
  @override
  int get numComments;
  @override
  int get numSharedComments;
  @override
  List<String> get cws;
  @override
  List<String> get tags;
  @override
  @JsonKey(fromJson: _blocksFromJson)
  List<PostBlock>? get blocks;
  @override
  String get plainTextBody;
  @override
  Project get postingProject;
  @override
  List<Post> get shareTree;
  @override
  List<Project> get relatedProjects;
  @override
  String get singlePostPageUrl;
  @override
  bool get effectiveAdultContent;
  @override
  bool get isEditor;
  @override
  bool get contributorBlockIncomingOrOutgoing;
  @override
  bool get hasAnyContributorMuted;
  @override
  String get postEditUrl;
  @override
  bool get isLiked;
  @override
  bool get canShare;
  @override
  bool get canPublish;
  @override
  bool get hasCohostPlus;
  @override
  bool get pinned;
  @override
  bool get commentsLocked;
  @override
  @JsonKey(ignore: true)
  _$$_PostCopyWith<_$_Post> get copyWith => throw _privateConstructorUsedError;
}

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
mixin _$Project {
  String get handle => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get dek => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get avatarPreviewURL => throw _privateConstructorUsedError;
  String? get headerURL => throw _privateConstructorUsedError;
  String? get headerPreviewURL => throw _privateConstructorUsedError;
  int get projectId => throw _privateConstructorUsedError;
  PrivacyType? get privacy => throw _privateConstructorUsedError;
  String? get pronouns => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  List<String>? get flags => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: AvatarShape.circle)
  AvatarShape? get avatarShape => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call(
      {String handle,
      String? displayName,
      String? dek,
      String? description,
      String? avatarUrl,
      String? avatarPreviewURL,
      String? headerURL,
      String? headerPreviewURL,
      int projectId,
      PrivacyType? privacy,
      String? pronouns,
      String? url,
      List<String>? flags,
      @JsonKey(defaultValue: AvatarShape.circle) AvatarShape? avatarShape});
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res, $Val extends Project>
    implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? handle = null,
    Object? displayName = freezed,
    Object? dek = freezed,
    Object? description = freezed,
    Object? avatarUrl = freezed,
    Object? avatarPreviewURL = freezed,
    Object? headerURL = freezed,
    Object? headerPreviewURL = freezed,
    Object? projectId = null,
    Object? privacy = freezed,
    Object? pronouns = freezed,
    Object? url = freezed,
    Object? flags = freezed,
    Object? avatarShape = freezed,
  }) {
    return _then(_value.copyWith(
      handle: null == handle
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      dek: freezed == dek
          ? _value.dek
          : dek // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarPreviewURL: freezed == avatarPreviewURL
          ? _value.avatarPreviewURL
          : avatarPreviewURL // ignore: cast_nullable_to_non_nullable
              as String?,
      headerURL: freezed == headerURL
          ? _value.headerURL
          : headerURL // ignore: cast_nullable_to_non_nullable
              as String?,
      headerPreviewURL: freezed == headerPreviewURL
          ? _value.headerPreviewURL
          : headerPreviewURL // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as PrivacyType?,
      pronouns: freezed == pronouns
          ? _value.pronouns
          : pronouns // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      flags: freezed == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      avatarShape: freezed == avatarShape
          ? _value.avatarShape
          : avatarShape // ignore: cast_nullable_to_non_nullable
              as AvatarShape?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$_ProjectCopyWith(
          _$_Project value, $Res Function(_$_Project) then) =
      __$$_ProjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String handle,
      String? displayName,
      String? dek,
      String? description,
      String? avatarUrl,
      String? avatarPreviewURL,
      String? headerURL,
      String? headerPreviewURL,
      int projectId,
      PrivacyType? privacy,
      String? pronouns,
      String? url,
      List<String>? flags,
      @JsonKey(defaultValue: AvatarShape.circle) AvatarShape? avatarShape});
}

/// @nodoc
class __$$_ProjectCopyWithImpl<$Res>
    extends _$ProjectCopyWithImpl<$Res, _$_Project>
    implements _$$_ProjectCopyWith<$Res> {
  __$$_ProjectCopyWithImpl(_$_Project _value, $Res Function(_$_Project) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? handle = null,
    Object? displayName = freezed,
    Object? dek = freezed,
    Object? description = freezed,
    Object? avatarUrl = freezed,
    Object? avatarPreviewURL = freezed,
    Object? headerURL = freezed,
    Object? headerPreviewURL = freezed,
    Object? projectId = null,
    Object? privacy = freezed,
    Object? pronouns = freezed,
    Object? url = freezed,
    Object? flags = freezed,
    Object? avatarShape = freezed,
  }) {
    return _then(_$_Project(
      handle: null == handle
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      dek: freezed == dek
          ? _value.dek
          : dek // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarPreviewURL: freezed == avatarPreviewURL
          ? _value.avatarPreviewURL
          : avatarPreviewURL // ignore: cast_nullable_to_non_nullable
              as String?,
      headerURL: freezed == headerURL
          ? _value.headerURL
          : headerURL // ignore: cast_nullable_to_non_nullable
              as String?,
      headerPreviewURL: freezed == headerPreviewURL
          ? _value.headerPreviewURL
          : headerPreviewURL // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as PrivacyType?,
      pronouns: freezed == pronouns
          ? _value.pronouns
          : pronouns // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      flags: freezed == flags
          ? _value._flags
          : flags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      avatarShape: freezed == avatarShape
          ? _value.avatarShape
          : avatarShape // ignore: cast_nullable_to_non_nullable
              as AvatarShape?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Project implements _Project {
  const _$_Project(
      {required this.handle,
      this.displayName,
      this.dek,
      this.description,
      this.avatarUrl,
      this.avatarPreviewURL,
      this.headerURL,
      this.headerPreviewURL,
      required this.projectId,
      this.privacy,
      this.pronouns,
      this.url,
      required final List<String>? flags,
      @JsonKey(defaultValue: AvatarShape.circle) this.avatarShape})
      : _flags = flags;

  factory _$_Project.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectFromJson(json);

  @override
  final String handle;
  @override
  final String? displayName;
  @override
  final String? dek;
  @override
  final String? description;
  @override
  final String? avatarUrl;
  @override
  final String? avatarPreviewURL;
  @override
  final String? headerURL;
  @override
  final String? headerPreviewURL;
  @override
  final int projectId;
  @override
  final PrivacyType? privacy;
  @override
  final String? pronouns;
  @override
  final String? url;
  final List<String>? _flags;
  @override
  List<String>? get flags {
    final value = _flags;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(defaultValue: AvatarShape.circle)
  final AvatarShape? avatarShape;

  @override
  String toString() {
    return 'Project(handle: $handle, displayName: $displayName, dek: $dek, description: $description, avatarUrl: $avatarUrl, avatarPreviewURL: $avatarPreviewURL, headerURL: $headerURL, headerPreviewURL: $headerPreviewURL, projectId: $projectId, privacy: $privacy, pronouns: $pronouns, url: $url, flags: $flags, avatarShape: $avatarShape)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Project &&
            (identical(other.handle, handle) || other.handle == handle) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.dek, dek) || other.dek == dek) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.avatarPreviewURL, avatarPreviewURL) ||
                other.avatarPreviewURL == avatarPreviewURL) &&
            (identical(other.headerURL, headerURL) ||
                other.headerURL == headerURL) &&
            (identical(other.headerPreviewURL, headerPreviewURL) ||
                other.headerPreviewURL == headerPreviewURL) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
            (identical(other.pronouns, pronouns) ||
                other.pronouns == pronouns) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._flags, _flags) &&
            (identical(other.avatarShape, avatarShape) ||
                other.avatarShape == avatarShape));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      handle,
      displayName,
      dek,
      description,
      avatarUrl,
      avatarPreviewURL,
      headerURL,
      headerPreviewURL,
      projectId,
      privacy,
      pronouns,
      url,
      const DeepCollectionEquality().hash(_flags),
      avatarShape);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectCopyWith<_$_Project> get copyWith =>
      __$$_ProjectCopyWithImpl<_$_Project>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectToJson(
      this,
    );
  }
}

abstract class _Project implements Project {
  const factory _Project(
      {required final String handle,
      final String? displayName,
      final String? dek,
      final String? description,
      final String? avatarUrl,
      final String? avatarPreviewURL,
      final String? headerURL,
      final String? headerPreviewURL,
      required final int projectId,
      final PrivacyType? privacy,
      final String? pronouns,
      final String? url,
      required final List<String>? flags,
      @JsonKey(defaultValue: AvatarShape.circle)
          final AvatarShape? avatarShape}) = _$_Project;

  factory _Project.fromJson(Map<String, dynamic> json) = _$_Project.fromJson;

  @override
  String get handle;
  @override
  String? get displayName;
  @override
  String? get dek;
  @override
  String? get description;
  @override
  String? get avatarUrl;
  @override
  String? get avatarPreviewURL;
  @override
  String? get headerURL;
  @override
  String? get headerPreviewURL;
  @override
  int get projectId;
  @override
  PrivacyType? get privacy;
  @override
  String? get pronouns;
  @override
  String? get url;
  @override
  List<String>? get flags;
  @override
  @JsonKey(defaultValue: AvatarShape.circle)
  AvatarShape? get avatarShape;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectCopyWith<_$_Project> get copyWith =>
      throw _privateConstructorUsedError;
}

FollowingState _$FollowingStateFromJson(Map<String, dynamic> json) {
  return _FollowingState.fromJson(json);
}

/// @nodoc
mixin _$FollowingState {
  int get projectToReader => throw _privateConstructorUsedError;
  int get readerToProject => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowingStateCopyWith<FollowingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowingStateCopyWith<$Res> {
  factory $FollowingStateCopyWith(
          FollowingState value, $Res Function(FollowingState) then) =
      _$FollowingStateCopyWithImpl<$Res, FollowingState>;
  @useResult
  $Res call({int projectToReader, int readerToProject});
}

/// @nodoc
class _$FollowingStateCopyWithImpl<$Res, $Val extends FollowingState>
    implements $FollowingStateCopyWith<$Res> {
  _$FollowingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectToReader = null,
    Object? readerToProject = null,
  }) {
    return _then(_value.copyWith(
      projectToReader: null == projectToReader
          ? _value.projectToReader
          : projectToReader // ignore: cast_nullable_to_non_nullable
              as int,
      readerToProject: null == readerToProject
          ? _value.readerToProject
          : readerToProject // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FollowingStateCopyWith<$Res>
    implements $FollowingStateCopyWith<$Res> {
  factory _$$_FollowingStateCopyWith(
          _$_FollowingState value, $Res Function(_$_FollowingState) then) =
      __$$_FollowingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int projectToReader, int readerToProject});
}

/// @nodoc
class __$$_FollowingStateCopyWithImpl<$Res>
    extends _$FollowingStateCopyWithImpl<$Res, _$_FollowingState>
    implements _$$_FollowingStateCopyWith<$Res> {
  __$$_FollowingStateCopyWithImpl(
      _$_FollowingState _value, $Res Function(_$_FollowingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectToReader = null,
    Object? readerToProject = null,
  }) {
    return _then(_$_FollowingState(
      projectToReader: null == projectToReader
          ? _value.projectToReader
          : projectToReader // ignore: cast_nullable_to_non_nullable
              as int,
      readerToProject: null == readerToProject
          ? _value.readerToProject
          : readerToProject // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FollowingState implements _FollowingState {
  const _$_FollowingState(
      {required this.projectToReader, required this.readerToProject});

  factory _$_FollowingState.fromJson(Map<String, dynamic> json) =>
      _$$_FollowingStateFromJson(json);

  @override
  final int projectToReader;
  @override
  final int readerToProject;

  @override
  String toString() {
    return 'FollowingState(projectToReader: $projectToReader, readerToProject: $readerToProject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FollowingState &&
            (identical(other.projectToReader, projectToReader) ||
                other.projectToReader == projectToReader) &&
            (identical(other.readerToProject, readerToProject) ||
                other.readerToProject == readerToProject));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, projectToReader, readerToProject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FollowingStateCopyWith<_$_FollowingState> get copyWith =>
      __$$_FollowingStateCopyWithImpl<_$_FollowingState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FollowingStateToJson(
      this,
    );
  }
}

abstract class _FollowingState implements FollowingState {
  const factory _FollowingState(
      {required final int projectToReader,
      required final int readerToProject}) = _$_FollowingState;

  factory _FollowingState.fromJson(Map<String, dynamic> json) =
      _$_FollowingState.fromJson;

  @override
  int get projectToReader;
  @override
  int get readerToProject;
  @override
  @JsonKey(ignore: true)
  _$$_FollowingStateCopyWith<_$_FollowingState> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  bool get loggedIn => throw _privateConstructorUsedError;
  String? get projectHandle => throw _privateConstructorUsedError;
  int? get projectId => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  bool? get modMode => throw _privateConstructorUsedError;
  bool? get activated => throw _privateConstructorUsedError;
  bool? get readOnly => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {bool loggedIn,
      String? projectHandle,
      int? projectId,
      int? userId,
      String? email,
      bool? modMode,
      bool? activated,
      bool? readOnly});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loggedIn = null,
    Object? projectHandle = freezed,
    Object? projectId = freezed,
    Object? userId = freezed,
    Object? email = freezed,
    Object? modMode = freezed,
    Object? activated = freezed,
    Object? readOnly = freezed,
  }) {
    return _then(_value.copyWith(
      loggedIn: null == loggedIn
          ? _value.loggedIn
          : loggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      projectHandle: freezed == projectHandle
          ? _value.projectHandle
          : projectHandle // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      modMode: freezed == modMode
          ? _value.modMode
          : modMode // ignore: cast_nullable_to_non_nullable
              as bool?,
      activated: freezed == activated
          ? _value.activated
          : activated // ignore: cast_nullable_to_non_nullable
              as bool?,
      readOnly: freezed == readOnly
          ? _value.readOnly
          : readOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loggedIn,
      String? projectHandle,
      int? projectId,
      int? userId,
      String? email,
      bool? modMode,
      bool? activated,
      bool? readOnly});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loggedIn = null,
    Object? projectHandle = freezed,
    Object? projectId = freezed,
    Object? userId = freezed,
    Object? email = freezed,
    Object? modMode = freezed,
    Object? activated = freezed,
    Object? readOnly = freezed,
  }) {
    return _then(_$_User(
      loggedIn: null == loggedIn
          ? _value.loggedIn
          : loggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      projectHandle: freezed == projectHandle
          ? _value.projectHandle
          : projectHandle // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      modMode: freezed == modMode
          ? _value.modMode
          : modMode // ignore: cast_nullable_to_non_nullable
              as bool?,
      activated: freezed == activated
          ? _value.activated
          : activated // ignore: cast_nullable_to_non_nullable
              as bool?,
      readOnly: freezed == readOnly
          ? _value.readOnly
          : readOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {required this.loggedIn,
      this.projectHandle,
      this.projectId,
      this.userId,
      this.email,
      this.modMode,
      this.activated,
      this.readOnly});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final bool loggedIn;
  @override
  final String? projectHandle;
  @override
  final int? projectId;
  @override
  final int? userId;
  @override
  final String? email;
  @override
  final bool? modMode;
  @override
  final bool? activated;
  @override
  final bool? readOnly;

  @override
  String toString() {
    return 'User(loggedIn: $loggedIn, projectHandle: $projectHandle, projectId: $projectId, userId: $userId, email: $email, modMode: $modMode, activated: $activated, readOnly: $readOnly)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.loggedIn, loggedIn) ||
                other.loggedIn == loggedIn) &&
            (identical(other.projectHandle, projectHandle) ||
                other.projectHandle == projectHandle) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.modMode, modMode) || other.modMode == modMode) &&
            (identical(other.activated, activated) ||
                other.activated == activated) &&
            (identical(other.readOnly, readOnly) ||
                other.readOnly == readOnly));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, loggedIn, projectHandle,
      projectId, userId, email, modMode, activated, readOnly);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final bool loggedIn,
      final String? projectHandle,
      final int? projectId,
      final int? userId,
      final String? email,
      final bool? modMode,
      final bool? activated,
      final bool? readOnly}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  bool get loggedIn;
  @override
  String? get projectHandle;
  @override
  int? get projectId;
  @override
  int? get userId;
  @override
  String? get email;
  @override
  bool? get modMode;
  @override
  bool? get activated;
  @override
  bool? get readOnly;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  CommentData get comment => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
  bool get canInteract => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
  bool get canEdit => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
  bool get canHide => throw _privateConstructorUsedError;
  Project get poster => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call(
      {CommentData comment,
      @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
          bool canInteract,
      @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
          bool canEdit,
      @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
          bool canHide,
      Project poster});

  $CommentDataCopyWith<$Res> get comment;
  $ProjectCopyWith<$Res> get poster;
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
    Object? canInteract = null,
    Object? canEdit = null,
    Object? canHide = null,
    Object? poster = null,
  }) {
    return _then(_value.copyWith(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as CommentData,
      canInteract: null == canInteract
          ? _value.canInteract
          : canInteract // ignore: cast_nullable_to_non_nullable
              as bool,
      canEdit: null == canEdit
          ? _value.canEdit
          : canEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      canHide: null == canHide
          ? _value.canHide
          : canHide // ignore: cast_nullable_to_non_nullable
              as bool,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as Project,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentDataCopyWith<$Res> get comment {
    return $CommentDataCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res> get poster {
    return $ProjectCopyWith<$Res>(_value.poster, (value) {
      return _then(_value.copyWith(poster: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$_CommentCopyWith(
          _$_Comment value, $Res Function(_$_Comment) then) =
      __$$_CommentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CommentData comment,
      @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
          bool canInteract,
      @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
          bool canEdit,
      @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
          bool canHide,
      Project poster});

  @override
  $CommentDataCopyWith<$Res> get comment;
  @override
  $ProjectCopyWith<$Res> get poster;
}

/// @nodoc
class __$$_CommentCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$_Comment>
    implements _$$_CommentCopyWith<$Res> {
  __$$_CommentCopyWithImpl(_$_Comment _value, $Res Function(_$_Comment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
    Object? canInteract = null,
    Object? canEdit = null,
    Object? canHide = null,
    Object? poster = null,
  }) {
    return _then(_$_Comment(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as CommentData,
      canInteract: null == canInteract
          ? _value.canInteract
          : canInteract // ignore: cast_nullable_to_non_nullable
              as bool,
      canEdit: null == canEdit
          ? _value.canEdit
          : canEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      canHide: null == canHide
          ? _value.canHide
          : canHide // ignore: cast_nullable_to_non_nullable
              as bool,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as Project,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Comment implements _Comment {
  const _$_Comment(
      {required this.comment,
      @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
          required this.canInteract,
      @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
          required this.canEdit,
      @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
          required this.canHide,
      required this.poster});

  factory _$_Comment.fromJson(Map<String, dynamic> json) =>
      _$$_CommentFromJson(json);

  @override
  final CommentData comment;
  @override
  @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
  final bool canInteract;
  @override
  @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
  final bool canEdit;
  @override
  @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
  final bool canHide;
  @override
  final Project poster;

  @override
  String toString() {
    return 'Comment(comment: $comment, canInteract: $canInteract, canEdit: $canEdit, canHide: $canHide, poster: $poster)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Comment &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.canInteract, canInteract) ||
                other.canInteract == canInteract) &&
            (identical(other.canEdit, canEdit) || other.canEdit == canEdit) &&
            (identical(other.canHide, canHide) || other.canHide == canHide) &&
            (identical(other.poster, poster) || other.poster == poster));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, comment, canInteract, canEdit, canHide, poster);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      __$$_CommentCopyWithImpl<_$_Comment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentToJson(
      this,
    );
  }
}

abstract class _Comment implements Comment {
  const factory _Comment(
      {required final CommentData comment,
      @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
          required final bool canInteract,
      @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
          required final bool canEdit,
      @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
          required final bool canHide,
      required final Project poster}) = _$_Comment;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$_Comment.fromJson;

  @override
  CommentData get comment;
  @override
  @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
  bool get canInteract;
  @override
  @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
  bool get canEdit;
  @override
  @JsonKey(fromJson: _allowedFromJson, defaultValue: false)
  bool get canHide;
  @override
  Project get poster;
  @override
  @JsonKey(ignore: true)
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentData _$CommentDataFromJson(Map<String, dynamic> json) {
  return _CommentData.fromJson(json);
}

/// @nodoc
mixin _$CommentData {
  String get commentId => throw _privateConstructorUsedError;
  DateTime get postedAtISO => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  List<Comment>? get children => throw _privateConstructorUsedError;
  int get postId => throw _privateConstructorUsedError;
  String? get inReplyTo => throw _privateConstructorUsedError;
  bool get hasCohostPlus => throw _privateConstructorUsedError;
  bool get hidden => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentDataCopyWith<CommentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentDataCopyWith<$Res> {
  factory $CommentDataCopyWith(
          CommentData value, $Res Function(CommentData) then) =
      _$CommentDataCopyWithImpl<$Res, CommentData>;
  @useResult
  $Res call(
      {String commentId,
      DateTime postedAtISO,
      bool deleted,
      String body,
      List<Comment>? children,
      int postId,
      String? inReplyTo,
      bool hasCohostPlus,
      bool hidden});
}

/// @nodoc
class _$CommentDataCopyWithImpl<$Res, $Val extends CommentData>
    implements $CommentDataCopyWith<$Res> {
  _$CommentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? postedAtISO = null,
    Object? deleted = null,
    Object? body = null,
    Object? children = freezed,
    Object? postId = null,
    Object? inReplyTo = freezed,
    Object? hasCohostPlus = null,
    Object? hidden = null,
  }) {
    return _then(_value.copyWith(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
      postedAtISO: null == postedAtISO
          ? _value.postedAtISO
          : postedAtISO // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      inReplyTo: freezed == inReplyTo
          ? _value.inReplyTo
          : inReplyTo // ignore: cast_nullable_to_non_nullable
              as String?,
      hasCohostPlus: null == hasCohostPlus
          ? _value.hasCohostPlus
          : hasCohostPlus // ignore: cast_nullable_to_non_nullable
              as bool,
      hidden: null == hidden
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentDataCopyWith<$Res>
    implements $CommentDataCopyWith<$Res> {
  factory _$$_CommentDataCopyWith(
          _$_CommentData value, $Res Function(_$_CommentData) then) =
      __$$_CommentDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String commentId,
      DateTime postedAtISO,
      bool deleted,
      String body,
      List<Comment>? children,
      int postId,
      String? inReplyTo,
      bool hasCohostPlus,
      bool hidden});
}

/// @nodoc
class __$$_CommentDataCopyWithImpl<$Res>
    extends _$CommentDataCopyWithImpl<$Res, _$_CommentData>
    implements _$$_CommentDataCopyWith<$Res> {
  __$$_CommentDataCopyWithImpl(
      _$_CommentData _value, $Res Function(_$_CommentData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? postedAtISO = null,
    Object? deleted = null,
    Object? body = null,
    Object? children = freezed,
    Object? postId = null,
    Object? inReplyTo = freezed,
    Object? hasCohostPlus = null,
    Object? hidden = null,
  }) {
    return _then(_$_CommentData(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
      postedAtISO: null == postedAtISO
          ? _value.postedAtISO
          : postedAtISO // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      children: freezed == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      inReplyTo: freezed == inReplyTo
          ? _value.inReplyTo
          : inReplyTo // ignore: cast_nullable_to_non_nullable
              as String?,
      hasCohostPlus: null == hasCohostPlus
          ? _value.hasCohostPlus
          : hasCohostPlus // ignore: cast_nullable_to_non_nullable
              as bool,
      hidden: null == hidden
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentData implements _CommentData {
  const _$_CommentData(
      {required this.commentId,
      required this.postedAtISO,
      required this.deleted,
      required this.body,
      required final List<Comment>? children,
      required this.postId,
      this.inReplyTo,
      required this.hasCohostPlus,
      required this.hidden})
      : _children = children;

  factory _$_CommentData.fromJson(Map<String, dynamic> json) =>
      _$$_CommentDataFromJson(json);

  @override
  final String commentId;
  @override
  final DateTime postedAtISO;
  @override
  final bool deleted;
  @override
  final String body;
  final List<Comment>? _children;
  @override
  List<Comment>? get children {
    final value = _children;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int postId;
  @override
  final String? inReplyTo;
  @override
  final bool hasCohostPlus;
  @override
  final bool hidden;

  @override
  String toString() {
    return 'CommentData(commentId: $commentId, postedAtISO: $postedAtISO, deleted: $deleted, body: $body, children: $children, postId: $postId, inReplyTo: $inReplyTo, hasCohostPlus: $hasCohostPlus, hidden: $hidden)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentData &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.postedAtISO, postedAtISO) ||
                other.postedAtISO == postedAtISO) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.body, body) || other.body == body) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.inReplyTo, inReplyTo) ||
                other.inReplyTo == inReplyTo) &&
            (identical(other.hasCohostPlus, hasCohostPlus) ||
                other.hasCohostPlus == hasCohostPlus) &&
            (identical(other.hidden, hidden) || other.hidden == hidden));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      commentId,
      postedAtISO,
      deleted,
      body,
      const DeepCollectionEquality().hash(_children),
      postId,
      inReplyTo,
      hasCohostPlus,
      hidden);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentDataCopyWith<_$_CommentData> get copyWith =>
      __$$_CommentDataCopyWithImpl<_$_CommentData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentDataToJson(
      this,
    );
  }
}

abstract class _CommentData implements CommentData {
  const factory _CommentData(
      {required final String commentId,
      required final DateTime postedAtISO,
      required final bool deleted,
      required final String body,
      required final List<Comment>? children,
      required final int postId,
      final String? inReplyTo,
      required final bool hasCohostPlus,
      required final bool hidden}) = _$_CommentData;

  factory _CommentData.fromJson(Map<String, dynamic> json) =
      _$_CommentData.fromJson;

  @override
  String get commentId;
  @override
  DateTime get postedAtISO;
  @override
  bool get deleted;
  @override
  String get body;
  @override
  List<Comment>? get children;
  @override
  int get postId;
  @override
  String? get inReplyTo;
  @override
  bool get hasCohostPlus;
  @override
  bool get hidden;
  @override
  @JsonKey(ignore: true)
  _$$_CommentDataCopyWith<_$_CommentData> get copyWith =>
      throw _privateConstructorUsedError;
}

Tag _$TagFromJson(Map<String, dynamic> json) {
  return _Tag.fromJson(json);
}

/// @nodoc
mixin _$Tag {
  @JsonKey(name: 'content')
  String get tag => throw _privateConstructorUsedError;
  double get similarity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagCopyWith<Tag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagCopyWith<$Res> {
  factory $TagCopyWith(Tag value, $Res Function(Tag) then) =
      _$TagCopyWithImpl<$Res, Tag>;
  @useResult
  $Res call({@JsonKey(name: 'content') String tag, double similarity});
}

/// @nodoc
class _$TagCopyWithImpl<$Res, $Val extends Tag> implements $TagCopyWith<$Res> {
  _$TagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? similarity = null,
  }) {
    return _then(_value.copyWith(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      similarity: null == similarity
          ? _value.similarity
          : similarity // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TagCopyWith<$Res> implements $TagCopyWith<$Res> {
  factory _$$_TagCopyWith(_$_Tag value, $Res Function(_$_Tag) then) =
      __$$_TagCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'content') String tag, double similarity});
}

/// @nodoc
class __$$_TagCopyWithImpl<$Res> extends _$TagCopyWithImpl<$Res, _$_Tag>
    implements _$$_TagCopyWith<$Res> {
  __$$_TagCopyWithImpl(_$_Tag _value, $Res Function(_$_Tag) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? similarity = null,
  }) {
    return _then(_$_Tag(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      similarity: null == similarity
          ? _value.similarity
          : similarity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tag implements _Tag {
  const _$_Tag(
      {@JsonKey(name: 'content') required this.tag, required this.similarity});

  factory _$_Tag.fromJson(Map<String, dynamic> json) => _$$_TagFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String tag;
  @override
  final double similarity;

  @override
  String toString() {
    return 'Tag(tag: $tag, similarity: $similarity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tag &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.similarity, similarity) ||
                other.similarity == similarity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tag, similarity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TagCopyWith<_$_Tag> get copyWith =>
      __$$_TagCopyWithImpl<_$_Tag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TagToJson(
      this,
    );
  }
}

abstract class _Tag implements Tag {
  const factory _Tag(
      {@JsonKey(name: 'content') required final String tag,
      required final double similarity}) = _$_Tag;

  factory _Tag.fromJson(Map<String, dynamic> json) = _$_Tag.fromJson;

  @override
  @JsonKey(name: 'content')
  String get tag;
  @override
  double get similarity;
  @override
  @JsonKey(ignore: true)
  _$$_TagCopyWith<_$_Tag> get copyWith => throw _privateConstructorUsedError;
}

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) {
  return _SearchResult.fromJson(json);
}

/// @nodoc
mixin _$SearchResult {
  @JsonKey(name: "result")
  List<Tag> get tags => throw _privateConstructorUsedError;
  List<Project> get projects => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultCopyWith<SearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultCopyWith<$Res> {
  factory $SearchResultCopyWith(
          SearchResult value, $Res Function(SearchResult) then) =
      _$SearchResultCopyWithImpl<$Res, SearchResult>;
  @useResult
  $Res call({@JsonKey(name: "result") List<Tag> tags, List<Project> projects});
}

/// @nodoc
class _$SearchResultCopyWithImpl<$Res, $Val extends SearchResult>
    implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
    Object? projects = null,
  }) {
    return _then(_value.copyWith(
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      projects: null == projects
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchResultCopyWith<$Res>
    implements $SearchResultCopyWith<$Res> {
  factory _$$_SearchResultCopyWith(
          _$_SearchResult value, $Res Function(_$_SearchResult) then) =
      __$$_SearchResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "result") List<Tag> tags, List<Project> projects});
}

/// @nodoc
class __$$_SearchResultCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res, _$_SearchResult>
    implements _$$_SearchResultCopyWith<$Res> {
  __$$_SearchResultCopyWithImpl(
      _$_SearchResult _value, $Res Function(_$_SearchResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
    Object? projects = null,
  }) {
    return _then(_$_SearchResult(
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchResult implements _SearchResult {
  const _$_SearchResult(
      {@JsonKey(name: "result") required final List<Tag> tags,
      required final List<Project> projects})
      : _tags = tags,
        _projects = projects;

  factory _$_SearchResult.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResultFromJson(json);

  final List<Tag> _tags;
  @override
  @JsonKey(name: "result")
  List<Tag> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<Project> _projects;
  @override
  List<Project> get projects {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  String toString() {
    return 'SearchResult(tags: $tags, projects: $projects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResult &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._projects, _projects));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_projects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchResultCopyWith<_$_SearchResult> get copyWith =>
      __$$_SearchResultCopyWithImpl<_$_SearchResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchResultToJson(
      this,
    );
  }
}

abstract class _SearchResult implements SearchResult {
  const factory _SearchResult(
      {@JsonKey(name: "result") required final List<Tag> tags,
      required final List<Project> projects}) = _$_SearchResult;

  factory _SearchResult.fromJson(Map<String, dynamic> json) =
      _$_SearchResult.fromJson;

  @override
  @JsonKey(name: "result")
  List<Tag> get tags;
  @override
  List<Project> get projects;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResultCopyWith<_$_SearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}
