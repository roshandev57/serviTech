import 'item.dart';

class Cart {
  dynamic cartId;
  int quantity;
  Item item;

  Cart(this.item, {this.cartId = 0, this.quantity = 0});

  Cart.copy(from)
      : this(Item.copy(from.item),
            cartId: from.cartId, quantity: from.quantity);
}
