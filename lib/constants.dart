import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

const double kCalculateButtonHeight = 80.0;
const double kThumbRadius = 15.0; //Radio del circulo del Slider
const double kOverlayRadius = 20.0;
const double kMinHeight = 120;
const double kMaxHeight = 210;
const double kIconSize = 100.0;


const TextStyle kCalculateButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 25.0,
  fontFamily: 'Futura',
  letterSpacing: 3.0,
  fontWeight: FontWeight.bold
  );
const BoxConstraints kButtonConstraints =
  BoxConstraints.tightFor(
    width: 50.0,
    height: 50.0,
  );

const Color kCalculateButtonColor = Color(0xFFEB1555);
const Color kThumbColor = Color(0xFFEB1555);
const Color kOverlayColor = Color(0x1fEB1555); //Color de la sombra del circulo del slider
const Color kInputCardColor = Color(0xFF24263B);
const Color kUnselectedCardColor = Color(0xFF11152d);
const Color kIconColor = Color(0xFFFEFEFE);
const Color kInactiveSlimeColor = Color(0xFF757575);
const Color kActiveSlimeColor = Color(0xFFFFFFFF);
const Color kButtonColor = Color(0xFF35395b);

const TextStyle kIconTextStyle = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.normal,
    color: Color(0xff37474f),
    letterSpacing: 1.5
);

//usado para el texto "tus resultados"
const TextStyle kTitleTextStyle = TextStyle(
  fontSize: 45.0,
  fontWeight: FontWeight.w900,
  color: Colors.white,
);

const TextStyle kTitleResultTextStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.w900,
  color: Color(0xff8bc34a)
);

const TextStyle kDescriptionTextStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.w400,
  color: Color(0xffbdbdbd),
);

const TextStyle kNumberTextStyle = TextStyle(
  fontSize: 80.0,
  fontWeight: FontWeight.w900,
  color: Colors.white,
);
