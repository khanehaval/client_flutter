// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRes _$LoginResFromJson(Map<String, dynamic> json) {
  try {
    return LoginRes(
      status: (json['status'] ?? "") as String,
      message: (json['message'] ?? "") as String,
    );
  } catch (e) {
    print("erorrrrrrrrrrrrrrrrrrrrrr \t ${e.toString()}");

    return LoginRes(status: 'status', message: "message");
  }
}

Map<String, dynamic> _$LoginResToJson(LoginRes instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
