import 'dart:convert';

import 'package:dartz/dartz.dart';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo/Config/baseUrl.dart';
import 'package:todo/todo/data/models/todo_info_model.dart';

class ToDoDataSources {
  const ToDoDataSources({
    required this.dio,
  });
  final Dio dio;

  @override
  Future getData() async {
    debugPrint("debuggings ");
    print("debugging");
    final response = await dio.get(baseUrl);

print(response);
    if (response.statusCode == 200) {
      print("############1111");
      print(response.data['todos'] as List<dynamic>);
      print("############");

      return Right(
        (response.data['todos'] as List<dynamic>)
            .map(
              (e) => ToDOModel.fromJson(e as Map<String, dynamic>),
        )
            .toList(),
      );

      // return ToDOModel.fromJson(response.data['todos']);
      return json.decode(json.encode(response.data));
    }
    else{
      print("fejfhffffffffffffffff");
    }
  }
}