import 'package:flutter/material.dart';
import 'package:flutter1/module%2012/class_2_ToDo%20Project/add_new_todo.dart';
import 'package:flutter1/module%2012/class_2_ToDo%20Project/todo_class.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Todo> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("To-do List")),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          Todo todo = todoList[index];
          return ListTile(
            onLongPress: () {
              todoList.removeAt(index);
              setState(() {});
            },
            title: Text(todo.title),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(todo.description),
                Text("Created Date: ${todo.createdDate}"),
              ],
            ),
            trailing: Text(todo.status),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Todo todo = Todo(
          //   id: 1,
          //   title: "Dummy Title",
          //   description: "sample description",
          //   status: "Pending",
          //   createdDate: DateTime.now(),
          // );
          // todoList.add(todo);
          // setState(() {
          //
          // });
          Todo? todo = await Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AddNewTodoScreen();
          }));
          if(todo != null) {
            todoList.add(todo);
            setState(() {});
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


