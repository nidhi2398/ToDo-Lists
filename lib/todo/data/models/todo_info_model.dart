// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:meme_app/domain/entities/memes.dart';
//
// part 'memes_model.freezed.dart';
// part 'memes_model.g.dart';
//
// @freezed
// class MemesModel extends Memes with _$MemesModel {
//   const factory MemesModel({
//     required String id,
//     required String name,
//     required String url,
//     required int width,
//     required int height,
//     // ignore: invalid_annotation_target
//     @JsonKey(name: 'box_count') int? boxCount,
//   }) = _MemesModel;
//
//   factory MemesModel.fromJson(Map<String, dynamic> json) =>
//       _$MemesModelFromJson(json);
// }
import 'package:json_annotation/json_annotation.dart';
import 'package:todo/todo/domain/entities/todo.dart';

@JsonSerializable()
class ToDOModel extends Todo {
  ToDOModel({required super.id, required super.todo, required super.completed});

  factory ToDOModel.fromJson(Map<String, dynamic> json) => _$ToDOModelFromJson(json);

  // Map<String, dynamic> toJson() => _$ToDOModel(this);
}

ToDOModel _$ToDOModelFromJson(Map<String, dynamic> json) =>
    ToDOModel(
      id: json['id'] as int,
      todo: json['todo'] as String,
      completed: json['completed'] as bool
    );

// Map<String, dynamic> _$LoginResponseEntityToJson(
//     LoginResponseEntity instance) =>
//     <String, dynamic>{
//       'name': instance.name,
//       'phone': instance.phone,
//       'email': instance.email,
//       'accessToken': instance.accessToken,
//       'refreshToken': instance.refreshToken,
//     };
