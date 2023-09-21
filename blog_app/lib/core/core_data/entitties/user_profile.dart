import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required String id,
    required String email,
    required bool isAdmin,
  }) = _User;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'isAdmin': isAdmin,
      };

  factory UserProfile.fromFirebaseUser(User user, bool admin) {
    return UserProfile(
      id: user.uid,
      email: user.email ?? 'no_email',
      isAdmin: admin,
    );
  }
}
