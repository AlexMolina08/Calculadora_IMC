import 'package:flutter/material.dart';
import 'package:calculadora_imc/constants.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';

class CustomButton extends StatelessWidget {
  final IconData icon;
  Function onPressed, onLongPressed;

  CustomButton(
      {@required this.icon, @required this.onPressed, this.onLongPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      onLongPress: onLongPressed,
      fillColor: kButtonColor,
      shape: CircleBorder(),
      constraints: kButtonConstraints,
      child: Icon(icon, color: Colors.white,),
    );
  }
}
