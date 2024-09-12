// lib/presentation/screens/todo_list_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/Config/baseUrl.dart';
import 'package:todo/todo/data/data_sources/todo_dataSources.dart';
import 'package:todo/todo/data/repositories/todo_repository_impl.dart';
import 'package:todo/todo/domain/entities/todo.dart';
import 'package:todo/todo/domain/use_cases/get_todo_use_cases.dart';
import 'package:todo/todo/presentation/manager/todo_controller.dart';
import '../../data/data_sources/todo_remote_data_source.dart';
import '../../data/data_sources/todo_local_data_source.dart';
import 'package:dio/dio.dart';


class TodoListScreen extends StatefulWidget {
  @override

  _TodoListScreenState createState() => _TodoListScreenState();

}

class _TodoListScreenState extends State<TodoListScreen> {
  var todoController = Get.put(ToDoController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo Listsss'),
      ),
      body: FutureBuilder<List<Todo>>(
        future: todoController.getTodosUseCase.execute(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            final todos = snapshot.data!;
            return ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final todo = todos[index];
                return ListTile(
                  title: Text(todo.todo),
                  subtitle: Text('Completed: ${todo.completed}'),
                );
              },
            );
          }
        },
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: TodoListScreen(),
//   ));
// }
