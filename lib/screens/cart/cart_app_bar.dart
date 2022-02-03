import 'package:flutter/material.dart';
import 'package:servitech/screens/cart/cart_viewmodel.dart';
import 'cart_body.dart';
import '../view.dart';
import 'cart_viewmodel.dart';

class CartAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 100, 3, 100),
      title: SelectorView<CartViewModel, int>(
          // showProgressIndicator: false,
          selector: (_, vm) => vm.dataCount,
          builder: (_, vm, __, ___) {
            return ListTile(
              title: Text(
                'My Cart',
                style: TextStyle(
                    color: Colors.white.withOpacity(1.0),
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0),
              ),
              trailing: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text(
                    ' ${vm.dataCount} ',
                    style: TextStyle(
                        color: Colors.white.withOpacity(1.0),
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0),
                  )),
            );
          }),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}
