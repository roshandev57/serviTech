// @dart=2.9

//import 'dart:html';
import 'package:servitech/app/service_locator.dart';
import 'package:servitech/models/profile.dart';
import 'package:servitech/services/profile/profile_service.dart';
import '../viewmodel.dart';

class ProfileViewModel extends Viewmodel {
  final _service = locator<ProfileService>();

  Profile _list;

  Profile getUser() => _list;
  //int get dataCount => _list == null ? 0 : _list.length;

  @override
  init() => update(() async {
        _list = await _service.fetchProfile();
        super.init();
      });

  // void addUser(User newItem) => update(() async {
  //       final item = await _service.addUser(newItem);
  //       _list.add(item);
  //     });

  // void deleteNote(dynamic id) => update(() async {
  //       await _service.deleteItem(id);
  //       _list.removeWhere((note) => note.id == id);
  //     });

//   void updateUser({dynamic userId, User data}) => update(() async {
//         final item = await _service.updateUser(userId: userId, newItem: data);
//         final index = _list.indexWhere((note) => note.userId == userId);
//         if (index == -1) return;
//         _list[index] = item;
//       });
}
