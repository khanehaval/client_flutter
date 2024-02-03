// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advisor_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvisorReq _$AdvisorReqFromJson(Map<String, dynamic> json) => AdvisorReq(
      json['firstName'] as String,
      json['lastName'] as String,
      json['userName'] as String,
      json['imgUrl'] as String,
      json['advisorArea'] as String,
      json['address'] as String,
    );

Map<String, dynamic> _$AdvisorReqToJson(AdvisorReq instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userName': instance.userName,
      'imgUrl': instance.imgUrl,
      'advisorArea': instance.advisorArea,
      'address': instance.address,
    };
