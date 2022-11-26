part of '_models.dart';

@freezed
class User with _$User {
  const factory User({
    required bool loggedIn,
    String? projectHandle,
    int? projectId,
    int? userId,
    String? email,
    bool? modMode,
    bool? activated,
    bool? readOnly,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
