import 'package:flutter/material.dart';
import 'package:flutter1/module%2012/class_2_ToDo%20Project/todo_class.dart';

class AddNewTodoScreen extends StatefulWidget {
  const AddNewTodoScreen({super.key});

  @override
  State<AddNewTodoScreen> createState() => _AddNewTodoScreenState();
}

class _AddNewTodoScreenState extends State<AddNewTodoScreen> {
  final TextEditingController _titleTEcontroller = TextEditingController();
  final TextEditingController _descriptionTEcontroller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add New Todo")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (String? value) {
                  if(value?.trim().isEmpty ?? true) {
                    return "Enter a valid title";
                  }
                  return null;
                },
                controller: _titleTEcontroller,
                decoration: InputDecoration(hintText: "Title"),
              ),
              SizedBox(height: 10),
              TextFormField(
                validator: (String? value) {
                  if(value?.trim().isEmpty ?? true) {
                    return "Enter a valid description";
                  }
                  return null;
                },
                controller: _descriptionTEcontroller,
                decoration: InputDecoration(hintText: "Description"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() == false) {
                    return;
                  }
                  Todo todo = Todo(
                    title: _titleTEcontroller.text.trim(),
                    description: _descriptionTEcontroller.text. trim(),
                    status: "Pending",
                    createdDate: DateTime.now(),
                  );
                  Navigator.pop(context, todo);
                },
                child: Text("Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
