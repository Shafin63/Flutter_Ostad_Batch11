import 'package:flutter/material.dart';

class ExamWeek2 extends StatelessWidget {
  const ExamWeek2({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController ageController = TextEditingController();
    TextEditingController salaryController = TextEditingController();

    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Add Employee", style: TextStyle(fontSize: 25,color: Colors.black, fontWeight: FontWeight.bold),),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Enter Your Name",
                labelText: "Name",
                labelStyle: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Your Age",
                labelText: "Age",
                labelStyle: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: salaryController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Your Salary",
                labelText: "Salary",
                labelStyle: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            height: 40,
            width: 130,
            child: ElevatedButton(onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                child: Text("Add Employee")),
          ),
        ],
      ),
    );
  }
}
