import 'package:hive/hive.dart';

part 'user.g.dart';
@HiveType(typeId: 2)
class User  {
  @HiveField(1)
  String name;
  @HiveField(2)
  String lastname;

  User({required this.name, required this.lastname});
}
