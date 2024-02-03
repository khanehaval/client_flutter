import 'package:flutter_application_1/db/constance.dart';
import 'package:hive/hive.dart';

part 'customer.g.dart';

@HiveType(typeId: CUSTOMER_HIVE_ID)
class Customer {
  @HiveField(1)
  final String? firstName;
  @HiveField(2)
  final String? lastName;
  @HiveField(3)
  final String? userName;
  @HiveField(4)
  final String? userId;
  @HiveField(5)
  final String? imgUrl;
  @HiveField(6)
  final String? password;
  @HiveField(7)
  final String? phoneNumber;
  @HiveField(8)
  final String? token;

  Customer({
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.userId,
    required this.imgUrl,
    required this.password,
    required this.phoneNumber,
    required this.token,
  });
}
