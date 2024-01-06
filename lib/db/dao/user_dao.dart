import 'package:flutter_application_1/db/user.dart';
import 'package:hive/hive.dart';

class UserDao {
  Future<Box<User>> _open() => Hive.openBox('users');

  Future<void> saveUser(User user) async {
    var box = await _open();
    box.put(user.name, user);
  }

  Future<User?> getUser(String name) async {
    var box = await _open();
    return box.get(name);
  }

  Future<void> deleteUser(String name) async {
    var box = await _open();
    return box.delete(name);
  }
}
