import 'package:json_annotation/json_annotation.dart';

part 'sale_aparteman_res.g.dart';

@JsonSerializable()
class SaleApartemanRes {
  final bool status;
  SaleApartemanRes({
    required this.status,
  });

  factory SaleApartemanRes.fromJson(Map<String, dynamic> json) =>
      _$SaleApartemanResFromJson(json);

  Map<String, dynamic> toJson() => _$SaleApartemanResToJson(this);
}
