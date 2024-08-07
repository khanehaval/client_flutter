// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonalReq _$PersonalReqFromJson(Map<String, dynamic> json) => PersonalReq(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      userName: json['userName'] as String,
      nationalCode: json['nationalCode'] as String,
      nationalCardImg: json['nationalCardImg'] as String,
    );

Map<String, dynamic> _$PersonalReqToJson(PersonalReq instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userName': instance.userName,
      'nationalCode': instance.nationalCode,
      'nationalCardImg': instance.nationalCardImg,
    };
