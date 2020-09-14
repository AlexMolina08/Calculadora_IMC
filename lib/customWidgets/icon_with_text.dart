import 'package:flutter/material.dart';
import 'package:calculadora_imc/constants.dart';

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
            size: kIconSize,
            color: kIconColor
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          text,
          style: kIconTextStyle,
        )
      ],
    );
  }
}
