// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonalRes _$PersonalResFromJson(Map<String, dynamic> json) => PersonalRes(
      status: json['state'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$PersonalResToJson(PersonalRes instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
