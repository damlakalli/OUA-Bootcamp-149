// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, prefer_typing_uninitialized_variables, deprecated_member_use

import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final double textSize;
  final int fillColor ;
  final Function callback;

  const CalculatorButton({
    required this.text,
    required this.textSize,
    required this.fillColor,
    required this.callback,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 65,
        height: 65,
        child: FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(50.0)
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: textSize,
              color: Colors.white,
            ),
          ),
          onPressed: () => callback(text),
          color: Color(fillColor),
          textColor: Colors.white,
        ),
      ),
    );
  }
}