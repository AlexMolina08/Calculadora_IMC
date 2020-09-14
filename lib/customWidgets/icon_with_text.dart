import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            size: 100.0,
            color: Color(0xFFFEFEFE)
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          text,
          style: TextStyle(
          ),)
      ],
    );
  }
}
