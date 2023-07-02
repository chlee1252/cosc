import 'package:json_annotation/json_annotation.dart';

part 'quiz.g.dart';

@JsonSerializable()
class Quiz {
  int id;
  String title;
  String desc;
  String type;
  bool correct;
  bool solved;

  Quiz(
      {this.id = 0,
      this.title = "",
      this.desc = "",
      this.type = "",
      this.correct = false,
      this.solved = false});

  factory Quiz.fromJson(Map<String, dynamic> json) => _$QuizFromJson(json);
  Map<String, dynamic> toJson() => _$QuizToJson(this);
}
