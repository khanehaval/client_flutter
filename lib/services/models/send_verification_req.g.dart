// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_verification_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendVerificationReq _$SendVerificationReqFromJson(Map<String, dynamic> json) =>
    SendVerificationReq(
      address: json['address'] as String,
      cellphone: json['cellphone'] as String,
      code: json['code'] as int, userId: '', token: '', 
    );

Map<String, dynamic> _$SendVerificationReqToJson(
        SendVerificationReq instance) =>
    <String, dynamic>{
      'address': instance.address,
      'cellphone': instance.cellphone,
      'code': instance.code,
    };
