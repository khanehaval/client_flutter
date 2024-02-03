import 'package:flutter_application_1/db/entities/estate.dart';

import 'package:hive/hive.dart';

class EstateDao {
  Future<Box<Estate>> _open() => Hive.openBox('Estate');

  Future<void> saveUser(Estate estate) async {
    var box = await _open();
    box.put(estate.username, estate);
  }

  Future<Estate?> getUser(String name) async {
    var box = await _open();
    return box.get(name);
  }

  Future<void> deleteUser(String name) async {
    var box = await _open();
    return box.delete(name);
  }
}
