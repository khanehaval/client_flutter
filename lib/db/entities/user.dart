import 'package:flutter_application_1/db/constance.dart';
import 'package:flutter_application_1/db/entities/user_type.dart';
import 'package:hive/hive.dart';

part 'user.g.dart';

@HiveType(typeId: USER_HIVE_ID)
class User {
  @HiveField(0)
  String phoneNumber;

  @HiveField(1)
  String userToken;

  @HiveField(2)
  String userId;

  @HiveField(3)
  UserType userType;

  User(
      {required this.phoneNumber,
       required this.userToken,
      this.userId = "",
      this.userType = UserType.advisor});
}