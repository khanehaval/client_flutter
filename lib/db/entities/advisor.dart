import 'package:flutter_application_1/db/constance.dart';
import 'package:hive/hive.dart';

part 'advisor.g.dart';

@HiveType(typeId: ADVISOR_HIVE_ID)
class Advisor {
  @HiveField(1)
  final String? firstName;
  @HiveField(2)
  final String? lastName;
  @HiveField(3)
  final String? userName;
  @HiveField(5)
  final String? imgUrl;
  @HiveField(6)
  final String? password;
  @HiveField(7)
  final String? phoneNumber;
  @HiveField(8)
  final String advisorArea;

  Advisor({
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.imgUrl,
    required this.password,
    required this.phoneNumber,
    required this.advisorArea,
  });
}
