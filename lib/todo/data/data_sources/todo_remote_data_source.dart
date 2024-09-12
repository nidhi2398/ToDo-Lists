import 'package:todo/todo/domain/entities/todo.dart';

class TodoRemoteDataSource {
  Future<List<Todo>> fetchTodos() async {
    // Call a remote API to get todos
    // Mock data for simplicity
    return [
      Todo(id: 1, todo: 'Task 1', completed: false),
      Todo(id: 2, todo: 'Task 2', completed: true),
    ];
  }
}

// abstract class GetDataSources {
//   Future<Either<List<TodoModel>>> getToDo();
// }