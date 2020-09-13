import 'package:flutter/material.dart';

void main() => runApp(ImcCalculator());

class ImcCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Calculadora IMC',
      home: InputPage(),
    );
  }
}

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
      ),
      body: Center(
        child: Text(
          'CALCULADORA DE INDICE DE MASA CORPORAL (IMC)',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}
