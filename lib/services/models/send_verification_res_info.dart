import 'package:json_annotation/json_annotation.dart';

part 'send_verification_res_info.g.dart';

@JsonSerializable()
class SendVerificationResInfo {
  String user_id;

  String user_token;
  String user_title;

  SendVerificationResInfo({required this.user_id,
    required this.user_token,
    required this.user_title});

  static SendVerificationResInfo fromJson(Map<String, dynamic> data) =>
      _$SendVerificationResInfoFromJson(data);
}
