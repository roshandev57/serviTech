import 'package:flutter/material.dart';
import '../view.dart';
import 'cart_viewmodel.dart';
import 'package:servitech/models/cart.dart';

class CartTile extends StatelessWidget {
  const CartTile(this.index);
  final int index;

  @override
  Widget build(BuildContext context) {
    return SelectorView<CartViewModel, Cart>(
        selector: (_, vm) => vm.getCart(index),
        builder: (_, vm, cart, ___) {
          return ListTile(
              title: Column(
            children: [
              // Text(' Cart :${cart.cartId}'),
              Text(' ${cart.item.title}'),
              Text('${cart.item.details}'),
              Text(' ${cart.item.price}'),
              Text('${cart.quantity}'),
            ],
          ));
        });
  }
}
