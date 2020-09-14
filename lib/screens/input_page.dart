import 'package:calculadora_imc/customWidgets/icon_with_text.dart';
import 'package:flutter/material.dart';
import 'package:calculadora_imc/customWidgets/input_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const calculateButtonHeight = 90.0;
const calculateButtonColor = Color(0xFFEB1555);
const inputCardColor = Color(0xFF1D1F33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Calculadora IMC',
        ),
        elevation: 20.0,
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: InputCard(
                        color: inputCardColor,
                        child: IconWithText(
                          icon: FontAwesomeIcons.mars,
                          text: 'HOMBRE',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      flex: 5,
                      child: InputCard(
                        color: inputCardColor,
                        child: IconWithText(
                          icon: FontAwesomeIcons.venus,
                          text: 'MUJER',
                        )
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(flex: 5, child: InputCard(color: inputCardColor)),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                flex: 5,
                child: Row(
                  children: [
                    Expanded(flex: 5, child: InputCard(color: inputCardColor)),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(flex: 5, child: InputCard(color: inputCardColor))
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: calculateButtonHeight,
                margin: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                  color: calculateButtonColor,
                  borderRadius: BorderRadius.vertical(top:  Radius.circular(15.0))
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
