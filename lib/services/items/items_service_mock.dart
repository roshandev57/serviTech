// @dart=2.9

import '../../models/item.dart';
import 'items_service.dart';

class ItemsServiceMock extends ItemService {
  final _mockDb = <Item>[
    Item(
      title: 'Lenovo Ideapad',
      details: 'Suitable for office work',
      price: 2000.00,
    ),
    Item(
      title: 'Asus ROG',
      details: 'Suitable for gaming',
      price: 7000.00,
    ),
    Item(
      title: 'Razer Basilisk Mouse',
      details: 'Mouse dedicated for gaming purposes.\nUp to 16000DPI',
      price: 200.00,
    ),
    Item(
      title: 'Cooler Master MH360',
      details:
          'Comfortable and afordable headphones for gamers and users alike',
      price: 210.00,
    ),
  ];

  @override
  Future<List<Item>> fetchItem() async {
    return [..._mockDb];
  }

  @override
  Future<Item> getItem(id) async {
    final item = _mockDb.firstWhere((number) => number.id == id, orElse: null);
    return Item.copy(item);
  }

  @override
  Future<Item> addItem(Item newItem) async {
    int id = (_mockDb != null && _mockDb.length > 0) ? _mockDb.last.id + 1 : 1;
    newItem.id = id;
    Item item = newItem;
    _mockDb.add(item);
    return Item.copy(item);
  }

  @override
  Future<void> deleteItem(id) async {
    _mockDb.removeWhere((number) => number.id == id);
  }

  @override
  Future<Item> updateItem({id, Item newItem}) async {
    final index = _mockDb.indexWhere((number) => number.id == id);

    if (index == -1) {
      return null;
    }

    Item item = Item(
      id: id,
      title: newItem.title,
      details: newItem.details,
      price: newItem.price,
    );
    _mockDb[index] = item;

    return Item.copy(_mockDb[index]);
  }
}
