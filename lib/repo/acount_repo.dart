import 'package:flutter_application_1/services/acount_service.dart';

class AcountRepo {
  AcountService _acountService = AcountService();
  void login(String phonenumber) {
    _acountService.login(phonenumber);
  }
}
