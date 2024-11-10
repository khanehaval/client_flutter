import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/http_service.dart';
import 'package:flutter_application_1/services/models/server_model/sale_aparteman.dart';
import 'package:flutter_application_1/services/models/server_model/sale_aparteman_Get/base_list.dart';
import 'package:flutter_application_1/services/models/server_model/sale_aparteman_res.dart';
import 'package:flutter_application_1/services/models/server_model/sale_old_house.dart';
import 'package:flutter_application_1/services/models/server_model/sale_old_house_res.dart';
import 'package:flutter_application_1/services/models/server_model/sale_vila.dart';
import 'package:flutter_application_1/services/models/server_model/sale_vila_res.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AdvertisementService {
  final _httpService = GetIt.I.get<Httpservice>();
  static const String _baseKey = 'base_model';

  Future<bool> saveSaleAparteman({
    required SaleApartemanServerModel saleAparteman,
  }) async {
    try {
      // Upload images if needed, then update images field in model
      final uploadImages = await _httpService.uploadFileList(
          "api/v1/upload/advertise", saleAparteman.images);
      if (uploadImages.isNotEmpty) {
        saleAparteman.images = uploadImages;

        // Send model data to server
        final result = await _httpService.post(
          "api/v1/advertise/sale-apartment",
          saleAparteman.toJson(), // Use the selective JSON method
        );

        var response = SaleApartemanRes.fromJson(result.data);
        Fluttertoast.showToast(
          msg: response.message!,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.red,
          textColor: const Color.fromARGB(255, 14, 8, 8),
          fontSize: 16.0,
        );

        return response.status!;
      } else {
        Fluttertoast.showToast(
          msg: "خطایی در آپلود تصاویر رخ داده است",
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

  Future<Base?> fetchDataFromServer() async {
    final url = Uri.parse('https://api.khaneaval.com/api/v1/base');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        // اگر درخواست موفقیت‌آمیز بود، داده‌های JSON را به مدل `Base` تبدیل می‌کنیم
        final Map<String, dynamic> jsonData = json.decode(response.body);
        return Base.fromJson(jsonData);
      } else {
        print("Failed to load data: ${response.statusCode}");
        return null;
      }
    } catch (e) {
      print("Error occurred: $e");
      return null;
    }
  }

  Future<bool> SaveSalevila({
    required SaleVilaServerModel SaleVila,
  }) async {
    try {
      final uploadImages = await _httpService.uploadFileList(
          "api/v1/upload/advertise", SaleVila.images!);
      if (uploadImages.isNotEmpty) {
        SaleVila.images = uploadImages;
        final result = await _httpService.post(
            "api/v1/advertise/sale-villa", SaleVila.toJson());
        var response = SaleVilaRes.fromJson(result.data);
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
          msg: "خطایی در آپلود تصاویر رخ داده است",
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

  Future<bool> SaveSaleOldHouse({
    required SaleOldHouseServerModel SaleOldHouse,
  }) async {
    try {
      final uploadImages = await _httpService.uploadFileList(
          "api/v1/upload/advertise", SaleOldHouse.images!);
      if (uploadImages.isNotEmpty) {
        SaleOldHouse.images = uploadImages;
        final result = await _httpService.post(
            "api/v1/advertise/sale-old-house", SaleOldHouse.toJson());
        var response = SaleOldHouseRes.fromJson(result.data);
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
          msg: "خطایی در آپلود تصاویر رخ داده است",
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

  Future<void> saveBaseModel(Base model) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString =
        json.encode(model.toJson()); // تبدیل مدل به JSON و سپس به رشته
    await prefs.setString(
        _baseKey, jsonString); // ذخیره JSON به عنوان رشته در SharedPreferences
  }

  Future<List> getOptionsFromDatabase() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_baseKey);

    if (jsonString != null) {
      final jsonData = json.decode(jsonString);
      final Base baseModel = Base.fromJson(jsonData);

      // Ensure that `data.list` is iterable (List<Item>) and extract labels
      return baseModel.data?.expand((data) {
            // Cast `data.list` to a list of items (if not already) and extract labels
            return (data.list as List<Item>?)
                    ?.map((item) => item.label ?? '')
                    .toList() ??
                [];
          }).toList() ??
          [];
    }

    return [];
  }
}
