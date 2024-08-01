import 'package:dio/dio.dart';
import 'package:flutter_application_1/services/models/list-aghahi.dart';
import 'package:flutter_application_1/services/models/login_res.dart';
import 'package:flutter_application_1/services/models/send_verification_req.dart';
import 'package:flutter_application_1/services/models/send_verification_res.dart';
import 'package:logger/logger.dart';
import 'models/login_req.dart';

class AccountService {
  final Logger _logger = Logger();
  final Dio _dio =
      Dio(BaseOptions(baseUrl: "https://api.khaneaval.com/"));
  Future<LoginRes?> login(String phoneNumber) async {
    try {
      var result = await _dio.post("api/v1/auth/login", data: LoginReq(phoneNumber).toJson());
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

  Future<List<Aghahi>> fetchagahifromserver() async {
    try {
      List<Aghahi> ress = [];
      final result = await _dio.post("", data: {'address': 365, 'page': 1});
      for (var l in result.data["result"]) {
        ress.add(Aghahi.fromJson(l));
      }
      return ress;
    } catch (e) {
      print(e);
    }
    return [];
  }
}
