import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/http_service.dart';
import 'package:flutter_application_1/services/models/login_res.dart';
import 'package:flutter_application_1/services/models/personal_req.dart';
import 'package:flutter_application_1/services/models/personal_res.dart';
import 'package:flutter_application_1/services/models/send_verification_req.dart';
import 'package:flutter_application_1/services/models/send_verification_res.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'models/login_req.dart';

class AccountService {
  final _logger = Logger();
  final _httpService = GetIt.I.get<Httpservice>();
  Future<bool> login(String phoneNumber) async {
    try {
      var result = await _httpService.post(
          "api/v1/auth/login", LoginReq(phoneNumber).toJson());
      final response = LoginRes.fromJson(result.data);
      Fluttertoast.showToast(
        msg: response.message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        textColor: const Color.fromARGB(255, 14, 8, 8),
        fontSize: 16.0,
      );
      return true;
    } catch (e) {
      _logger.e(e);
      return false;
    }
  }

  Future<SendVerificationRes?> sendVerificationCode(
      {required String code, required String cellphone}) async {
    try {
      final result = await _httpService.post("api/v1/auth/verify",
          SendVerificationReq(cellphone: cellphone, code: code).toJson());
      return SendVerificationRes.fromJson(result.data);
    } catch (e) {
      _logger.e(e);
      return null;
    }
  }

  Future<bool> savePersonal(
      {required String firstName,
      required String lastName,
      required String userName,
      required String nationalCardImg,
      required String nationalCode}) async {
    try {
      final nationalCardImguri =
          await _httpService.uploadFile("api/v1/upload/melli", nationalCardImg);

      if (nationalCardImguri != null) {
        final result = await _httpService.post(
            "api/v1/user/personal",
            PersonalReq(
                    firstName: firstName,
                    lastName: lastName,
                    userName: userName,
                    nationalCode: nationalCode,
                    nationalCardImg: nationalCardImguri)
                .toJson());

        var response = PersonalRes.fromJson(result.data);
        Fluttertoast.showToast(
          msg: response.message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.red,
          textColor: const Color.fromARGB(255, 14, 8, 8),
          fontSize: 16.0,
        );
        return response.status;
      } else {
        Fluttertoast.showToast(
          msg: "خطایی رخ داده است",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      }
    } catch (_) {
      Fluttertoast.showToast(
        msg: "خطایی رخ داده است",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
    return false;
  }
}
