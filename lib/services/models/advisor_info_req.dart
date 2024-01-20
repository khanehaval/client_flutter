import 'package:json_annotation/json_annotation.dart';
part 'advisor_info_req.g.dart';
@JsonSerializable()
class AdvisorInfoReq{
  String address;
  int userId;
  String? token;
  int group;

  AdvisorInfoReq(this.address,this.userId,this.token,this.group, );
  Map<String, dynamic> toJson() => _$AdvisorInfoReqToJson(this);
}
