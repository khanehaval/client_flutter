import 'package:flutter_application_1/db/entities/user.dart';
import 'package:hive/hive.dart';

class UserDao{
  Future<Box<User>> _open() => Hive.openBox('user');

  Future<void> saveUser(User user) async {
    var box = await _open();
    box.put(user.phoneNumber, user);
  }

  Future<User?> getUser() async {
    var box = await _open();
    return box.values.first;
  }



  Future<void> deleteUser(String name) async {
    var box = await _open();
    return box.delete(name);
  }
}