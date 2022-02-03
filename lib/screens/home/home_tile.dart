import 'package:flutter/material.dart';
import '../view.dart';
import 'home_viewmodel.dart';
import 'package:servitech/models/item.dart';
import 'package:servitech/screens/cart/cart_screen.dart';

class HomeTile extends StatelessWidget {
  const HomeTile(this.index);
  final int index;

  @override
  Widget build(BuildContext context) {
    return SelectorView<HomeViewModel, Item>(
        selector: (_, vm) => vm.getItem(index),
        builder: (_, vm, item, ___) {
          return ListTile(
              title: Column(
            children: [
              Text('${item.title}'),
              Text('${item.details}'),
              Text('${item.price}'),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CartScreen();
                  }));
                },
              ),
            ],
          ));
        });
  }
}
