import 'package:flutter_application_1/services/acount_service.dart';
import 'package:get_it/get_it.dart';

class AccountRepo {
  final  _acountService = GetIt.I.get<AccountService>();
  Future<void> login(String phonenumber)async  {
    return _acountService.login(phonenumber);
  }
}
