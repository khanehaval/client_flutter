import 'package:json_annotation/json_annotation.dart';

part 'advisor_info_res.g.dart';

@JsonSerializable()
class AdvisorInfoRes {
  String address;
  int userId;
  String? token;
  int group;

  AdvisorInfoRes(
      {required this.address,
      required this.userId,
      required this.token,
      required this.group});

      
      static AdvisorInfoRes fromJson(dynamic data) =>
      _$AdvisorInfoResFromJson(data);
}

_$AdvisorInfoResFromJson(data) {
}


