import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/http_service.dart';
import 'package:flutter_application_1/services/models/server_model/sale_aparteman.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_it/get_it.dart';

class AdvertisementService {
  final _httpService = GetIt.I.get<Httpservice>();

  Future<bool?> saleAparteman({
    required SaleApartemanServerModel saleApartemanData,
  }) async {
    try {
      // Upload images with a null check
      final uploadImages = await _httpService.uploadFileList(
        "api/v1/advertise/sale-apartment",
        saleApartemanData.images ?? [],
      );

      // Check if the upload is successful
      if (uploadImages.isEmpty) {
        Fluttertoast.showToast(
          msg: "Images failed to upload",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        return false;
      }

      final response = await _httpService.post(
        "api/v1/sale-aparteman",
        saleApartemanData.toJson(),
      );
    } catch (e) {
      Fluttertoast.showToast(
        msg: "An error occurred: ${e.toString()}",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return null;
    }
    return null;
  }
}
