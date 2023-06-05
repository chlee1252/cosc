// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Quiz _$QuizFromJson(Map<String, dynamic> json) => Quiz(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? "",
      desc: json['desc'] as String? ?? "",
      type: json['type'] as String? ?? "",
      correct: json['correct'] as bool? ?? false,
      solved: json['solved'] as bool? ?? false,
    );

Map<String, dynamic> _$QuizToJson(Quiz instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'desc': instance.desc,
      'type': instance.type,
      'correct': instance.correct,
      'solved': instance.solved,
    };
