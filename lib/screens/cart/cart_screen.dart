import 'package:flutter/material.dart';
import 'package:servitech/screens/cart/cart_app_bar.dart';
import 'cart_body.dart';
import 'package:servitech/screens/home/home_bottom_bar.dart';
import '../../enums.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CartAppBar(),
        body: CartBody(),
        bottomNavigationBar: HomeBottomAppBar(
          selectedMenu: Menustate.cart,
        ));
  }
}
