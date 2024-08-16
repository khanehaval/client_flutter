import 'package:dio/dio.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/services/models/server_model/sale_aparteman_res.dart';
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
  Future<Response> post(
    String address,
    dynamic body,
  ) {
    return _dio.post(address,
        data: body,
        options: Options(headers: {"Authorization": "Bearer ${_getToken()}"}));
  }

  Future<Response> get(String address) {
    return _dio.get(address,
        options: Options(headers: {"Authorization": "Bearer ${_getToken()}"}));
  }

  Future<String?> uploadFile(String address, String path) async {
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
    } catch (_) {
      _logger.e(_);
    }
    return null;
  }

  Future<List<String>> uploadFileList(
      String address, List<String> paths) async {
    List<String> uploadedFilePaths = [];

    try {
      for (String path in paths) {
        String fileName = path.split('/').last;

        MultipartFile file =
            await MultipartFile.fromFile(path, filename: fileName);
        FormData formData = FormData.fromMap({
          "file": file,
        });
        var response = await _dio.post(
          address,
          data: formData,
          options: Options(headers: {"Authorization": "Bearer ${_getToken()}"}),
        );

        if (response.statusCode == 200) {
          SaleApartemanRes res = SaleApartemanRes.fromJson(response.data);

          if (res.status) {
            uploadedFilePaths.add(res.message);
          } else {
            _logger.e("Upload failed for $fileName: ${res.message}");
          }
        } else {
          _logger.e("Server error: ${response.statusCode}");
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
