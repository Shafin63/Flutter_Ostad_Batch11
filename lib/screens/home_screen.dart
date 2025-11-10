import 'package:flutter/material.dart';
import 'package:state_management_with_provider/counter_controller_inheritied_widget.dart';
import 'package:state_management_with_provider/counter_notifier.dart';
import 'package:state_management_with_provider/counter_widget.dart';
import 'package:state_management_with_provider/counter_controller.dart';
import 'package:state_management_with_provider/screens/reset_password_screen.dart';
import 'package:state_management_with_provider/screens/settings_screen.dart';

import '../counter_inherited_widget.dart';
import 'about_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final CounterNotifier counterNotifier = CounterNotifier();
  // final CounterController counterController = CounterController();
  @override
  Widget build(BuildContext context) {
    // final counterNotifier = CounterInheritedWidget.of(context)!.counterNotifier;
    final CounterController counterController =
        CounterControllerInheritedWidget.of(context)!.counterController;

    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Center(
        child: Column(
          children: [
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (ctx) => SettingsScreen()),
                );
              },
              child: Text("Settings"),
            ),

            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) =>
                        AboutScreen(),
                  ),
                );
              },
              child: Text("About"),
            ),
            FilledButton(onPressed: () {}, child: Text("Profile")),
            FilledButton(onPressed: () {}, child: Text("LogIn")),
            SizedBox(height: 20),

            ListenableBuilder(
              listenable: counterController,
              builder: (context, child) {
                return Text('${counterController.counter}');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: counterController.decrement,
                  icon: Icon(Icons.remove),
                ),
                IconButton(
                  onPressed: counterController.increment,
                  icon: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (ctx) => SettingsScreen()),
          );
        },
        child: Icon(Icons.settings),
      ),
    );
  }
}
