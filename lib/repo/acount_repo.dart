import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/dao/user_dao.dart';
import 'package:flutter_application_1/db/entities/user.dart';
import 'package:flutter_application_1/db/entities/user_type.dart';
import 'package:flutter_application_1/services/acount_service.dart';
import 'package:flutter_application_1/services/models/login_res.dart';
import 'package:get_it/get_it.dart';

class AccountRepo {
  final _accountService = GetIt.I.get<AccountService>();
  final _userDao = GetIt.I.get<UserDao>();

  LoginRes? _loginResultModel;

  Future<bool> login(String phoneNumber) async {
    var result = await _accountService.login(phoneNumber);
    if (result == null || result.status == 2) {
      return false;
    }
    _loginResultModel = result;
    return true;
  }

  Future<bool> isLogin() async => (await _userDao.getUser()) != null;

  Future<bool> sendVerificationCode(
      {required String code, required String cellphone}) async {
    var result = await _accountService.sendVerificationCode(
        cellphone: cellphone, code: cellphone);
    if (result?.status == 1) {
      _userDao.saveUser(User(
          phoneNumber: cellphone,
          userToken: "",
          userId: "",
          userType: UserType.advisor, ));
      return true;
    }
    return false;
  }
}