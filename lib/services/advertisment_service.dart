import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/http_service.dart';
import 'package:flutter_application_1/services/models/server_model/sale_aparteman.dart';
import 'package:flutter_application_1/services/models/server_model/sale_aparteman_res.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_it/get_it.dart';

class AdvertisementService {
  final _httpService = GetIt.I.get<Httpservice>();
  Future<bool> saveSaleAparteman({
    required SaleApartemanServerModel saleAparteman,
  }) async {
    try {
      final uploadImages = await _httpService.uploadFileList(
          "api/v1/upload/advertise", saleAparteman.images!);
      if (uploadImages.isNotEmpty) {
        saleAparteman.images = uploadImages;
        final result = await _httpService.post(
            "api/v1/advertise/sale-apartment", saleAparteman.toJson());
        var response = SaleApartemanRes.fromJson(result.data);
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
