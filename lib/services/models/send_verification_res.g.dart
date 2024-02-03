// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_verification_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendVerificationRes _$SendVerificationResFromJson(Map<String, dynamic> json) =>
    SendVerificationRes(
      json['status'] as int,
      (json['result'] as List<dynamic>)
          .map((e) =>
              SendVerificationResInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SendVerificationResToJson(
        SendVerificationRes instance) =>
    <String, dynamic>{
      'status': instance.status,
      'result': instance.result,
    };
