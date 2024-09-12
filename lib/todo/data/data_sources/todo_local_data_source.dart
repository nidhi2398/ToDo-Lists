import 'package:todo/todo/domain/entities/todo.dart';

class TodoLocalDataSource {
  Future<List<Todo>> fetchLocalTodos() async {
    // Fetch todos from local database or storage
    // Mock data for simplicity
    return [
      Todo(id: 3, todo: 'Local Task 1', completed: false),
      Todo(id: 4, todo: 'Local Task 2', completed: true),
    ];
  }
}