import 'package:flutter_application_1/db/entities/user.dart';
import 'package:hive/hive.dart';

class UserDao {
  Future<Box<User>> _open() => Hive.openBox<User>('user');

  Future<void> saveUser(User user) async {
    var box = await _open();
    await box.put(user.phoneNumber, user); // ذخیره کاربر با کلید phoneNumber
  }

  Future<User?> getUser() async {
    var box = await _open();
    if (box.isNotEmpty) {
      return box.values.first; // اگر داده وجود دارد، اولین کاربر را برگردان
    } else {
      return null; // اگر Box خالی است، null برگردان
    }
  }

  Future<void> deleteUser(String phoneNumber) async {
    var box = await _open();
    await box.delete(phoneNumber); // حذف کاربر با کلید phoneNumber
  }
}