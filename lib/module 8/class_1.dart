import 'package:flutter/material.dart';

class Module8Class1 extends StatelessWidget {
  const Module8Class1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController numberController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Module 8 Class 1"),
        backgroundColor: Colors.cyan,
      ),
      body:
      Column(
        children: [
          Padding (
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              keyboardType: TextInputType.phone,
              controller: numberController,
              decoration: InputDecoration(
                hintText: "Enter Your Number:",
                labelText: "Number de!!!",
                suffixIcon: Icon(Icons.phone),
                prefixIcon: Icon(Icons.dialer_sip),
                labelStyle: TextStyle(
                  fontSize: 25,
                ),
                hintStyle: TextStyle (
                  fontSize: 30,
                  color: Colors.red,
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding (
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              obscureText: true,
              controller: passController,
              decoration: InputDecoration(
                  hintText: "Enter Your Password:",
                  labelText: "Password de!!!",
                  suffixIcon: Icon(Icons.password),
                  prefixIcon: Icon(Icons.lock),
                  labelStyle: TextStyle(
                    fontSize: 25,
                  ),
                  hintStyle: TextStyle (
                    fontSize: 30,
                    color: Colors.red,
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))
              ),
            ),
          ),
          SizedBox(
            width: 150, height: 50,
            child: ElevatedButton(
              onPressed: () {
                if (numberController.text.isEmpty)
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Please enter your phone number"))
                    );
                    // print("Please enter your phone number!");
                  }
                else if (numberController.text.length < 11)
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Please enter a valid number"))
                    );
                    // print('Please enter a valid number');
                  }
                else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Your entered number is:${numberController.text}"),)
                  );
                  // print("Your entered number is:${numberController.text}");
                }
                },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
                child: Text("Submit"),
            ),
          ),
          SizedBox(height: 15,),
          SizedBox(
            width: 150, height: 50,
            child: ElevatedButton(
              onPressed: () {
                numberController.clear();
                passController.clear();
                },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
                child: Text("Clear"),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            child: Text("This is a container"),
            // color: Colors.green, //if we use BoxDecoration we cannot use color outside
            height: 50,
            width: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  offset: Offset(5, 20),
                )
              ]

            ),
          )

        ],
      ),
    );
  }
}


