import 'package:flutter/material.dart';

class FlutterClass2 extends StatelessWidget {
  const FlutterClass2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.cyan[100],
      // backgroundColor: Colors.cyan.withOpacity(0.7),
      backgroundColor: Colors.cyan.shade200,
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade500,
        title: Text("Flutter Class 3"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black26,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                print("You have clicked!");
              },
              child: Text("Submit"),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              // width: 200,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  print("You have clicked!");
                },
                child: Text("Submit"),
              ),
            ),
            SizedBox(height: 10),

            OutlinedButton(onPressed: () {}, child: Text("Outlined Button")),
            TextButton(
              onPressed: () {},
              child: Text("Text Button"),
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  letterSpacing: 7,
                ),
              ),
            ),
            Icon(
              Icons.account_circle_rounded,
              size: 50,
              color: Colors.cyanAccent,
            ),
            IconButton(
              onPressed: () {
                print("Time's up!!!");
              },
              icon: Icon(Icons.timer),
      color: Colors.redAccent,
      iconSize: 70,
    ),
            GestureDetector(
              onTap: () {print("Clicked!");},
              child: Text(
                "This is gesture detector test!",
                style: TextStyle(fontSize: 30),
              ),
            ),
            InkWell(
              onTap: () {print("Inkwell tap test!");},
              child: Text(
                "This is inkwell test!",
                style: TextStyle(fontSize: 30),
              ),
            ),

            Padding(
              // padding: EdgeInsets.all(50),
              // padding: EdgeInsets.only(left: 10, right: 20, top: 8, bottom: 8),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Text (
                "This is padding text",
                style: TextStyle(fontSize: 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
