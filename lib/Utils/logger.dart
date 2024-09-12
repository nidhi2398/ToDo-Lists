import 'package:logger/logger.dart';

logger(Type? type) => Logger(printer: CustomLogger(type.toString()));

class CustomLogger extends LogPrinter {
  final String className;
  CustomLogger(this.className);
  @override
  List<String> log(LogEvent event) {
    final color = PrettyPrinter.doubleDivider;
    final emoji = PrettyPrinter.doubleDivider;
    final message = event.message;
    return [color!];
  }

}