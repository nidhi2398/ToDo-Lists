import 'package:flutter/material.dart';
import 'package:todo/Utils/logger.dart';
import 'package:todo/todo/domain/entities/todo.dart';
import 'package:todo/todo/domain/repositories/todo_repository.dart';

class GetTodosUseCase {
  // final TodoRepository repository;
  //
  // GetTodosUseCase(this.repository);
  // final smartLogger = logger(GetTodosUseCase);
  TodoRepository repository;
  GetTodosUseCase(this.repository);

  Future<List<Todo>> execute() async {
    debugPrint("todo debugging okay ");
    return repository.getTodos();
  }
}