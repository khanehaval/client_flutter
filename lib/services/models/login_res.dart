import 'package:json_annotation/json_annotation.dart';

part 'login_res.g.dart';

@JsonSerializable(includeIfNull: false)
class LoginRes {
  int status;
  String? userToken;
  int userId;
  int code;

  LoginRes(
      {required this.code,
      required this.status,
      this.userToken,
      required this.userId});

  static LoginRes fromJson(dynamic data) =>
      _$LoginResFromJson(data);
}
