import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CityController extends GetxController {
  var selectedCity = ''.obs; // شهر انتخاب‌شده
  final TextEditingController cityTextController = TextEditingController();
}

class NeighborhoodController extends GetxController {
  var selectedNeighborhood = ''.obs; // شهر انتخاب‌شده
  final TextEditingController neighborhoodTextController =
      TextEditingController();

  void selectNeighborhood(String neighborhood) {
    selectedNeighborhood.value = neighborhood; // تنظیم شهر انتخاب‌شده
  }
}
