import 'package:flutter/material.dart';
import 'package:calculadora_imc/customWidgets/input_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:calculadora_imc/customWidgets/icon_with_text.dart';
import 'package:calculadora_imc/constants.dart';

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
  int _height = 120; //altura en cm

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
              Expanded(
                flex: 5,
                child: InputCard(
                  color: kInputCardColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ALTURA',
                        style: kIconTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        //textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            _height.toString(),
                            style: kNumberTextStyle
                          ),
                          Text(
                            'cm',
                            style: kIconTextStyle,
                          )
                        ],
                      ),
                      Slider(
                        value: _height.toDouble(),
                        min: kMinHeight,
                        activeColor: kCalculateButtonColor,
                        inactiveColor: kInactiveSlimeColor,
                        max: kMaxHeight,
                        onChanged: (double newValue){
                          setState(() => _height = newValue.round());
                        },
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                flex: 5,
                child: Row(
                  children: [
                    Expanded(flex: 5, child: InputCard(color: kInputCardColor)),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(flex: 5, child: InputCard(color: kInputCardColor))
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: kCalculateButtonHeight,
                margin: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                    color: kCalculateButtonColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(15.0))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
