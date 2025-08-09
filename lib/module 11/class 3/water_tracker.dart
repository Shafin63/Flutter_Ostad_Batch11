import 'package:flutter/material.dart';
import 'package:flutter1/module%2011/class%203/widgets/AddWaterButton.dart';

class WaterTracker extends StatefulWidget {
  const WaterTracker({super.key});

  @override
  State<WaterTracker> createState() => _WaterTrackerState();
}

class _WaterTrackerState extends State<WaterTracker> {
  int currentInTake =0;
  final int goal = 5000;

  void waterAdd(int amount){
    setState(() {
      currentInTake = (currentInTake + amount).clamp(0, goal);

    });
  }

  void resetButton(){
    setState(() {
      currentInTake = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    double progress = (currentInTake/goal).clamp(0, 1);
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        title: Text("Water Tracker"),
        backgroundColor: Colors.blue[400],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(80),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      "Water Left in Tank:",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "$currentInTake L",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.grey,
                      strokeWidth: 14,
                      // strokeAlign: 5,
                      value: progress,
                    ),
                  ),
                  Text(
                    "${(progress * 100).toInt()}%",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ],
              ),
              Wrap(
                children: [
                  AddWaterButton(amount: 200, onClick: ()=> waterAdd(200), icon: Icons.local_drink),
                  AddWaterButton(amount: 500, onClick: () => waterAdd(500),),
                  AddWaterButton(amount: 1000, onClick: () => waterAdd(1000),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){resetButton();}, child: Text("Reset"),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

