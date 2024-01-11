// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRes _$LoginResFromJson(Map<String, dynamic> json) => LoginRes(
      code: json['code'] as int,
      status: json['status'] as int,
      userToken: json['userToken'] as String?,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$LoginResToJson(LoginRes instance) {
  final val = <String, dynamic>{
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userToken', instance.userToken);
  val['userId'] = instance.userId;
  val['code'] = instance.code;
  return val;
}
