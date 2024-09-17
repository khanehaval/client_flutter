import 'package:json_annotation/json_annotation.dart';

part 'sale_old_house_res.g.dart';

@JsonSerializable(includeIfNull: false)
class SaleOldHouseRes {
  bool status;
  String message;

  SaleOldHouseRes({
    required this.status,
    required this.message,
  });

  factory SaleOldHouseRes.fromJson(Map<String, dynamic> json) =>
      _$SaleOldHouseResFromJson(json);

  Map<String, dynamic> toJson() => _$SaleOldHouseResToJson(this);
}
