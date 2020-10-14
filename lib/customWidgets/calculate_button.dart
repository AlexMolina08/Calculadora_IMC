import 'package:flutter/material.dart';
import 'package:calculadora_imc/constants.dart';

class CalculateButton extends StatelessWidget {

  final Function onTap;
  final String buttonMessage;

  CalculateButton({@required this.onTap , @required this.buttonMessage });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      /*
                * Al pulsar calcular , debemos poner en la pila ResultsPage
                * 2 Opciones:
                *   -Navigator.push
                *   -Navigator.pushNamed (más limpia)
                * */
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: kCalculateButtonHeight,
        margin: EdgeInsets.only(top: 10.0),
        decoration: BoxDecoration(
            color: kCalculateButtonColor,
            borderRadius:
            BorderRadius.vertical(top: Radius.circular(15.0))),
        child: Center(
          child: Text(
            buttonMessage,
            style: kCalculateButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
