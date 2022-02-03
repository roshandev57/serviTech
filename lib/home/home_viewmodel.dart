// @dart=2.9

//import 'dart:html';
import 'package:servitech/app/service_locator.dart';
import 'package:servitech/models/item.dart';
import 'package:servitech/models/user.dart';
import 'package:servitech/services/items/items_service.dart';
import 'package:servitech/services/user/user_repository.dart';
import '../viewmodel.dart';

class HomeViewModel extends Viewmodel {
  final _service = locator<ItemService>();

  //Added File (If error can delete later)
  final UserRepository _userRepository = locator();
  User get user => _userRepository.user;

  HomeViewModel() {
    _userRepository.addListener(() {
      if (user == null) {
        _list = null;
      } else {
        init();
      }
      notifyListeners();
    });
  }
  //End of added

  List<Item> _list;

  Item getItem(int index) => _list == null ? null : _list[index];
  int get dataCount => _list == null ? 0 : _list.length;

  @override
  init() => update(() async {
        _list = await _service.fetchItem();
        super.init();
      });

  void addNote(Item newItem) => update(() async {
        final item = await _service.addItem(newItem);
        _list.add(item);
      });

  void deleteNote(dynamic id) => update(() async {
        await _service.deleteItem(id);
        _list.removeWhere((note) => note.id == id);
      });

  void updateNote({dynamic id, Item data}) => update(() async {
        final item = await _service.updateItem(id: id, newItem: data);
        final index = _list.indexWhere((note) => note.id == id);
        if (index == -1) return;
        _list[index] = item;
      });
}
