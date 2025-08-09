import 'package:flutter/material.dart';
import 'package:flutter1/exam_week_2/exam_week_2.dart';
import 'package:flutter1/module%208/class_1.dart';
import 'package:flutter1/module%208/class_2.dart';
import 'package:flutter1/module%208/class_3.dart';
import 'package:flutter1/module%208/class_3_stack.dart';
import 'package:flutter1/module%209/class_3.dart';
import 'package:flutter1/module_7_class_3.dart';

import 'module 11/class 3/water_tracker.dart';
import 'module 11/module_11_class_1.dart';
import 'module 11/class 2/module_11_class_2.dart';
import 'module 8/class_2_List_View.dart';
import 'module 9/class_01.dart';
import 'module 9/class_02.dart';
import 'module 9/class_2_custom_widget.dart';
import 'module_10_Project/module_10_assignment.dart';

class MyApp extends StatelessWidget {
  MyApp ({super.key});
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false, // for old Material 2 look

        // appBarTheme: AppBarTheme(
        //     color: Colors.teal.shade300,
        //     elevation: 20,
        //     titleTextStyle: TextStyle(fontSize: 18)
        // ),
        // primarySwatch: Colors.teal,
        // scaffoldBackgroundColor: Colors.teal.shade400,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: TextStyle(fontSize: 30),
            backgroundColor: Colors.teal.shade900,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
          ),
        ),
        // textTheme: TextTheme(
        //   headlineLarge: TextStyle(fontSize: 35)
        // ),

      ),
      title: "Batch 11 Flutter",
      // home: CounterApp(),
      home: WaterTracker(),


      // initialRoute: "/class3",
      // routes: {
      //   "/assignment" : (context) => Module10Assignment(),
      //   "/class1" : (context) => Class2CustomWidget(),
      //   "/class2" : (context) => Module8Class3Stack(),
      //   "/class3" : (context) => Module9Class3(),
      //
      // },
      // home: Module9Class2(),
      // home: Module10Assignment(),
      // home: Class2CustomWidget(),
      // home: Module9Class3(),



    );

  }

}