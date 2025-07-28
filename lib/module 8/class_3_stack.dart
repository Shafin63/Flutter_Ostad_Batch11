import 'package:flutter/material.dart';

class Module8Class3Stack extends StatelessWidget {
  const Module8Class3Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Module 8 Class 3 'Stack'"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container( // box
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              Positioned(
                right: 50,
                bottom: 50,
                left: 50,
                top: 50,
                child: Container( //circle
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.pink[100],
                  ),
                ),
              ),
              Positioned(
                top: 30,
                bottom: 130,
                left: 160,
                right: 10,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Stack(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/32995925/pexels-photo-32995925.jpeg"),
              ),
              Positioned(
                bottom: 9,
                right: 7,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 3),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Stack(
            children: [
              Container(
                height: 5,
                width: double.infinity,
                color: Colors.grey,
              ),
              AnimatedContainer(
                  duration: Duration(seconds: 10),
                  height: 10,
                  width: 300,
                  color: Colors.blue,),
            ],
          ),
          SizedBox(height: 20,),
          Stack(
            children: [
              Image.network("https://images.pexels.com/photos/21541843/pexels-photo-21541843.jpeg"),
              Positioned(
                right: 150,
                // left: 150,
                bottom: 10,
                child: Text("Distorted", style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ],
          )
        ],
      )
    );
  }
}
