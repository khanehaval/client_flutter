import 'package:hive/hive.dart';
part 'login_model.g.dart';

@HiveType(typeId:1)
class  LoginModel{
@HiveField(1)
final String phoneNumber;

  LoginModel({required this.phoneNumber});

}