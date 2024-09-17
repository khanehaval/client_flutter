import 'package:json_annotation/json_annotation.dart';

part 'sale_aparteman_res.g.dart';

@JsonSerializable(includeIfNull: false)
class SaleApartemanRes {
  bool status;
  String message;

  SaleApartemanRes({
    required this.status,
    required this.message,
  });

  factory SaleApartemanRes.fromJson(Map<String, dynamic> json) =>
      _$SaleApartemanResFromJson(json);

  Map<String, dynamic> toJson() => _$SaleApartemanResToJson(this);
}
