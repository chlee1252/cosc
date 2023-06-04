import 'package:json_annotation/json_annotation.dart';

part 'user_response.g.dart';

@JsonSerializable()
class UserResponse {
  String? uid;
  int? solved;
  int? correct;
  String? profile;
  String? tagName;

  UserResponse({this.correct, this.profile, this.solved, this.tagName, this.uid});

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);
  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}