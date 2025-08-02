import 'package:flutter/material.dart';

import '../module_10_Project/module_10_assignment.dart';

class Module9Class3 extends StatelessWidget {
  const Module9Class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Module 9 Class 03 Advanced Navigation/Routing"),
      ),
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/assignment');
              },
              child: Text("Assignment"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/class1');
              },
              child: Text("Custom Widget"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/class2');
              },
              child: Text("Stack"),
            ),

            ElevatedButton(onPressed: () {
              Navigator.push(context, PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => Module10Assignment(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    const begin = Offset(3.0, 0);
                    const end = Offset.zero;
                    const curve = Curves.ease;

                    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                    return SlideTransition(position: animation.drive(tween), child: child,);
                  }
              ));
            }, child: Text("Assignment 2")),
          ],
        ),
      ),
    );
  }
}
