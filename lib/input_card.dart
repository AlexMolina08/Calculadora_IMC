import 'package:flutter/material.dart';

class InputCard extends StatefulWidget {
  @override
  _InputCardState createState() => _InputCardState();
}

class _InputCardState extends State<InputCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Color(0xFF1D1F33),
            borderRadius: BorderRadius.circular(5.0)
          ),
      ),
    );
  }
}
