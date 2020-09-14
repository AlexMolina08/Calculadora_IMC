import 'package:flutter/material.dart';

class InputCard extends StatelessWidget{
  final Color color;
  final Widget child;
  final Function onTapFunction; //obtenemos la funcion por parámetro

  InputCard({@required this.color , this.child , this.onTapFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5.0)
          ),
        child: child,
      ),
    );
  }
}
