
import 'package:json_annotation/json_annotation.dart';
part 'advisor_req.g.dart';
@JsonSerializable()

class AdvisorReq{
  String firstName;
  String lastName;
  String userName;
  String imgUrl;
  String advisorArea;
  String address;
  AdvisorReq(this.firstName,this.lastName,this.userName,this.imgUrl,this.advisorArea,this.address,);
  Map<String, dynamic> toJson() => _$AdvisorReqToJson(this);


}

