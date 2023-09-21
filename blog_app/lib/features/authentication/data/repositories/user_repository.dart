import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/core_data/entitties/user_profile.dart';

class UserRepository {
  final FirebaseFirestore _firestore;
  UserRepository(this._firestore);

  Future<void> createUserProfile({required UserProfile userProfile}) async {
    try {
      final userDoc = _firestore.collection("users").doc(userProfile.id);
      await userDoc.set(userProfile.toJson());
    } catch (e) {
      throw Exception('Failed to create user profile: $e');
    }
  }

  Future<UserProfile?> getUserProfile(String userId) async {
    try {
      final userDoc = _firestore.collection("users").doc(userId);
      final userData = await userDoc.get();

      if (userData.exists) {
        return UserProfile.fromJson(userData.data() as Map<String, dynamic>);
      } else {
        return null;
      }
    } catch (e) {
      throw Exception('Failed to retrieve user profile: $e');
    }
  }

  Future<void> updateUserProfile(UserProfile userProfile) async {
    try {
      final userDoc = _firestore.collection("users").doc(userProfile.id);
      await userDoc.update(userProfile.toJson());
    } catch (e) {
      throw Exception('Failed to update user profile: $e');
    }
  }

  Future<void> deleteUserProfile(String userId) async {
    try {
      final userDoc = _firestore.collection("users").doc(userId);
      await userDoc.delete();
    } catch (e) {
      throw Exception('Failed to delete user profile: $e');
    }
  }
}
