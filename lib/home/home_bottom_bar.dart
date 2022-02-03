import 'package:flutter/material.dart';
import 'package:servitech/constants.dart';
import 'package:servitech/screens/cart/cart_screen.dart';
import 'package:servitech/screens/home/home_screen.dart';
import 'package:servitech/screens/profile/profile_screen.dart';
import 'package:servitech/enums.dart';

class HomeBottomAppBar extends StatelessWidget {
  const HomeBottomAppBar({
    Key key,
    this.selectedMenu,
  }) : super(key: key);

  final Menustate selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
        padding: EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(offset: Offset(0, -15), blurRadius: 20, color: Colors.grey),
        ]),
        child: SafeArea(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.shop),
              color: Menustate.home == selectedMenu
                  ? primaryColor
                  : inActiveIconColor,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ));
              },
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Menustate.cart == selectedMenu
                  ? primaryColor
                  : inActiveIconColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CartScreen();
                    },
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              color: Menustate.profile == selectedMenu
                  ? primaryColor
                  : inActiveIconColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ProfileScreen();
                    },
                  ),
                );
              },
            ),
          ],
        )));
  }
}
