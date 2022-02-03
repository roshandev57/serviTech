import 'package:flutter/material.dart';
import 'package:servitech/screens/profile/profile_screen.dart';
import 'home_body.dart';
import 'package:servitech/screens/cart/cart_screen.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 100, 3, 100),
      title: Text("ServiTech"),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
