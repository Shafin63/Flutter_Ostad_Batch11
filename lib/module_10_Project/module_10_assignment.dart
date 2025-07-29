import 'package:flutter/material.dart';

class Module10Assignment extends StatelessWidget {
  const Module10Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello, World!", style: TextStyle(
              color: Colors.red,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 20,),
            Text("Welcome to Flutter!", style: TextStyle(
              fontSize: 16,
            ),),
            Image.network("https://storage.googleapis.com/cms-storage-bucket/icon_flutter.0dbfcc7a59cd1cf16282.png", width: 100, height: 200,),
            SizedBox(height: 20,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Button Pressed!"))
                  );
                }, child: Text("Press me", style: TextStyle(
              color: Colors.white,
            ),))

          ],
        ),
      )
    );
  }
}
