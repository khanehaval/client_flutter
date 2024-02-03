import 'package:country_code_picker/country_code_picker.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/services/models/login_res.dart';
import 'package:flutter_application_1/services/models/send_verification_req.dart';
import 'package:flutter_application_1/services/models/send_verification_res.dart';
import 'package:logger/logger.dart';

import 'models/login_req.dart';

class AccountService {
  final Logger _logger = Logger();
  final Dio _dio =
      Dio(BaseOptions(baseUrl: "https://app.khanehaval.com/new_address"));

  Future<LoginRes?> login(String phoneNumber) async {
    try {
      var result =
          await _dio.post("", data: LoginReq("2184", phoneNumber).toJson());
      return LoginRes.fromJson(result.data);
    } catch (e) {
      _logger.e(e);
      return null;
    }
  }

  Future<SendVerificationRes?> sendVerificationCode(
      {required String code, required String cellphone}) async {
    try {
      final result = await _dio.post("",
          data: SendVerificationReq(
                  address: "2185", cellphone: cellphone, code: int.parse(code))
              .toJson());
      return SendVerificationRes.fromJson(result.data);
    } catch (e) {
      _logger.e(e);
      return null;
    }
  }
}
