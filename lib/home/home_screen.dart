import 'package:flutter/material.dart';
import 'package:servitech/enums.dart';
import 'package:servitech/screens/home/home_appbar.dart';
import 'package:servitech/screens/profile/profile_screen.dart';
import 'package:servitech/screens/home/home_bottom_bar.dart';
import 'home_body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: null,
        appBar: HomeAppBar(),
        body: HomeMainBody(),
        bottomNavigationBar: HomeBottomAppBar(
          selectedMenu: Menustate.home,
        ));
  }
}
