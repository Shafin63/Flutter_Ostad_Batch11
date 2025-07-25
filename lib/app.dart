import 'package:flutter/material.dart';
import 'package:flutter1/module%208/class_1.dart';
import 'package:flutter1/module%208/class_2.dart';
import 'package:flutter1/module%208/class_3.dart';
import 'package:flutter1/module%208/class_3_stack.dart';
import 'package:flutter1/module_7_class_3.dart';

import 'module 8/class_2_List_View.dart';

class MyApp extends StatelessWidget {
  MyApp ({super.key});
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        // If you want the old Material 2 look, also set:
        useMaterial3: false,
      ),
      title: "Batch 11 Flutter",
      home: Module8Class3Stack(),

    );

  }

}