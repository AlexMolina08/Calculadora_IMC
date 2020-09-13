import 'package:flutter/material.dart';

class InputCard extends StatelessWidget{
  final Color color;
  InputCard({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5.0)
          ),
      ),
    );
  }
}
