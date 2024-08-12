// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_aparteman_res.dart';

SaleApartemanRes _$SaleApartemanResFromJson(Map<String, dynamic> json) {
  try {
    final result = SaleApartemanRes(
      status: json['status'] as bool,
      message: json['message'] as String,
    );
    return result;
  } catch (e) {
    throw Exception('Error parsing JSON to SaleApartemanRes: $e');
  }
}

Map<String, dynamic> _$SaleApartemanResToJson(SaleApartemanRes instance) {
  try {
    final result = <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
    return result;
  } catch (e) {
    throw Exception('Error serializing SaleApartemanRes to JSON: $e');
  }
}
