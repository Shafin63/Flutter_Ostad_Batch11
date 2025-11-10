import 'package:flutter/material.dart';
import 'package:state_management_with_provider/counter_inherited_widget.dart';
import 'package:state_management_with_provider/counter_notifier.dart';
import 'package:state_management_with_provider/counter_controller.dart';
import 'package:state_management_with_provider/screens/reset_password_screen.dart';

import '../counter_controller_inheritied_widget.dart';
import '../counter_widget.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  // final CounterController counterController;

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    // CounterNotifier counterNotifier = CounterNotifier();
    final CounterController counterController =
        CounterControllerInheritedWidget.of(context)!.counterController;
    return Scaffold(
      appBar: AppBar(title: Text("About")),
      body: Center(
        child: Column(
          children: [
            ListenableBuilder(
              listenable: counterController,
              builder: (context, child) {
                return Text(counterController.counter.toString());
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    counterController.decrement();
                  },
                  icon: Icon(Icons.remove),
                ),
                IconButton(
                  onPressed: () {
                    counterController.increment();
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
