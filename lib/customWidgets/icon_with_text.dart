import 'package:flutter/material.dart';

const double iconSize = 100.0;
const Color iconColor = Color(0xFFFEFEFE);
const TextStyle iconTextStyle = TextStyle(
    fontSize: 20.0,
    color: Color(0xffEAEAEB)
  );

class IconWithText extends StatelessWidget {
  final String text;
  final IconData icon;

  IconWithText({this.text, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
            icon,
            size: iconSize,
            color: iconColor
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          text,
          style: iconTextStyle,
        )
      ],
    );
  }
}
