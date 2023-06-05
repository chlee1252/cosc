import 'package:cosc/domain/quiz/quiz.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quiz_responses.g.dart';

@JsonSerializable()
class QuizResponses {
  List<Quiz> quizResponses;

  QuizResponses({required this.quizResponses});

  factory QuizResponses.fromJson(Map<String, dynamic> json) =>
      _$QuizResponsesFromJson(json);
  Map<String, dynamic> toJson() => _$QuizResponsesToJson(this);
}
