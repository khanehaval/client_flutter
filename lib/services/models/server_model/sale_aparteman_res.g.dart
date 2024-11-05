// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_aparteman_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaleApartemanRes _$SaleApartemanResFromJson(Map<String, dynamic> json) =>
    SaleApartemanRes(
      status:
          json['status'] as bool? ?? false, // اگر null بود، مقدار false بگیرد
      message:
          json['message'] as String? ?? '', // اگر null بود، مقدار خالی بگیرد
    );

Map<String, dynamic> _$SaleApartemanResToJson(SaleApartemanRes instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
