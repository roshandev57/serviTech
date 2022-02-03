import 'package:servitech/constants.dart';
import 'package:servitech/screens/login/login_screen.dart';
//import 'package:servitech/screens/auth/register_screen.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:servitech/screens/welcome/components/rounded_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "ServiTech",
                  style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Image.asset(
                  "assets/images/servitech_logo.png",
                  height: size.height * 0.3,
                ),
                RoundedButton(text: "CONTINUE", screen: LoginScreen()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
