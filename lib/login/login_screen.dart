import 'package:flutter/material.dart';
import 'package:servitech/screens/home/home_main_screen.dart';

import 'login_app_bar.dart';
import 'login_body.dart';
import 'login_viewmodel.dart';

class LoginScreen extends StatefulWidget {
  static Route route() => MaterialPageRoute(builder: (_) => LoginScreen());

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  bool _showPassword = false;
  get showPassword => _showPassword;
  set showPassword(value) => setState(() => _showPassword = value);

  String get username => usernameController.text;
  String get password => passwordController.text;

  void onLogin(LoginViewmodel viewmodel) async {
    await viewmodel.signIn(username: username, password: password);
    final _user = viewmodel.user;
    //if () Navigator.pop(context, _user);

    //ADDED NEW THINGS TO TRY
    if (_user != null)
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MainHomeScreen(user_: _user),
        ),
      );

    // END OF ADDED NEW THINGS
  }

  // void onCancel() => Navigator.pop(context, null);

  // void onClear(LoginViewmodel viewmodel) {
  //   usernameController.clear();
  //   passwordController.clear();
  //   viewmodel.errorMessage = null;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LoginAppBar(),
      body: LoginBody(this),
    );
  }
}
