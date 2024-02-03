import 'package:flutter_application_1/db/constance.dart';
import 'package:hive/hive.dart';

part 'estate.g.dart';

@HiveType(typeId: ESTATE_HIVE_ID)
class Estate {
  @HiveField(1)
  final String? agencyName;
  @HiveField(2)
  final String? agencyPhone;
  @HiveField(3)
  final String? agencyActivityPermissionNumber;
  @HiveField(4)
  final String? agencyActivitPermissionImgUrl;
  @HiveField(5)
  final String? firstname;
  @HiveField(6)
  final String? lastname;
  @HiveField(7)
  final String? username;
  @HiveField(8)
  final String? password;
  @HiveField(9)
  final String? advisorArea;
  @HiveField(10)
  final String? phoneNumber;

  @HiveField(11)
  final String landlineNumber;

  Estate(
      {required this.agencyName,
      required this.landlineNumber,
      required this.agencyPhone,
      required this.agencyActivityPermissionNumber,
      required this.agencyActivitPermissionImgUrl,
      required this.firstname,
      required this.lastname,
      required this.username,
      required this.password,
      required this.advisorArea,
      required this.phoneNumber});
}
