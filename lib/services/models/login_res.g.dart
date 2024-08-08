// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRes _$LoginResFromJson(Map<String, dynamic> json) => LoginRes(
      state: json['state'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$LoginResToJson(LoginRes instance) => <String, dynamic>{
      'status': instance.state,
      'message': instance.message,
    };
