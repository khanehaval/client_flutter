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

class AdvertisementService {
  final _httpService = GetIt.I.get<Httpservice>();

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
    // URL سرور را وارد کنید
    final url = Uri.parse('https://api.khaneaval.com/api/v1/base');
    try {
      // ارسال درخواست GET به سرور
      final response = await http.get(url);
      // بررسی وضعیت پاسخ سرور
      if (response.statusCode == 200) {
        // اگر درخواست موفقیت‌آمیز بود، داده‌های JSON را به مدل `Base` تبدیل می‌کنیم
        final Map<String, dynamic> jsonData = json.decode(response.body);
        return Base.fromJson(jsonData);
      } else {
        // اگر وضعیت پاسخ موفق نبود، یک پیام خطا چاپ کنید
        print("Failed to load data: ${response.statusCode}");
        return null;
      }
    } catch (e) {
      // مدیریت خطاهای احتمالی
      print("Error occurred: $e");
      return null;
    }
  }

// void loadData() async {
//   Base? data = await fetchDataFromServer();
//   if (data != null) {
//     // اینجا می‌توانید از داده‌ها استفاده کنید
//     print("Status: ${data.status}");
//     print("Data List: ${data.data}");
//   } else {
//     print("Failed to fetch data");
//   }
// }
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
}
