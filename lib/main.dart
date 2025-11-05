import 'package:flutter/material.dart';
import 'package:state_management_with_provider/counter_inherited_widget.dart';
import 'package:state_management_with_provider/counter_notifier.dart';
import 'package:state_management_with_provider/screens/home_screen.dart';

void main() {
  runApp(const StateManagementApp());
}

class StateManagementApp extends StatefulWidget {
  const StateManagementApp({super.key});

  @override
  State<StateManagementApp> createState() => _StateManagementAppState();
}

class _StateManagementAppState extends State<StateManagementApp> {
  // int counter = 0;

  @override
  Widget build(BuildContext context) {
    return CounterInheritedWidget(
      counterNotifier: CounterNotifier(),
      child: MaterialApp(
        title: "State Management App",
        theme: ThemeData(
          colorSchemeSeed: Colors.green,
          textTheme: TextTheme(
            titleLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: TextStyle(color: Colors.grey),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(horizontal: 16),
            border: OutlineInputBorder(borderSide: BorderSide.none),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
            errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
          ),
          filledButtonTheme: FilledButtonThemeData(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.green,
              fixedSize: Size.fromWidth(double.maxFinite),
              padding: EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
