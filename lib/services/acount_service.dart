import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/models/list-aghahi.dart';
import 'package:flutter_application_1/services/models/login_res.dart';
import 'package:flutter_application_1/services/models/personal_req.dart';
import 'package:flutter_application_1/services/models/personal_res.dart';
import 'package:flutter_application_1/services/models/send_verification_req.dart';
import 'package:flutter_application_1/services/models/send_verification_res.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:logger/logger.dart';
import 'models/login_req.dart';

class AccountService {
  String API_Token_personal =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjJkMDg0ZjU5LWFjZGQtNDI5ZS1hOWQyLTA2NzAzMWI5OTIxOCIsImlhdCI6MTcyMjc4ODcxN30.aVENBNdJ0kAd2ba_bPXiiQg_Ud97WXBohxVkHA0iFYU";

  final Logger _logger = Logger();
  final Dio _dio = Dio(BaseOptions(baseUrl: "https://api.khaneaval.com/"));
  Future<LoginRes?> login(String phoneNumber) async {
    try {
      var result = await _dio.post("api/v1/auth/login",
          data: LoginReq(phoneNumber).toJson());
      return LoginRes.fromJson(result.data);
    } catch (e) {
      _logger.e(e);
      return null;
    }
  }

  Future<SendVerificationRes?> sendVerificationCode(
      {required String code, required String cellphone}) async {
    try {
      final result = await _dio.post("api/v1/auth/verify",
          data: SendVerificationReq(cellphone: cellphone, code: code).toJson());
      return SendVerificationRes.fromJson(result.data);
    } catch (e) {
      _logger.e(e);
      return null;
    }
  }

  Future<PersonalRes?> personal(
      {required String firstName,
      required String lastName,
      required String userName,
      required String nationalCardImg,
      required String nationalCode}) async {
    try {
      final result = await Dio().post('/api/v1/user/personal',
          options: Options(headers: {"Api-Key": API_Token_personal}),
          data: PersonalReq(
              firstName: firstName,
              lastName: lastName,
              userName: userName,
              nationalCode: nationalCode,
              nationalCardImg: nationalCardImg));
      return PersonalRes.fromJson(result.data);
    } catch (_) {
      Fluttertoast.showToast(
        msg: "اطلاعات را کامل وارد کنید",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
    return null;
  }
}
