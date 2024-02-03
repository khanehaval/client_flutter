
import 'package:flutter_application_1/db/entities/customer.dart';
import 'package:hive/hive.dart';

class CustomerDao {
  Future<Box<Customer>> _open() => Hive.openBox('Customer');

  Future<void> saveUser(Customer user) async {
    var box = await _open();
    box.put(user.phoneNumber, user);
  }

  Future<Customer?> getUser(String name) async {
    var box = await _open();
    return box.get(name);
  }

  Future<void> deleteUser(String name) async {
    var box = await _open();
    return box.delete(name);
  }
}
