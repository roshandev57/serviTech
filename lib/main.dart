// @dart=2.9

import 'package:servitech/screens/login/login_screen.dart';
import 'package:servitech/screens/profile/profile_screen.dart';
import 'package:servitech/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:servitech/app/service_locator.dart';
import 'package:firebase_core/firebase_core.dart';

import 'constants.dart';

void main() async {
  // This widget is the root of your application.
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  initializeServiceLocator();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'ServiTech',
    home: WelcomeScreen(),
  ));
}
