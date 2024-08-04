// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonalRes _$PersonalResFromJson(Map<String, dynamic> json) {
  return PersonalRes(
    status: json['status'] as String,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$PersonalResToJson(PersonalRes instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
