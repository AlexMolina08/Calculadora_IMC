import 'dart:math';

class CalculatorBrain{
  final int height;
  final int weight;

  double _imc;

  CalculatorBrain({this.height , this.weight});


  String calculateIMC(){
    //IMC = masa(kg) / estatura(m)
    _imc = weight / pow( (height / 100) , 2);
    return _imc.toStringAsFixed(1); //devuelve el imc como un string con un decimal
  }

  String getResult(){
    if(_imc >= 30.0)
      return "Sobrepeso";
    else if(_imc >= 25.0)
      return "obesidad";
    else if(_imc < 25 && _imc >= 18.5)
      return "Peso Normal";
    else
      return "Bajo peso";
  }

  String getInterpretation(){
    if(_imc >= 30.0)
      return "Tienes un peso mucho mayor al recomendado en base a tus datos. Contacta con tu médico para una mejor orientación";
    else if(_imc >= 25.0)
      return "Tienes un peso mayor al recomendado en base a tus datos. ¡ Intenta hacer más ejercicio y llevar una dieta saludable !";
    else if(_imc < 25 && _imc >= 18.5)
      return "Tienes un peso ideal , ¡ buen trabajo !";
    else
      return "Tienes un peso menor al recomendado en base a tus datos. Puedes comer un poco más";
  }

}