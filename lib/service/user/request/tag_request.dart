import 'package:json_annotation/json_annotation.dart';

part 'tag_request.g.dart';

@JsonSerializable()
class TagRequest {
  String? tagName;

  TagRequest({this.tagName});

  factory TagRequest.fromJson(Map<String, dynamic> json) => _$TagRequestFromJson(json);
  Map<String, dynamic> toJson() => _$TagRequestToJson(this);
}