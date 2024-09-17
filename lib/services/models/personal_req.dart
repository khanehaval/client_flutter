import 'package:json_annotation/json_annotation.dart';

part 'personal_req.g.dart';

@JsonSerializable()
class PersonalReq {
  String firstName;
  String lastName;
  String userName;
  String nationalCode;
  String nationalCardImg;

  PersonalReq({
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.nationalCode,
    required this.nationalCardImg,
  });

  factory PersonalReq.fromJson(Map<String, dynamic> json) =>
      _$PersonalReqFromJson(json);
  Map<String, dynamic> toJson() => _$PersonalReqToJson(this);
}
