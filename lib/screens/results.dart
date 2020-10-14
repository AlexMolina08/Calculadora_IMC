import 'package:calculadora_imc/constants.dart';
import 'package:calculadora_imc/customWidgets/input_card.dart';
import 'package:calculadora_imc/customWidgets/calculate_button.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Indice de Masa Corporal"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 30, 0, 20),
                child: Text(
                  'Tus Resultados',
                  style: kTitleTextStyle,
                )),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: InputCard(
                  color: kInputCardColor,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Peso Ideal',
                          style: kTitleResultTextStyle,
                        ),
                        Container(
                          child: Text(
                            '26.7',
                            style: kNumberTextStyle,
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal:20.0),
                            child: Text(
                              "gdfnsñjkhgsfjidkbgsjikdfbngklñsdfjbgipsdbfgipusbgipusbgisup",
                              style: kDescriptionTextStyle,
                              textAlign: TextAlign.center,
                            ))
                      ])),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          CalculateButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonMessage: 'VOLVER A CALCULAR',
          )
        ],
      ),
    );
  }
}
