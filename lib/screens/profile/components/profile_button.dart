import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  final String text;
  final Widget screen;
  final Icon img;
  final Color color, textColor;
  const ProfileButton({
    Key key,
    this.text = "",
    this.screen,
    this.img,
    this.color = Colors.grey,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.1,
      child: FlatButton(
          color: Colors.purpleAccent,
          padding: EdgeInsets.symmetric(vertical: 10),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: img,
                color: textColor,
                onPressed: () {},
              ),
              Container(
                child: Text(
                  text,
                  style: TextStyle(color: textColor),
                ),
              )
            ],
          )),
    );
  }
}
