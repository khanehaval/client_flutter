import 'package:json_annotation/json_annotation.dart';

part 'send_verification_req.g.dart';

@JsonSerializable(includeIfNull: false)
class SendVerificationReq {
  String cellphone;
  String code;
  
  SendVerificationReq({
    required this.cellphone,
    required this.code,
  });

  Map<String, dynamic> toJson() => _$SendVerificationReqToJson(this);
}
