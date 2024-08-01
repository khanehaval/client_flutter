// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_verification_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendVerificationRes _$SendVerificationResFromJson(Map<String, dynamic> json) =>
    SendVerificationRes(
      status: json['status'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SendVerificationResToJson(
        SendVerificationRes instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      token: json['token'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      cellphone: json['cellphone'] as String,
      type: json['type'] as String,
      subscriberType: json['subscriberType'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'cellphone': instance.cellphone,
      'type': instance.type,
      'subscriberType': instance.subscriberType,
    };
