import 'package:json_annotation/json_annotation.dart';

part 'send_verification_req.g.dart';

@JsonSerializable(includeIfNull: false)
class SendVerificationReq {
  String address;
  String cellphone;
  int code;

  SendVerificationReq(
      {required this.address
      ,required this.cellphone,required this.code, });

  Map<String, dynamic> toJson() => _$SendVerificationReqToJson(this);
  
  _$SendVerificationReqToJson(SendVerificationReq sendVerificationReq) {}
}