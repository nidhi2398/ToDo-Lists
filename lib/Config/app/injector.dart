import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:todo/Config/app/flavour.dart';
import 'package:todo/todo/data/repositories/todo_repository_impl.dart';
import 'package:todo/todo/domain/repositories/todo_repository.dart';
import 'package:todo/todo/domain/use_cases/get_todo_use_cases.dart';

var getIt = GetIt.I;
var dio = Dio();

Future<void> init(FlavorEnum flavor) async {

  getIt.registerLazySingleton<GetTodosUseCase>(
        () => GetTodosUseCase(getIt.get<TodoRepository>()),
  );
}