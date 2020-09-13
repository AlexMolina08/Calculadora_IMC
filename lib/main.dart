import 'package:flutter/material.dart';
import 'package:calculadora_imc/screens/input_page.dart';

void main() => runApp(ImcCalculator());

class ImcCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora IMC',
      theme: ThemeData.light().copyWith(
            primaryColor: Color(0xff0A0D22),
            scaffoldBackgroundColor: Color(0xff0A0D22),
            textTheme: TextTheme(
              bodyText2: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.bold
              ),
            ),
      ),
      home: InputPage(),
    );
  }
}

