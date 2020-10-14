import 'package:calculadora_imc/customWidgets/custom_slider.dart';
import 'package:calculadora_imc/screens/results.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calculadora_imc/customWidgets/input_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:calculadora_imc/customWidgets/icon_with_text.dart';
import 'package:calculadora_imc/constants.dart';
import 'package:calculadora_imc/customWidgets/custom_button.dart';
import 'package:calculadora_imc/customWidgets/calculate_button.dart';
import 'package:calculadora_imc/calculator_brain.dart';

enum Gender {
  man,
  women,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender _selectedGender;
  int _height; //altura en cm
  int _age;
  int _weight;
  CustomSlider heightSlider = CustomSlider();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _height = 120;
    _age = 22;
    _weight = 70;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Indice de Masa Corporal',
        ),
        elevation: 20.0,
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              // --- GENERO ----
              Expanded(
                flex: 5,
                child: Row(
                  children: [
                    //HOMBRE
                    Expanded(
                      flex: 5,
                      child: InputCard(
                        onTapFunction: () =>
                            setState(() => _selectedGender = Gender.man),
                        //en cada construccion vemos que color poner (selected o unselected)
                        color: _selectedGender == Gender.man
                            ? kInputCardColor
                            : kUnselectedCardColor,
                        child: IconWithText(
                          icon: FontAwesomeIcons.mars,
                          text: 'HOMBRE',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    //MUJER
                    Expanded(
                      flex: 5,
                      child: InputCard(
                          onTapFunction: () =>
                              setState(() => _selectedGender = Gender.women),
                          color: _selectedGender == Gender.women
                              ? kInputCardColor
                              : kUnselectedCardColor,
                          child: IconWithText(
                            icon: FontAwesomeIcons.venus,
                            text: 'MUJER',
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              //---- ALTURA ----
              Expanded(
                flex: 5,
                child: InputCard(
                    color: kInputCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'ALTURA',
                          textAlign: TextAlign.center,
                          style: kIconTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(
                              _height.toString(),
                              style: kNumberTextStyle,
                            ),
                            Text(
                              'cm',
                              style: kIconTextStyle,
                            )
                          ],
                        ),
                        Expanded(
                            child: SliderTheme(
                          //cogemos este sliderTheme y le copiamos el nuevo SliderThemeData
                          data: SliderTheme.of(context).copyWith(
                            thumbColor: kThumbColor,
                            overlayColor: kOverlayColor,
                            overlayShape: RoundSliderOverlayShape(
                                overlayRadius: kOverlayRadius),
                            thumbShape: RoundSliderThumbShape(
                                enabledThumbRadius: kThumbRadius),
                            activeTrackColor: kActiveSlimeColor,
                            inactiveTrackColor: kInactiveSlimeColor,
                          ),
                          child: Slider(
                            value: _height.toDouble(),
                            min: kMinHeight,
                            max: kMaxHeight,
                            //La instancia onchanged recibe una funcion (callback) que recibe como parametro
                            //el nuevo valor que toma el value (_height aqui)
                            onChanged: (double newHeight) {
                              setState(() => _height = newHeight.round());
                            },
                          ),
                        ))
                      ],
                    )),
              ),
              SizedBox(
                height: 10.0,
              ),
              // --- EDAD Y PESO
              Expanded(
                flex: 5,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      //-- EDAD ----
                      child: InputCard(
                          color: kInputCardColor,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'EDAD',
                                style: kIconTextStyle,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    _age.toString(),
                                    style: kNumberTextStyle,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomButton(
                                      icon: Icons.remove,
                                      onPressed: () {
                                        setState(() => _age--);
                                      }),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  CustomButton(
                                    icon: Icons.add,
                                    onPressed: () {
                                      setState(() => _age++);
                                    },
                                  ),
                                ],
                              )
                            ],
                          )),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    //---PESO---
                    Expanded(
                      flex: 5,
                      child: InputCard(
                        color: kInputCardColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'PESO',
                              style: kIconTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              children: [
                                Text(
                                  _weight.toString(),
                                  style: kNumberTextStyle,
                                ),
                                Text(
                                  'kg',
                                  style: kIconTextStyle,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                    icon: Icons.remove,
                                    onPressed: () {
                                      setState(() => _weight--);
                                    }),
                                SizedBox(
                                  width: 20.0,
                                ),
                                CustomButton(
                                  icon: Icons.add,
                                  onPressed: () {
                                    setState(
                                      () => _weight++,
                                    );
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              //--- CALCULATE BUTTON

              CalculateButton(
                  onTap: () {
                    CalculatorBrain calculator =
                        CalculatorBrain(height: _height, weight: _weight);

                    //Navigator.pushNamed(context , '/results' , bmi);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultsPage(
                              result_imc: calculator.calculateIMC(),
                              result_text: calculator.getResult(),
                              interpretation: calculator.getInterpretation())),
                    );
                  },
                  buttonMessage: "CALCULAR")

              // GestureDetector(
              //   /*
              //   * Al pulsar calcular , debemos poner en la pila ResultsPage
              //   * 2 Opciones:
              //   *   -Navigator.push
              //   *   -Navigator.pushNamed (más limpia)
              //   * */
              //   onTap: () {
              //     print('Genero:$_selectedGender\nAltura: $_height');
              //
              //     //Opcion 1
              //     /*Navigator.push(context , MaterialPageRoute(builder: (context){
              //       return ResultsPage();
              //     }));*/
              //
              //     //Opcion 2
              //     Navigator.pushNamed(context, '/results');
              //   },
              //   child: Container(
              //     width: double.infinity,
              //     height: kCalculateButtonHeight,
              //     margin: EdgeInsets.only(top: 10.0),
              //     decoration: BoxDecoration(
              //         color: kCalculateButtonColor,
              //         borderRadius:
              //             BorderRadius.vertical(top: Radius.circular(15.0))),
              //     child: Center(
              //       child: Text(
              //         'CALCULAR',
              //         style: kCalculateButtonTextStyle,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
