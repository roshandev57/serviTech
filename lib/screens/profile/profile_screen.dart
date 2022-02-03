import 'package:flutter/material.dart';
import 'package:servitech/screens/home/home_bottom_bar.dart';
import '../../enums.dart';
import 'profile_body.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 100, 3, 100),
          title: Text("Profile"),
        ),
        body: ProfileBody(),
        bottomNavigationBar: HomeBottomAppBar(
          selectedMenu: Menustate.profile,
        ));
  }
}
