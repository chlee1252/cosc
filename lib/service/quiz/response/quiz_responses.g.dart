// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuizResponses _$QuizResponsesFromJson(Map<String, dynamic> json) =>
    QuizResponses(
      quizResponses: (json['quizResponses'] as List<dynamic>)
          .map((e) => Quiz.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuizResponsesToJson(QuizResponses instance) =>
    <String, dynamic>{
      'quizResponses': instance.quizResponses,
    };
