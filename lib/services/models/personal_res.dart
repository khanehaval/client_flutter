import 'package:json_annotation/json_annotation.dart';

part 'personal_res.g.dart';

@JsonSerializable(includeIfNull: false)
class PersonalRes {
  String status;
  String message;

  PersonalRes({required this.status, required this.message});

  factory PersonalRes.fromJson(Map<String, dynamic> json) =>
      _$PersonalResFromJson(json);
  Map<String, dynamic> toJson() => _$PersonalResToJson(this);
}
