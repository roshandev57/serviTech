import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'login_viewmodel.dart';
import '../welcome/components/rounded_button.dart';

// This class is only for refactoring purposes.
// To declutter a bit the login_body.dart

class LoginButtons extends StatelessWidget {
  final LoginViewmodel viewmodel;
  final LoginScreenState state;
  const LoginButtons({this.viewmodel, this.state});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          child: Text('Login'),
          onPressed: () => state.onLogin(viewmodel),
          style: ElevatedButton.styleFrom(
              primary: Colors.purple,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}
