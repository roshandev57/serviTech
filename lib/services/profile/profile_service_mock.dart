// @dart=2.9

import '../../models/profile.dart';
import 'profile_service.dart';

class ProfileServiceMock extends ProfileService {
  final _mockDb = Profile(
    pic: '',
    name: 'Roshan',
    email: 'roshandev@gmail.com',
  );

  @override
  Future<Profile> fetchProfile() async {
    return _mockDb;
  }

  @override
  Future<Profile> getProfile(id) async {
    final item = _mockDb;
    return Profile.copy(item);
  }

//   @override
//   Future<User> addUser(User newItem) async {
//     int id =
//         (_mockDb != null && _mockDb.length > 0) ? _mockDb.last.userId + 1 : 1;
//     newItem.userId = id;
//     User item = newItem;
//     _mockDb.add(item);
//     return User.copy(item);
//   }

// //  // @override
// //   Future<void> deleteUser(userId) async {
// //     _mockDb.removeWhere((number) => number.userId  == userId );
// //   }

//   @override
//   Future<User> updateUser({userId, User newItem}) async {
//     final index = _mockDb.indexWhere((number) => number.userId == userId);

//     if (index == -1) {
//       return null;
//     }

//     User item = User(
//       userId: userId,
//       pic: newItem.pic,
//       name: newItem.name,
//       email: newItem.email,
//     );
//     _mockDb[index] = item;

//     return User.copy(_mockDb[index]);
//   }
}
