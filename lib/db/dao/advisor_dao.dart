import 'package:flutter_application_1/db/entities/advisor.dart';

import 'package:hive/hive.dart';

class AdvisorDao {
  Future<Box<Advisor>> _open() => Hive.openBox('advisor');

  Future<void> saveUser(Advisor user) async {
    var box = await _open();
    box.put(user.phoneNumber, user);
  }

  Future<Advisor?> getUser(String name) async {
    var box = await _open();
    return box.get(name);
  }

  Future<void> deleteUser(String name) async {
    var box = await _open();
    return box.delete(name);
  }
}
