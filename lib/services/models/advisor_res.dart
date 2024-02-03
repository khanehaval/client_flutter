import 'package:json_annotation/json_annotation.dart';

part 'advisor_res.g.dart';

@JsonSerializable(includeIfNull: false)
class AdvisorRes {
  String address;
  String? userToken;
  int userId;
  String? group;

  AdvisorRes(
      {required this.address,
      required this.userToken,
      required this.userId,
      required this.group,
      });

  static AdvisorRes fromJson(dynamic data) =>
      _$AdvisorResFromJson(data);
      
        static _$AdvisorResFromJson(data) {}
}
