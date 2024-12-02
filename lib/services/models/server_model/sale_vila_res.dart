import 'package:json_annotation/json_annotation.dart';

part 'sale_vila_res.g.dart';

@JsonSerializable(includeIfNull: false)
class SaleVilaRes {
  bool status;
  String message;

  SaleVilaRes({
    required this.status,
    required this.message,
  });

  factory SaleVilaRes.fromJson(Map<String, dynamic> json) =>
      _$SaleVilaResFromJson(json);

  Map<String, dynamic> toJson() => _$SaleVilaResToJson(this);
}
