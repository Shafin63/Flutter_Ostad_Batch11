// Create an app for managing To-do
// requirements- id, title, description, status (pending, in progress, done), date/time
// List will hold the todos
// new screen for creating todos

import 'package:flutter/material.dart';
import 'home_screen.dart';

void main () {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
