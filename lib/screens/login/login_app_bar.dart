import 'package:flutter/material.dart';
// import '../login/login_viewmodel.dart';
// import '../view.dart';

class LoginAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Login'),
      backgroundColor: Colors.purple[700],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
