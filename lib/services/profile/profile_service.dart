// @dart=2.9

import '../../models/profile.dart';

abstract class ProfileService {
  Future<Profile> fetchProfile();
  Future<Profile> getProfile(userId);
  // Future<User> addUser(User newItem);
  // //Future<User> deleteUser(userId);
  // Future<User> updateUser({userId, User newItem});
}
