import 'package:json_annotation/json_annotation.dart';
part 'login_req.g.dart';

@JsonSerializable()
class LoginReq {
  String cellphone;

  LoginReq(this.cellphone);
  Map<String, dynamic> toJson() => _$LoginReqToJson(this);
}
