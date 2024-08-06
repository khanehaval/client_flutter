// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************
PersonalRes _$PersonalResFromJson(Map<String, dynamic> json) {
  try {
    return PersonalRes(
      status: json['status??'] as String,
      message: json['message??'] as String,
    );
  } catch (e) {
    // Handle error and return a default value or throw a custom exception
    print('Error deserializing PersonalRes: $e');
    // Optionally, you can throw a custom exception or return a default instance
    throw Exception('Failed to deserialize PersonalRes');
  }
}

Map<String, dynamic> _$PersonalResToJson(PersonalRes instance) {
  try {
    return <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
  } catch (e) {
    // Handle error and return an empty map or throw a custom exception
    print('Error serializing PersonalRes: $e');
    // Optionally, you can throw a custom exception
    throw Exception('Failed to serialize PersonalRes');
  }
}
