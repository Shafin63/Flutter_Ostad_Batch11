import 'package:flutter/material.dart';

class Module8Class3 extends StatelessWidget {
  const Module8Class3({super.key});

  @override
  Widget build(BuildContext context) {
    // ,),
    return Scaffold(
      appBar: AppBar(
        title: Text("Module 8 Class 3 Gird View"),
      ),
      // body:  GridView.count(
      //     crossAxisCount: 3,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10,
      // children:
      //   // Container(
      //   //   height: 200,
      //   //   width: 200,
      //   //   color: Colors.red,
      //   // ),
      //   // Container(
      //   //   height: 200,
      //   //   width: 200,
      //   //   color: Colors.purple,
      //   // ),
      //   // Container(
      //   //   height: 200,
      //   //   width: 200,
      //   //   color: Colors.blueAccent,
      //   // ),
      //   // Container(
      //   //   height: 200,
      //   //   width: 200,
      //   //   color: Colors.pink,
      //   // ),,
      //   List.generate(50, (index) {
      //     return Card(
      //       elevation: 20,
      //       shape: RoundedRectangleBorder(
      //           borderRadius:BorderRadius.circular(20)),
      //       color: Colors.purple[400],
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Icon(Icons.phone_android, size: 30, color: Colors.grey,),
      //           Icon(Icons.apple, size: 30, color: Colors.white,),
      //           SizedBox(height: 5,),
      //           Text("Android",
      //           style: TextStyle(
      //               fontWeight: FontWeight.bold, fontSize: 20),),
      //           Text("iPhone", style: TextStyle(
      //               fontWeight: FontWeight.bold, fontSize: 20),),
      //         ],
      //       ),
      //     );
      //   })
      //
      // ,),

      body:  GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 20,
      itemBuilder: (context, index) {
        return Card(
          elevation: 20,
          shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(20)),
          color: Colors.purple[400],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone_android, size: 30, color: Colors.grey,),
              Icon(Icons.apple, size: 30, color: Colors.white,),
              SizedBox(height: 5,),
              Text(index.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20),),
              Text("iPhone", style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20),),
            ],
          ),
        );
      },

    ));
  }
}
