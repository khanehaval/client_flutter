
import 'package:json_annotation/json_annotation.dart';

part 'send_verification_res.g.dart';

@JsonSerializable(includeIfNull: false)

@JsonSerializable()
class SendVerificationRes {
  bool status;
  Data data;

  SendVerificationRes({
    required this.status,
    required this.data,
  });

  factory SendVerificationRes.fromJson(Map<String, dynamic> json) =>
      _$SendVerificationResFromJson(json);

  Map<String, dynamic> toJson() => _$SendVerificationResToJson(this);
}

@JsonSerializable()
class Data {
  String token;
  User user;

  Data({
    required this.token,
    required this.user,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class User {
  String id;
  String createdAt;
  String updatedAt;
  String cellphone;
  String type;
  String subscriberType;

  User({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.cellphone,
    required this.type,
    required this.subscriberType,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
