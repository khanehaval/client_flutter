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
      // Creating a list of MultipartFile objects from the provided paths
      List<MultipartFile> files = await Future.wait(
        paths.map((path) async {
          String fileName = path.split('/').last;
          return await MultipartFile.fromFile(path, filename: fileName);
        }).toList(),
      );
      // Creating FormData with the list of files
      FormData formData = FormData.fromMap({
        "files": files,
      });
      var response = await _dio.post(
        address,
        data: formData,
        options: Options(headers: {"Authorization": "Bearer ${_getToken()}"}),
      );
      if (response.data?["status"] == true) {
        // Assuming the server returns a list of file paths in the "data" field
        List<dynamic> paths = response.data!["data"];
        uploadedFilePaths = paths.map((e) => e as String).toList();
      } else {
        _logger.e("Upload failed: ${response.data}");
      }
    } on DioError catch (e) {
      _logger.e("DioError: ${e.message}");
    } catch (e) {
      _logger.e("Unexpected error: $e");
    }

    return uploadedFilePaths;
  }
}
