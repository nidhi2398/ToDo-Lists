import 'package:get/get.dart';
import 'package:todo/todo/presentation/pages/todo_list_screen.dart';

class Routes {
  static String todo = "/todo_list_screen";

  static String getToDoRoute() => todo;

  static List<GetPage> routes = [
    GetPage(
    name: todo,
    page: () => TodoListScreen(),
  ),
  ];
}