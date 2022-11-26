// I'd like to flatten the JSON response so we do not need to type
// `PostBlock.attachment.attachment.fileUrl`, and rather `PostBlock.fileUrl`, but I am
// unsure how I should approach that. Additionally, I dislike the idea of
// adding missing values to the opposite constructors, but if we are to maintain
// the use of `when`, I think it is the only viable option while still using
// freezed's data class gen.
//
// Update: When u have to write ur own dart data class 🤢🤢🤮🤮

part of '_models.dart';

/// The type of a block. Can either be `markdown` or `attachment`.
enum PostBlockType {
  markdown,
  attachment,
}

/// The segmented body of a post on Cohost.
///
/// There are two categories of blocks, respesented by [PostBlockType]. These
/// are `markdown` and `attachment`. Additionally, a markdown using HTML
/// will never be combined with a regular markdown block, but there is otherwise
/// no distinction of the two. Regular markdown, such as **bold** can also be
/// present within HTML markdowns.
///
/// Additionally, not all images are attachments. Some may be hotlinked in an
/// image tag, thus they will be present in an isolated markdown bloack.
/// These tags may contain styling information, such as width and height.
// @freezed
class PostBlock {
  // const factory PostBlock(
  //   /// The [PostBlockType] of the block, can either be `markdown` or
  //   /// `attachment`.
  //   ///
  //   /// Consider using `when` to determine whether a block is a markdown block
  //   /// or an attachment block instead of this field.
  //   ///
  //   /// ```
  //   /// PostBlock.when(
  //   ///   markdown: => print("This block is a markdown."),
  //   ///   attachment: => print("This block is an attachment.")
  //   /// )
  //   /// ```
  //   PostBlockType type,

  //   /// ### Markdown data
  //   /// The text content of a block.
  //   ///
  //   /// This contains the markdown information
  //   /// of a comment, and supports HTML. Links intended to be embedded will
  //   /// be have their own block, otherwise, the link will be present in
  //   /// plain-text among other text. HTML content is also assigned to isolated
  //   /// blocks.
  //   String? content,

  //   // Following fields will always be null in markdown

  //   /// ### Attachment data
  //   /// The URL of the full-sized attachmennt file.
  //   String? fileUrl,

  //   /// ### Attachment data
  //   /// The URL of the preview attachmennt file.
  //   ///
  //   /// At the time of writing this I believe these URLs will be identical.
  //   String? previewURL,

  //   /// ### Attachment data
  //   /// The id of the attachmennt.
  //   String? attachmentId,

  //   /// ### Attachment data
  //   /// Alt text of the attachment.
  //   String? altText,
  // ) = _PostBlock;

  /// The [PostBlockType] of the block, can either be `markdown` or
  /// `attachment`.
  PostBlockType? type;

  /// ### Attachment data
  /// The URL of the full-sized attachment file.
  String? fileUrl;

  /// ### Attachment data
  /// The URL of the preview attachmennt file.
  ///
  /// At the time of writing this I believe these URLs will be identical.
  String? previewUrl;

  /// ### Attachment data
  /// The id of the attachmennt.
  String? attachmentId;

  /// ### Attachment data
  /// Alt text of the attachment.
  String? altText;

  /// ### Markdown data
  /// The text content of a block.
  ///
  /// This contains the markdown information
  /// of a comment, and supports HTML. Links intended to be embedded will
  /// be have their own block, otherwise, the link will be present in
  /// plain-text among other text. HTML content is also assigned to isolated
  /// blocks.
  String? content;

  PostBlock({
    this.type,
    this.fileUrl,
    this.previewUrl,
    this.attachmentId,
    this.altText,
    this.content,
  });

  // its flat fuck friday
  factory PostBlock.fromJson(Map<String?, Object?> json) {
    switch (json['type']) {
      case 'markdown':
        var mrk = json['markdown'] as Map<String?, Object?>;
        return PostBlock(
          type: PostBlockType.markdown,
          content: mrk['content'] as String?,
        );
      case 'attachment':
        var att = json['attachment'] as Map<String?, Object?>;
        return PostBlock(
          type: PostBlockType.attachment,
          fileUrl: att["fileURL"] as String?,
          previewUrl: att["previewURL"] as String?,
          attachmentId: att["attachmentId"] as String?,
          altText: att["altText"] as String?,
        );
      default:
        throw CheckedFromJsonException(
            json, 'type', 'PostBlock', 'Invalid union type "${json['type']}"!');
    }
  }

  Map<String?, dynamic> toJson() => <String?, dynamic>{
        'type': type,
        'fileURL': fileUrl,
        'previewURL': previewUrl,
        'attachmentId': attachmentId,
        'altText': altText,
        'content': content,
      };
}
