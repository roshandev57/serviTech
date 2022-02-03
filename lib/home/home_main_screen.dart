//Added file

import 'package:flutter/material.dart';
import 'package:servitech/models/user.dart';
import 'package:servitech/screens/welcome/welcome_screen.dart';
import '../view.dart';
import 'home_viewmodel.dart';
import 'home_screen.dart';

class MainHomeScreen extends StatelessWidget {
  static Route route() => MaterialPageRoute(builder: (_) => HomeScreen());
  final User user_;

  MainHomeScreen({this.user_});

  @override
  Widget build(BuildContext context) {
    return View<HomeViewModel>(
        builder: (_, vm, __) =>
            vm.user != null ? HomeScreen() : WelcomeScreen());
  }
}
