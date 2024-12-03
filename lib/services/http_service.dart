import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Httpservice {
  late SharedPreferences _prefs;
  final Dio _dio = Dio(BaseOptions(baseUrl: "https://api.khaneaval.com/"));
  final _logger = Logger();

  Httpservice() {
    _init();
  }
  Future<void> _init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  String _getToken() => _prefs.getString(SHARED_TOKEN_KEY) ?? "";
  Future<Response> post(String address, dynamic body) {
    return _dio.post(address,
        data: body,
        options: Options(headers: {"Authorization": "Bearer ${_getToken()}"}));
  }

  Future<Response> get(String address) {
    return _dio.get(address,
        options: Options(headers: {"Authorization": "Bearer ${_getToken()}"}));
  }

  Future<String?> uploadFile(String address, String path) async {
    if (!File(path).existsSync()) {
      return null;
    }

    String fileName = path.split('/').last;
    try {
      FormData formData = FormData.fromMap({
        "file": await MultipartFile.fromFile(path, filename: fileName),
      });
      var response = await _dio.post(address,
          data: formData,
          options:
              Options(headers: {"Authorization": "Bearer ${_getToken()}"}));

      if (response.data?["status"]) {
        return response.data!["data"]["path"];
      }
    } catch (e) {
      _logger.e("Upload error: $e");
    }
    return null;
  }

  Future<List<String>> uploadFileList(
      String address, List<String> paths) async {
    List<String> uploadedFilePaths = [];
    try {
      for (String path in paths) {
        var uri = await uploadFile(address, path);
        if (uri != null) {
          uploadedFilePaths.add(uri);
        }
      }
    } on DioError catch (e) {
      _logger.e("DioError: ${e.message}");
    } catch (e) {
      _logger.e("Unexpected error: $e");
    }

    return uploadedFilePaths;
  }
}
