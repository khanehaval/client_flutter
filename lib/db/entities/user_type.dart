import 'package:flutter_application_1/db/constance.dart';
import 'package:hive/hive.dart';



part 'user_type.g.dart';
@HiveType(typeId: USER_TYPE_HIVE_ID)
enum UserType {
  @HiveField(1)
  advisor,
  @HiveField(2)
  customer,
  @HiveField(3)
  state;
}
