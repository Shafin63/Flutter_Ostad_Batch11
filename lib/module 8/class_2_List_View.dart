import 'package:flutter/material.dart';

class ListV extends StatefulWidget {
  final name;
  const ListV({super.key, required this.name});

  @override
  State<ListV> createState() => _ListVState();
}

class _ListVState extends State<ListV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Module 8 Class 2 List View"),
      ),
      body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.phone),
                trailing: Icon(Icons.delete, color: Colors.red,),
                title: Text("Shafin"),
                subtitle: Text(widget.name),

              ),
            );
          }),
    );
  }
}