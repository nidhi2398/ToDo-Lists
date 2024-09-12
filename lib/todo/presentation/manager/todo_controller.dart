import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:todo/Config/app/injector.dart';
import 'package:todo/todo/data/data_sources/todo_dataSources.dart';
import 'package:todo/todo/data/repositories/todo_repository_impl.dart';
import 'package:todo/todo/domain/use_cases/get_todo_use_cases.dart';

class ToDoController extends GetxController{
  var getTodosUseCase = getIt.get<GetTodosUseCase>();
  // late final GetTodosUseCase getTodosUseCase;

  @override
  void onInit() {
    print("controller");
    // super.onInit();
    // Initialize the dependencies
    // final dio = Dio();
    final todoRepository = TodoRepositoryImpl(
      // TodoRemoteDataSource(),
      // TodoLocalDataSource(),
        ToDoDataSources(dio:dio)
    );
    getTodosUseCase = GetTodosUseCase(todoRepository);
    print(getTodosUseCase.repository.toString());
    print(";;;;;;;,,,,,,,");
  }
}