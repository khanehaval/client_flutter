// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advisor_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvisorRes _$AdvisorResFromJson(Map<String, dynamic> json) => AdvisorRes(
      address: json['address'] as String,
      userToken: json['userToken'] as String?,
      userId: json['userId'] as int,
      group: json['group'] as String?,
    );

Map<String, dynamic> _$AdvisorResToJson(AdvisorRes instance) {
  final val = <String, dynamic>{
    'address': instance.address,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userToken', instance.userToken);
  val['userId'] = instance.userId;
  writeNotNull('group', instance.group);
  return val;
}
