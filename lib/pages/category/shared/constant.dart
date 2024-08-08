import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

const MAIN_FONT_FAMILY = 'Iran Sans Bold';
const GRADIANT_COLOR = [
  Color.fromRGBO(144, 199, 255, 1),
  Color.fromRGBO(144, 236, 218, 1),
  Color.fromRGBO(160, 241, 168, 1),
];
const GRADIANT_COLOR1 = [
  Color.fromRGBO(23, 102, 175, 1),
  Color.fromRGBO(66, 159, 86, 1),
];
const GRADIANT_COLOR2 = [
  Color.fromRGBO(76, 140, 237, 1),
];
const GRADIANT_COLOR3 = [
  Color.fromRGBO(189, 189, 189, 1),
  Color.fromRGBO(234, 234, 234, 1),
];
const GRADIANT_COLOR4 = [
  Color.fromRGBO(255, 255, 255, 1),
  Color.fromRGBO(99, 99, 99, 1),
];
const GRADIANT_COLOR5 = [
  Color.fromRGBO(255, 255, 255, 0.5),
  Color.fromRGBO(255, 254, 254, 1),
];
const BLACK_12_GRADIANT_COLOR = [
  Colors.black12,
  Colors.black12,
  Colors.black12,
];

double getPageWidth() => Get.width * 0.42;
double getPageWidthlocation() => Get.width * 0.40;

scaffoldKey() => GlobalKey<ScaffoldState>();

//db key

String SHARED_TOKEN_KEY = "SHARED_TOKEN_KEY";
