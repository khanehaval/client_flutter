import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

const MAIN_FONT_FAMILY = 'Iran Sans Bold';
const GRADIANT_COLOR = [
  Color.fromRGBO(54, 216, 89, 1),
  Color.fromRGBO(59, 197, 125, 1),
  Color.fromRGBO(65, 177, 164, 1),
  Color.fromRGBO(71, 157, 204, 1),
  Color.fromRGBO(76, 140, 237, 1),
];
const GRADIANT_COLOR2 = [
  Color.fromRGBO(76, 140, 237, 1),
];
const BLACK_12_GRADIANT_COLOR = [
  Colors.black12,
  Colors.black12,
  Colors.black12,
];

double getPageWidth() => Get.width * 0.40;

scaffoldKey() => GlobalKey<ScaffoldState>();
