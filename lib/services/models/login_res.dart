import 'package:json_annotation/json_annotation.dart';

part 'login_res.g.dart';

@JsonSerializable(includeIfNull: false)
class LoginRes {
  String status;
  String message;

  LoginRes({required this.status, required this.message});

  static LoginRes fromJson(dynamic data) => _$LoginResFromJson(data);
}
