// GENERATED CODE - DO NOT MODIFY BY HAND

part of '_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SinglePost _$$_SinglePostFromJson(Map<String, dynamic> json) =>
    _$_SinglePost(
      post: Post.fromJson(json['post'] as Map<String, dynamic>),
      comments: (json['comments'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => Comment.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );

Map<String, dynamic> _$$_SinglePostToJson(_$_SinglePost instance) =>
    <String, dynamic>{
      'post': instance.post,
      'comments': instance.comments,
    };

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      postId: json['postId'] as int,
      headline: json['headline'] as String,
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      filename: json['filename'] as String,
      transparentShareOfPostId: json['transparentShareOfPostId'] as int?,
      state: json['state'] as int,
      numComments: json['numComments'] as int,
      numSharedComments: json['numSharedComments'] as int,
      cws: (json['cws'] as List<dynamic>).map((e) => e as String).toList(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      blocks: (json['blocks'] as List<dynamic>?)
          ?.map((e) => PostBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
      plainTextBody: json['plainTextBody'] as String,
      postingProject:
          Project.fromJson(json['postingProject'] as Map<String, dynamic>),
      shareTree: (json['shareTree'] as List<dynamic>)
          .map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
      relatedProjects: (json['relatedProjects'] as List<dynamic>)
          .map((e) => Project.fromJson(e as Map<String, dynamic>))
          .toList(),
      singlePostPageUrl: json['singlePostPageUrl'] as String,
      effectiveAdultContent: json['effectiveAdultContent'] as bool,
      isEditor: json['isEditor'] as bool,
      contributorBlockIncomingOrOutgoing:
          json['contributorBlockIncomingOrOutgoing'] as bool,
      hasAnyContributorMuted: json['hasAnyContributorMuted'] as bool,
      postEditUrl: json['postEditUrl'] as String,
      isLiked: json['isLiked'] as bool,
      canShare: json['canShare'] as bool,
      canPublish: json['canPublish'] as bool,
      hasCohostPlus: json['hasCohostPlus'] as bool,
      pinned: json['pinned'] as bool,
      commentsLocked: json['commentsLocked'] as bool,
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'postId': instance.postId,
      'headline': instance.headline,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'filename': instance.filename,
      'transparentShareOfPostId': instance.transparentShareOfPostId,
      'state': instance.state,
      'numComments': instance.numComments,
      'numSharedComments': instance.numSharedComments,
      'cws': instance.cws,
      'tags': instance.tags,
      'blocks': instance.blocks,
      'plainTextBody': instance.plainTextBody,
      'postingProject': instance.postingProject,
      'shareTree': instance.shareTree,
      'relatedProjects': instance.relatedProjects,
      'singlePostPageUrl': instance.singlePostPageUrl,
      'effectiveAdultContent': instance.effectiveAdultContent,
      'isEditor': instance.isEditor,
      'contributorBlockIncomingOrOutgoing':
          instance.contributorBlockIncomingOrOutgoing,
      'hasAnyContributorMuted': instance.hasAnyContributorMuted,
      'postEditUrl': instance.postEditUrl,
      'isLiked': instance.isLiked,
      'canShare': instance.canShare,
      'canPublish': instance.canPublish,
      'hasCohostPlus': instance.hasCohostPlus,
      'pinned': instance.pinned,
      'commentsLocked': instance.commentsLocked,
    };

_$_PostBlock _$$_PostBlockFromJson(Map<String, dynamic> json) => _$_PostBlock(
      type: $enumDecode(_$PostBlockTypeEnumMap, json['type']),
      markdown: json['markdown'] == null
          ? null
          : MarkdownBlock.fromJson(json['markdown'] as Map<String, dynamic>),
      attachment: json['attachment'] == null
          ? null
          : AttachmentBlock.fromJson(
              json['attachment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PostBlockToJson(_$_PostBlock instance) =>
    <String, dynamic>{
      'type': _$PostBlockTypeEnumMap[instance.type]!,
      'markdown': instance.markdown,
      'attachment': instance.attachment,
    };

const _$PostBlockTypeEnumMap = {
  PostBlockType.markdown: 'markdown',
  PostBlockType.attachment: 'attachment',
};

_$_MarkdownBlock _$$_MarkdownBlockFromJson(Map<String, dynamic> json) =>
    _$_MarkdownBlock(
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$_MarkdownBlockToJson(_$_MarkdownBlock instance) =>
    <String, dynamic>{
      'content': instance.content,
    };

_$_AttachmentBlock _$$_AttachmentBlockFromJson(Map<String, dynamic> json) =>
    _$_AttachmentBlock(
      fileURL: json['fileURL'] as String?,
      previewURL: json['previewURL'] as String?,
      attachmentId: json['attachmentId'] as String?,
      altText: json['altText'] as String?,
    );

Map<String, dynamic> _$$_AttachmentBlockToJson(_$_AttachmentBlock instance) =>
    <String, dynamic>{
      'fileURL': instance.fileURL,
      'previewURL': instance.previewURL,
      'attachmentId': instance.attachmentId,
      'altText': instance.altText,
    };

_$_Project _$$_ProjectFromJson(Map<String, dynamic> json) => _$_Project(
      handle: json['handle'] as String,
      displayName: json['displayName'] as String?,
      dek: json['dek'] as String?,
      description: json['description'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      avatarPreviewURL: json['avatarPreviewURL'] as String?,
      headerURL: json['headerURL'] as String?,
      headerPreviewURL: json['headerPreviewURL'] as String?,
      projectId: json['projectId'] as int,
      privacy: $enumDecodeNullable(_$PrivacyTypeEnumMap, json['privacy']),
      pronouns: json['pronouns'] as String?,
      url: json['url'] as String?,
      flags:
          (json['flags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      avatarShape:
          $enumDecodeNullable(_$AvatarShapeEnumMap, json['avatarShape']) ??
              AvatarShape.circle,
    );

Map<String, dynamic> _$$_ProjectToJson(_$_Project instance) =>
    <String, dynamic>{
      'handle': instance.handle,
      'displayName': instance.displayName,
      'dek': instance.dek,
      'description': instance.description,
      'avatarUrl': instance.avatarUrl,
      'avatarPreviewURL': instance.avatarPreviewURL,
      'headerURL': instance.headerURL,
      'headerPreviewURL': instance.headerPreviewURL,
      'projectId': instance.projectId,
      'privacy': _$PrivacyTypeEnumMap[instance.privacy],
      'pronouns': instance.pronouns,
      'url': instance.url,
      'flags': instance.flags,
      'avatarShape': _$AvatarShapeEnumMap[instance.avatarShape],
    };

const _$PrivacyTypeEnumMap = {
  PrivacyType.private: 'private',
  PrivacyType.public: 'public',
};

const _$AvatarShapeEnumMap = {
  AvatarShape.circle: 'circle',
  AvatarShape.egg: 'egg',
  AvatarShape.square: 'square',
  AvatarShape.squircle: 'squircle',
  AvatarShape.roundrect: 'roundrect',
  AvatarShape.capsuleBig: 'capsule-big',
  AvatarShape.capsuleSmall: 'capsule-small',
};

_$_FollowingState _$$_FollowingStateFromJson(Map<String, dynamic> json) =>
    _$_FollowingState(
      projectToReader: json['projectToReader'] as int,
      readerToProject: json['readerToProject'] as int,
    );

Map<String, dynamic> _$$_FollowingStateToJson(_$_FollowingState instance) =>
    <String, dynamic>{
      'projectToReader': instance.projectToReader,
      'readerToProject': instance.readerToProject,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      loggedIn: json['loggedIn'] as bool,
      projectHandle: json['projectHandle'] as String?,
      projectId: json['projectId'] as int?,
      userId: json['userId'] as int?,
      email: json['email'] as String?,
      modMode: json['modMode'] as bool?,
      activated: json['activated'] as bool?,
      readOnly: json['readOnly'] as bool?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'loggedIn': instance.loggedIn,
      'projectHandle': instance.projectHandle,
      'projectId': instance.projectId,
      'userId': instance.userId,
      'email': instance.email,
      'modMode': instance.modMode,
      'activated': instance.activated,
      'readOnly': instance.readOnly,
    };

_$_Comment _$$_CommentFromJson(Map<String, dynamic> json) => _$_Comment(
      comment: CommentData.fromJson(json['comment'] as Map<String, dynamic>),
      canInteract: json['canInteract'] == null
          ? false
          : _allowedFromJson(json['canInteract'] as String),
      canEdit: json['canEdit'] == null
          ? false
          : _allowedFromJson(json['canEdit'] as String),
      canHide: json['canHide'] == null
          ? false
          : _allowedFromJson(json['canHide'] as String),
      poster: Project.fromJson(json['poster'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CommentToJson(_$_Comment instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'canInteract': instance.canInteract,
      'canEdit': instance.canEdit,
      'canHide': instance.canHide,
      'poster': instance.poster,
    };

_$_CommentData _$$_CommentDataFromJson(Map<String, dynamic> json) =>
    _$_CommentData(
      commentId: json['commentId'] as String,
      postedAtISO: DateTime.parse(json['postedAtISO'] as String),
      deleted: json['deleted'] as bool,
      body: json['body'] as String,
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
      postId: json['postId'] as int,
      inReplyTo: json['inReplyTo'] as String?,
      hasCohostPlus: json['hasCohostPlus'] as bool,
      hidden: json['hidden'] as bool,
    );

Map<String, dynamic> _$$_CommentDataToJson(_$_CommentData instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'postedAtISO': instance.postedAtISO.toIso8601String(),
      'deleted': instance.deleted,
      'body': instance.body,
      'children': instance.children,
      'postId': instance.postId,
      'inReplyTo': instance.inReplyTo,
      'hasCohostPlus': instance.hasCohostPlus,
      'hidden': instance.hidden,
    };

_$_Tag _$$_TagFromJson(Map<String, dynamic> json) => _$_Tag(
      tag: json['content'] as String,
      similarity: (json['similarity'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TagToJson(_$_Tag instance) => <String, dynamic>{
      'content': instance.tag,
      'similarity': instance.similarity,
    };

_$_SearchResult _$$_SearchResultFromJson(Map<String, dynamic> json) =>
    _$_SearchResult(
      tags: (json['result'] as List<dynamic>)
          .map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      projects: (json['projects'] as List<dynamic>)
          .map((e) => Project.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchResultToJson(_$_SearchResult instance) =>
    <String, dynamic>{
      'result': instance.tags,
      'projects': instance.projects,
    };

_$_UserState _$$_UserStateFromJson(Map<String, dynamic> json) => _$_UserState(
      editedProjects: (json['editedProjects'] as List<dynamic>?)
              ?.map((e) => Project.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Project>[],
      numNotifcation: json['numNotifcation'] as int? ?? 0,
      numFollowRequests: json['numFollowRequests'] as int? ?? 0,
      bookmarkedTags: (json['bookmarkedTags'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      hasActiveSubscription: json['hasActiveSubscription'] as bool? ?? false,
      displayPrefs: json['displayPrefs'] == null
          ? const UserDisplayPrefs()
          : UserDisplayPrefs.fromJson(
              json['displayPrefs'] as Map<String, dynamic>),
      user: json['user'] == null
          ? const User(loggedIn: false)
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserStateToJson(_$_UserState instance) =>
    <String, dynamic>{
      'editedProjects': instance.editedProjects,
      'numNotifcation': instance.numNotifcation,
      'numFollowRequests': instance.numFollowRequests,
      'bookmarkedTags': instance.bookmarkedTags,
      'hasActiveSubscription': instance.hasActiveSubscription,
      'displayPrefs': instance.displayPrefs,
      'user': instance.user,
    };

_$_UserDisplayPrefs _$$_UserDisplayPrefsFromJson(Map<String, dynamic> json) =>
    _$_UserDisplayPrefs(
      isAdult: json['isAdult'] as bool? ?? false,
      explicitlyCollapseAdultContent:
          json['explicitlyCollapseAdultContent'] as bool? ?? true,
      collapseLongThreads: json['collapseLongThreads'] as bool? ?? false,
      gifsStartPaused: json['gifsStartPaused'] as bool? ?? false,
      pauseProfileGifs: json['pauseProfileGifs'] as bool? ?? false,
      disableEmbeds: json['disableEmbeds'] as bool? ?? false,
      externalLinksInNewTab: json['externalLinksInNewTab'] as bool? ?? true,
      enableNotificationCount: json['enableNotificationCount'] as bool? ?? true,
      autoexpandCWs: (json['autoexpandCWs'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      suggestedFollowsDismissed:
          json['suggestedFollowsDismissed'] as bool? ?? false,
      enableMobileQuickShare: json['enableMobileQuickShare'] as bool? ?? true,
    );

Map<String, dynamic> _$$_UserDisplayPrefsToJson(_$_UserDisplayPrefs instance) =>
    <String, dynamic>{
      'isAdult': instance.isAdult,
      'explicitlyCollapseAdultContent': instance.explicitlyCollapseAdultContent,
      'collapseLongThreads': instance.collapseLongThreads,
      'gifsStartPaused': instance.gifsStartPaused,
      'pauseProfileGifs': instance.pauseProfileGifs,
      'disableEmbeds': instance.disableEmbeds,
      'externalLinksInNewTab': instance.externalLinksInNewTab,
      'enableNotificationCount': instance.enableNotificationCount,
      'autoexpandCWs': instance.autoexpandCWs,
      'suggestedFollowsDismissed': instance.suggestedFollowsDismissed,
      'enableMobileQuickShare': instance.enableMobileQuickShare,
    };
