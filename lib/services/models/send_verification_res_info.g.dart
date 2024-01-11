// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_verification_res_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendVerificationResInfo _$SendVerificationResInfoFromJson(
        Map<String, dynamic> json) =>
    SendVerificationResInfo(
      user_id: json['user_id'] as String,
      user_token: json['user_token'] as String,
      user_title: json['user_title'] as String,
    );

Map<String, dynamic> _$SendVerificationResInfoToJson(
        SendVerificationResInfo instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'user_token': instance.user_token,
      'user_title': instance.user_title,
    };
