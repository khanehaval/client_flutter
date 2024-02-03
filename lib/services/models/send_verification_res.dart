import 'package:flutter_application_1/services/models/send_verification_res_info.dart';

import 'package:json_annotation/json_annotation.dart';

part 'send_verification_res.g.dart';

@JsonSerializable(includeIfNull: false)
class SendVerificationRes {
  int status;
  List<SendVerificationResInfo> result;

  SendVerificationRes(this.status, this.result);

  static SendVerificationRes fromJson(dynamic data) =>
      _$SendVerificationResFromJson(data);
}
