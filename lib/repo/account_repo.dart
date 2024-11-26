import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/dao/user_dao.dart';
import 'package:flutter_application_1/db/entities/user.dart';
import 'package:flutter_application_1/db/entities/user_type.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/services/acount_service.dart';
import 'package:flutter_application_1/services/advertisment_service.dart';
import 'package:flutter_application_1/services/http_service.dart';
import 'package:flutter_application_1/services/models/server_model/sale_aparteman.dart';
import 'package:flutter_application_1/services/models/server_model/sale_old_house.dart';
import 'package:flutter_application_1/services/models/server_model/sale_vila.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountRepo {
  final _accountService = GetIt.I.get<AccountService>();
  final _httpService = GetIt.I.get<Httpservice>();
  final _userDao = GetIt.I.get<UserDao>();
  final _advetismentService = GetIt.I.get<AdvertisementService>();
  Future<bool> login(String phoneNumber) async {
    return await _accountService.login(phoneNumber);
  }

  Future<bool> isLogin() async => (await _userDao.getUser()) != null;
  Future<bool> sendVerificationCode(
      {required String code, required String cellphone}) async {
    var result = await _accountService.sendVerificationCode(
        cellphone: cellphone, code: code);
    if (result?.status ?? false) {
      _userDao.saveUser(User(
        phoneNumber: cellphone,
        userToken: result!.data.token,
        userId: result.data.user.id,
        userType: getUserType(result.data.user.subscriberType),
      ));
      _saveToken(result.data.token);
      return true;
    }

    return false;
  }

  UserType getUserType(String type) {
    if (type == "personal") {
      return UserType.personal;
    }
    if (type == "customer") {
      return UserType.customer;
    }
    if (type == "state") {
      return UserType.state;
    }
    return UserType.personal;
  }

  Future<bool> personal({
    required String firstName,
    required String lastName,
    required String userName,
    required String nationalCardImg,
    required String nationalCode,
  }) async {
    try {
      var response = await _accountService.savePersonal(
        firstName: firstName,
        lastName: lastName,
        userName: userName,
        nationalCardImg: nationalCardImg,
        nationalCode: nationalCode,
      );
    } catch (e) {}
    return false;
  }

  Future<bool> saleAparteman({
    required SaleApartemanServerModel saleApartemanData,
  }) async {
    try {
      bool success = await _advetismentService.saveSaleAparteman(
        saleAparteman: saleApartemanData,
      );

      if (success) {
        Fluttertoast.showToast(
          msg: "اطلاعات با موفقیت ارسال شد",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        return true;
      } else {
        Fluttertoast.showToast(
          msg: "خطا در ارسال اطلاعات",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        return false;
      }
    } catch (e) {
      if (e is DioError) {
        print('DioError: ${e.message}');
      }
      print('Error: $e');
      Fluttertoast.showToast(
        msg: "خطا در ارتباط با سرور",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return false;
    }
  }

  Future<bool?> saleVila({
    required SaleVilaServerModel saleVilaData,
  }) async {
    try {
      var response =
          await _advetismentService.SaveSalevila(SaleVila: saleVilaData);
    } catch (e) {}
    return false;
  }

  Future<bool?> saleOldHouse({
    required SaleOldHouseServerModel saleOldHouseData,
  }) async {
    try {
      var response = await _advetismentService.SaveSaleOldHouse(
          SaleOldHouse: saleOldHouseData);
    } catch (e) {}
    return false;
  }
}

_saveToken(String token) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(SHARED_TOKEN_KEY, token);
}
