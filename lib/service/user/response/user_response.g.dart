// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) => UserResponse(
      correct: json['correct'] as int?,
      profile: json['profile'] as String?,
      solved: json['solved'] as int?,
      tagName: json['tagName'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'solved': instance.solved,
      'correct': instance.correct,
      'profile': instance.profile,
      'tagName': instance.tagName,
    };
