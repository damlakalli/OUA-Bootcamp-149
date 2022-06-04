// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, deprecated_member_use, prefer_const_literals_to_create_immutables, unused_import, avoid_print

import 'package:flutter/material.dart';
import 'package:hesap_makinesi/widget/calculator_button.dart';


void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({ Key? key }) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  late int firstNum;
  late int secondNum;
  late String history  =  '';
  late String textToDisplay =  '';
  late String res;
  late String operation;

  void btnOnClick(String btnVal) {
    print(btnVal);
    if( btnVal == 'C' ) {
      textToDisplay = '';
      firstNum = 0;
      secondNum =0;
      res = '';
    } else if(btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';

    } else if (btnVal == '+/-') {
      if (textToDisplay [0] != '-') {
        res = '-' + textToDisplay;
      } else {
        res = textToDisplay.substring(1);
      }
    }  else if (btnVal == '<'){
      res = textToDisplay.substring(0, textToDisplay.length -1);
    } else if(btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'x' ||
        btnVal == '÷') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    }     else if (btnVal == '=') {
      secondNum = int.parse(textToDisplay);
      if( operation == '+' ) {
        res = (firstNum + secondNum).toString();
        history = firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if( operation == '-') {
        res = (firstNum - secondNum).toString();
        history = firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if( operation == 'x') {
        res = (firstNum * secondNum).toString();
        history = firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if( operation == '÷') {
        res = (firstNum / secondNum).toString();
        history = firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hesap Makinesi'),
        ),
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding:EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    history,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white70,
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0) ,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    textToDisplay,
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0) ,
              ),
              Row(
                children: [
                  CalculatorButton(text: 'AC',
                    textSize: 25,
                    fillColor: 0xFF87986CB,
                    callback: btnOnClick,
                  ),

                  CalculatorButton(text: 'C',
                    textSize: 35,
                    fillColor: 0xFF87986CB,
                    callback: btnOnClick,
                  ),

                  CalculatorButton(text: '<',
                    textSize: 35,
                    fillColor: 0xFF87986CB,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(text: '÷',
                    textSize: 35,
                    fillColor: 0xFFffba00,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                children: [
                  CalculatorButton(text: '7',
                    textSize: 35,
                    fillColor: 0xFF757575,
                    callback: btnOnClick,
                  ),

                  CalculatorButton(text: '8',
                    textSize: 35,
                    fillColor: 0xFF757575,
                    callback: btnOnClick,
                  ),

                  CalculatorButton(text: '9',
                    textSize: 35,
                    fillColor: 0xFF757575,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(text: 'x',
                    textSize: 35,
                    fillColor: 0xFFffba00,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                children: [
                  CalculatorButton(text: '4',
                    textSize: 35,
                    fillColor: 0xFF757575,
                    callback: btnOnClick,
                  ),

                  CalculatorButton(text: '5',
                    textSize: 35,
                    fillColor: 0xFF757575,
                    callback: btnOnClick,
                  ),

                  CalculatorButton(text: '6',
                    textSize: 35,
                    fillColor: 0xFF757575,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(text: '-',
                    textSize: 35,
                    fillColor: 0xFFffba00,
                    callback: btnOnClick,
                  ),
                ],
              ),           Row(
                children: [
                  CalculatorButton(text: '1',
                    textSize: 35,
                    fillColor: 0xFF757575,
                    callback: btnOnClick,
                  ),

                  CalculatorButton(text: '2',
                    callback: btnOnClick,
                    textSize: 35,
                    fillColor: 0xFF757575,
                  ),

                  CalculatorButton(text: '3',
                    textSize: 35,
                    fillColor: 0xFF757575,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(text: '+',
                    textSize: 35,
                    fillColor: 0xFFffba00,
                    callback: btnOnClick,
                  ),
                ],
              ),           Row(
                children: [
                  CalculatorButton(text: '+/-',
                    textSize: 25,
                    fillColor: 0xFF757575,
                    callback: btnOnClick,
                  ),

                  CalculatorButton(text: '0',
                    textSize: 35,
                    fillColor: 0xFF757575,
                    callback: btnOnClick,
                  ),

                  CalculatorButton(text: '00',
                    textSize: 30,
                    fillColor: 0xFF757575,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(text: '=',
                    textSize: 35,
                    fillColor: 0xFFffba00,
                    callback: btnOnClick,
                  ),
                ],
              ),
            ], ),
        ),
      ),
    );
  }
}