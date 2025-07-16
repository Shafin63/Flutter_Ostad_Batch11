import 'package:flutter/material.dart';

class Module8Class1 extends StatelessWidget {
  const Module8Class1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Module 8 Class 1"),
        backgroundColor: Colors.cyan,
      ),
      body:
      Column(
        children: [
          Padding (
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter Your Number:",
                labelText: "Number de!!!",
                suffixIcon: Icon(Icons.phone),
                prefixIcon: Icon(Icons.call_made_sharp),
                labelStyle: TextStyle(
                  fontSize: 25,
                ),
                hintStyle: TextStyle (
                  fontSize: 30,
                  color: Colors.red,
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))
              ),
            ),
          )
        ],
      ),
    );
  }
}


