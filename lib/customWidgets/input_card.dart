import 'package:flutter/material.dart';

class InputCard extends StatelessWidget{
  final Color color;
  final Widget child;

  InputCard({@required this.color , this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5.0)
        ),
      child: child,
    );
  }
}
