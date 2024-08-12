import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/advertisment_service.dart';
import 'package:flutter_application_1/services/http_service.dart';
import 'package:flutter_application_1/services/models/server_model/sale_aparteman.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_it/get_it.dart';

class AccountRepoAdvertisment {
  final _httpService = GetIt.I.get<Httpservice>();
  final _advetismentService = GetIt.I.get<AdvertisementService>();

  // Future<bool?> saleAparteman({
  //   required SaleApartemanServerModel saleApartemanData,
  // }) async {
  //   try {
  //     var response = await _advetismentService.saveSaleAparteman(
  //         saleApartemanData: saleApartemanData);
  //   } catch (e) {
  //     Fluttertoast.showToast(
  //       msg: "An error occurred: ${e.toString()}",
  //       toastLength: Toast.LENGTH_LONG,
  //       gravity: ToastGravity.CENTER,
  //       backgroundColor: Colors.red,
  //       textColor: Colors.white,
  //       fontSize: 16.0,
  //     );
  //   }
  //   return false;
  // }
}
