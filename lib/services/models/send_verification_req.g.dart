// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_verification_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendVerificationReq _$SendVerificationReqFromJson(Map<String, dynamic> json) =>
    SendVerificationReq(
      cellphone: json['cellphone'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$SendVerificationReqToJson(
        SendVerificationReq instance) =>
    <String, dynamic>{
      'cellphone': instance.cellphone,
      'code': instance.code,
    };
