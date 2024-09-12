import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:todo/todo/data/data_sources/todo_dataSources.dart';
import 'package:todo/todo/data/data_sources/todo_local_data_source.dart';
import 'package:todo/todo/data/data_sources/todo_remote_data_source.dart';
import 'package:todo/todo/domain/entities/todo.dart';
import 'package:todo/todo/domain/repositories/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  // final TodoRemoteDataSource remoteDataSource;
  // final TodoLocalDataSource localDataSource;
  final ToDoDataSources tododatasources;

  // TodoRepositoryImpl(this.remoteDataSource, this.localDataSource, this.tododatasources);
  TodoRepositoryImpl(this.tododatasources);

  @override
  Future<List<Todo>> getTodos() async {
    debugPrint("repo debuggin ");
    // Use remote data source as the primary source
    // final remoteTodos = await remoteDataSource.fetchTodos();

    final dataTodos = await tododatasources.getData();
    // Use local data source as a fallback or for additional data
    // final localTodos = await localDataSource.fetchLocalTodos();

    // Merge the data from both sources
    // return [...remoteTodos, ...localTodos, ...dataTodos];
    return [...dataTodos];

  }


}