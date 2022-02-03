// @dart=2.9

import '../../models/cart.dart';

abstract class CartService {
  Future<List<Cart>> fetchCart();
  Future<Cart> getCart(id);
  //Future<Cart> addItem(Cart newItem);
  //Future<void> deleteItem(id);
  //Future<Cart> updateItem({id, Cart newItem});
}
