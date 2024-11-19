import 'package:json_annotation/json_annotation.dart';

part 'sale_aparteman_res.g.dart';

@JsonSerializable()
class SaleApartemanRes {
  final bool status;
  final String? message; // تغییر به نوع nullable

  SaleApartemanRes({required this.status, this.message});

  factory SaleApartemanRes.fromJson(Map<String, dynamic> json) =>
      _$SaleApartemanResFromJson(json);

  Map<String, dynamic> toJson() => _$SaleApartemanResToJson(this);
}
