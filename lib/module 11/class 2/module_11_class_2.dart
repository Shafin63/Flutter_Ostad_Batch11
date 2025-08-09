// import 'dart:core';
import 'package:flutter/material.dart';
import 'CalcBuildButton.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {

  String _output ='0';
  String _input ='0';
  String _ope = '';
  double _num1 =0;
  double _num2 = 0;

  void buttonPress(String value) {
    print(value);

    setState(() {
      if(value == "C") {
        _output = "0";
        _input ='0';
        _ope = '';
        _num1 =0;
        _num2 = 0;
      }
      else if (value == "=") {
        _num2 = double.parse(_input);
        if (_ope == "+") {
          _output = (_num1 + _num2).toString();
        }
        else if (_ope == "-") {
          _output = (_num1-_num2).toString();
        }
        else if (_ope == "x") {
          _output = (_num1*_num2).toString();
        }
        else if (_ope == "/") {
          _output = _num2 !=0 ? (_num1/_num2).toString() : "Error";
        }

      }
      else if (["+", "-", "x", "/"].contains(value)) {
        _num1 = double.parse(_input);
        _ope = value;
        _input = "";
      }
      else {
        if (_input == '0') {
          _input = value;
        } else {
          _input += value;
        }
        _output = _input;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(30),
              child: Text(_output, style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            ),
          ),
          Row(
            children: [
              CalcBuildButton(onClick: () => buttonPress("7"), text: '7',),
              CalcBuildButton(onClick: () => buttonPress("8"), text: '8',),
              CalcBuildButton(onClick: () => buttonPress("9"), text: '9',),
              CalcBuildButton(onClick: () => buttonPress("/"), text: '/', color: Colors.orange,),
            ],
          ),
          Row(
            children: [
              CalcBuildButton(onClick: () => buttonPress("4"), text: '4',),
              CalcBuildButton(onClick: () => buttonPress("5"), text: '5',),
              CalcBuildButton(onClick: () => buttonPress("6"), text: '6',),
              CalcBuildButton(onClick: () => buttonPress("x"), text: 'x', color: Colors.orange,),
            ],
          ),
          Row(
            children: [
              CalcBuildButton(onClick: () => buttonPress("1"), text: '1',),
              CalcBuildButton(onClick: () => buttonPress("2"), text: '2',),
              CalcBuildButton(onClick: () => buttonPress("3"), text: '3',),
              CalcBuildButton(onClick: () => buttonPress("-"), text: '-', color: Colors.orange,),
            ],
          ),
          Row(
            children: [
              CalcBuildButton(onClick: () => buttonPress("C"), text: 'C', color: Colors.orange,),
              CalcBuildButton(onClick: () => buttonPress("0"), text: '0',),
              CalcBuildButton(onClick: () => buttonPress("="), text: '=',),
              CalcBuildButton(onClick: () => buttonPress("+"), text: '+', color: Colors.orange,),
            ],
          ),
        ],
      ),
    );
  }
}



