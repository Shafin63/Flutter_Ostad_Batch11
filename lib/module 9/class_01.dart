import 'package:flutter/material.dart';

class Module9Class1 extends StatelessWidget {
  const Module9Class1({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    void showAlertDialog() {
      showDialog(context: context,
          barrierDismissible: false,
          builder: (context) => AlertDialog(
        title: Text("Delete File"),
        content: Text("Are you sure?"),
        actions: [
          TextButton(onPressed: () {
            Navigator.pop(context);
          }, child: Text("No")),
          ElevatedButton(onPressed: () {
            Navigator.pop(context);
          }, child: Text("Yes")),
        ],
      ));
    }
    void showAlertDialogWithIcons() {
      showDialog(context: context, builder: (context) => AlertDialog(
        title: Text("Installation Block"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Icons.warning, color: Colors.red, size: 30,),
                SizedBox(width: 20,),
                Text("Warning!"),
              ],
            ),
            SizedBox(height: 20,),
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            style: TextStyle(color: Colors.red, fontSize: 18,)),
          ],
        ),
        actions: [
          TextButton(onPressed: () {Navigator.pop(context);}, child: Text("Force Install")),
          ElevatedButton(onPressed: () {Navigator.pop(context);}, child: Text("Cancel")),

        ],
      ));
    }
    void showSimpleDialog() {
      showDialog(context: context, builder: (context) => SimpleDialog(
        title: Text("Simple Dialog Example"),
        children: [
          SimpleDialogOption(
            child: Text("Option-1"),
          ),
          SimpleDialogOption(
            child: TextField(),
          ),
        ],
      ));
    }

    void bottomSheet() {
      showModalBottomSheet(context: context, builder: (context) => Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20,),
            Text("Choose Action", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ListTile(
              onTap: (){},
              onLongPress: (){} ,
              title: Text("Option 01"),
            ),
            ListTile(
              title: Text("Option 01"),
            ),
            ListTile(
              title: Text("Option 01"),
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {
                Navigator.pop(context);
              }, child:  Text("Save")),
            ),

          ],
        ),
      ));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Module 9 Class 1 - Alert"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.red,
              width: screenSize.width*0.5,
              height: screenSize.height*0.2,
            ),
            Text("This is responsive Text", style: TextStyle(
              color: Colors.blue,
              fontSize: screenSize.width > 600 ? 32 : 18,
            ),),

            ElevatedButton(onPressed: () {
              showAlertDialog();
            }, child: Text("Alert Dialog")),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              showAlertDialogWithIcons();
            }, child: Text("Alert Dialog with Icons")),

            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              showSimpleDialog();
            }, child: Text("Simple Dialog")),

            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              bottomSheet();
            }, child: Text("Bottom Sheet")),
          ],
        ),
      ),
    );
  }
}
