import 'package:flutter/material.dart';
import 'package:flutter1/module%208/class_1.dart';
import 'package:flutter1/module%208/class_2.dart';
import 'package:flutter1/module%208/class_3.dart';
import 'package:flutter1/module%208/class_3_stack.dart';
import 'package:flutter1/module_7_class_3.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        useMaterial3: false, // for old Material 2 look
      ),
      title: "Batch 11 Flutter",
      // home: Module9Class2(),
      // home: Module10Assignment(),
      home: Class2CustomWidget(),


    );

  }

}