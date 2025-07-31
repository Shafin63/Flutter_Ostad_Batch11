import 'package:flutter/material.dart';
import 'package:flutter1/module%208/class_1.dart';
import 'package:flutter1/module%208/class_2.dart';
import 'package:flutter1/module%208/class_3.dart';
import 'package:flutter1/module%208/class_3_stack.dart';
class Module9Class2 extends StatelessWidget {
  const Module9Class2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Module 9 Class 2"),
          
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: "Favourite",
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: "Settings",
            ),
          ]),
        ),
        body: TabBarView(
          children: [
          // Container(
          //   width: 200,
          //   color: Colors.teal,
          //   child: Center(child: Text("Home", style: TextStyle(fontSize: 20),)),
          // ),
          // Container(
          //   width: 200,
          //   color: Colors.blue,
          //   child: Center(child: Text("Favourite", style: TextStyle(fontSize: 20),)),
          // ),
          // Container(
          //   width: 200,
          //   color: Colors.red,
          //   child: Center(child: Text("Settings", style: TextStyle(fontSize: 20),)),
          // ),
            Module8Class3Stack(),
            Module8Class3(),
            Module8Class2(),
        ],

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
                dense: true,
                title: Text("Home"),
                onTap: (){},
              ),
              Divider(
                thickness: 1,
              ),
              ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 0,vertical: 0),
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
      ),
    );
  }
}
