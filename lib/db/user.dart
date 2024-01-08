import 'package:hive/hive.dart';

part 'user.g.dart';

@HiveType(typeId: 1)
class User {
  @HiveField(1)
  final String? agencyName;
  @HiveField(2)
  final String? agencyPhone;
  @HiveField(3)
  final String? agencyActivityPermissionNumber;
  @HiveField(4)
  final String? agencyActivitPermissionImgUrl;
  @HiveField(5)
  final String? firstName;
  @HiveField(6)
  final String? lastName;
  @HiveField(9)
  final String? advisorArea;
  @HiveField(10)
  final String? phoneNumber;

  User(
      {required this.agencyName,
      required this.agencyPhone,
      required this.agencyActivityPermissionNumber,
      required this.agencyActivitPermissionImgUrl,
      required this.firstName,
      required this.lastName,
      required this.advisorArea,
      required this.phoneNumber});
}
enum AcountType{
  Private,Constraints,Realestateagency,
  
}