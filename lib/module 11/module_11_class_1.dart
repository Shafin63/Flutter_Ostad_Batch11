import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
   CounterApp({super.key}) {
    print("1 Constructor");
  }

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    // int number = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        backgroundColor: Colors.teal,
        elevation: 20,
        centerTitle: true,
      ),
      body: Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(number.toString(), style: TextStyle(
            fontSize: 70,
            fontWeight: FontWeight.bold,
          ),),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  number--;
                  // print(number);
                });
              }, child: Text("-")),

              ElevatedButton(onPressed: () {
                setState(() {
                  number++;
                  // print(number);
                });
              }, child: Text("+"),),
            ],
          ),
        ],
      ),
    );
  }
}

