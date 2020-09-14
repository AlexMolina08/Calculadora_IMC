import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

const double kCalculateButtonHeight = 90.0;
const double kThumbRadius = 15.0; //Radio del circulo del Slider
const double kOverlayRadius = 30.0; // Radio de la sombra del circulo del slider
const double kMinHeight = 120;
const double kMaxHeight = 210;
const double kIconSize = 100.0;

const Color kCalculateButtonColor = Color(0xFFEB1555);
const Color kThumbColor = Color(0xFFEB1555);
const Color kOverlayColor = Color(0x44EB1555); //Color de la sombra del circulo del slider
const Color kInputCardColor = Color(0xFF24263B);
const Color kUnselectedCardColor = Color(0xFF11152d);
const Color kIconColor = Color(0xFFFEFEFE);
const Color kInactiveSlimeColor = Color(0xFF757575);
const Color kActiveSlimeColor = Color(0xFFEB1555);

const TextStyle kIconTextStyle = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.normal,
    color: Color(0xff37474f),
    letterSpacing: 1.5
);
const TextStyle kNumberTextStyle = TextStyle(
  fontSize: 80.0,
  fontWeight: FontWeight.w900,
  color: Colors.white,
);