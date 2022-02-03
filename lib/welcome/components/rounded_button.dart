import 'package:flutter/material.dart';
import 'package:servitech/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Widget screen;
  final Color color, textColor;
  const RoundedButton({
    Key key,
    this.text = "",
    this.screen,
    this.color = Colors.black,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.06,
      width: size.width * 0.8,
      margin: EdgeInsets.all(40),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: FlatButton(
          color: primaryColor,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return screen;
                },
              ),
            );
          },
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
