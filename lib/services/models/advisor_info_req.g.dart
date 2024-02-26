// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advisor_info_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvisorInfoReq _$AdvisorInfoReqFromJson(Map<String, dynamic> json) =>
    AdvisorInfoReq(
      json['address'] as String,
      json['userId'] as int,
      json['token'] as String,
      json['group'] as int,
    );

Map<String, dynamic> _$AdvisorInfoReqToJson(AdvisorInfoReq instance) =>
    <String, dynamic>{
      'address': instance.address,
      'userId': instance.userId,
      'token': instance.token,
      'group': instance.group,
    };
