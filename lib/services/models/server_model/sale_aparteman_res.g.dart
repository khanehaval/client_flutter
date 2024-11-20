// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_aparteman_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaleApartemanRes _$SaleApartemanResFromJson(Map<String, dynamic> json) =>
    SaleApartemanRes(
      status: json['status'] as bool,
      message:
          json['message'] as String? ?? 'No message available', // مقدار پیش‌فرض
    );

Map<String, dynamic> _$SaleApartemanResToJson(SaleApartemanRes instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
