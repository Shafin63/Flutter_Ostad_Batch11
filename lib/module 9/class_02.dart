import 'package:flutter/material.dart';
class Module9Class2 extends StatelessWidget {
  const Module9Class2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Module 9 Class 2"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/135139167?v=4"),
                ),
                SizedBox(height: 10,),
                Text("Mohammad Shafin", style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 5,),
                Text("mohammadshafin63@gmail.com", style: TextStyle(
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                ),),
              ],
            )),
            ListTile(
              title: Text("Home"),
              onTap: (){},
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text("My CV"),
              onTap: (){},
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text("Contact Me"),
              onTap: (){},
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text("Report"),
              onTap: (){},
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text("About Me"),
              onTap: (){},
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text("About Me"),
              onTap: (){},
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text("About Me"),
              onTap: (){},
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text("About Me"),
              onTap: (){},
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text("About Me"),
              onTap: (){},
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text("About Me"),
              onTap: (){},
            ),
            Divider(
              thickness: 1,
            ),

          ],
        ),

      ),
    );
  }
}
