// @dart=2.9

import '../../models/item.dart';

abstract class ItemService {
  Future<List<Item>> fetchItem();
  Future<Item> getItem(id);
  Future<Item> addItem(Item newItem);
  Future<void> deleteItem(id);
  Future<Item> updateItem({id, Item newItem});
}
