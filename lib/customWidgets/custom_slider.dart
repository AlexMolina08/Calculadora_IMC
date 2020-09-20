import 'package:flutter/material.dart';
import 'package:calculadora_imc/constants.dart';

class CustomSlider extends StatefulWidget {
  int initialHeight = 120;
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  int height;
  int getHeight() => height;

  @override
  void initState() {
    super.initState();
    height = 120;
  }

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      //cogemos este sliderTheme y le copiamos el nuevo SliderThemeData
      data: SliderTheme.of(context).copyWith(
        thumbColor: kThumbColor,
        overlayColor: kOverlayColor,
        overlayShape: RoundSliderOverlayShape(
            overlayRadius: kOverlayRadius
        ),
        thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: kThumbRadius
        ),
        activeTrackColor: kActiveSlimeColor,
        inactiveTrackColor: kInactiveSlimeColor,

      ),
      child: Slider(
        value: height.toDouble(),
        min: kMinHeight,
        max: kMaxHeight,
        //La instancia onchanged recibe una funcion (callback) que recibe como parametro
        //el nuevo valor que toma el value (_height aqui)
        onChanged: (double newHeight){
          setState(() => height = newHeight.round());
        },
      ),
    );
  }



}
