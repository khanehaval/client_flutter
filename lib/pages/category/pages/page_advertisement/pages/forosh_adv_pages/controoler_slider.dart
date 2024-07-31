import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageController extends GetxController {
  var sliderValue = 0.5.obs; // Initial dim value set to 50%

  void updateSliderValue(double value) {
    sliderValue.value = value;
  }
}
