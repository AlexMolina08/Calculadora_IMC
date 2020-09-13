import 'package:flutter/material.dart';
import 'package:calculadora_imc/input_card.dart';

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
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    InputCard(color: Color(0xFF1D1F33)),
                    SizedBox(width: 10.0,),
                    InputCard(color: Color(0xFF1D1F33))
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              InputCard(color: Color(0xFF1D1F33)),
              SizedBox(height: 10.0,),
              Expanded(
                child: Row(
                  children: [
                    InputCard(color: Color(0xFF1D1F33)),
                    SizedBox(width: 10.0,),
                    InputCard(color: Color(0xFF1D1F33))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
