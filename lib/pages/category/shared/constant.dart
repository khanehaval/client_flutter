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
  Color.fromRGBO(54, 216, 89, 0.4),
  Color.fromRGBO(76, 140, 237, 0.6),
];
const GRADIANT_COLOR2 = [
  Color.fromRGBO(76, 140, 237, 1),
];
const GRADIANT_COLOR3 = [
  Color.fromRGBO(234, 234, 234, 1),
  Color.fromRGBO(189, 189, 189, 1),
];
const BLACK_12_GRADIANT_COLOR = [
  Colors.black12,
  Colors.black12,
  Colors.black12,
];

double getPageWidth() => Get.width * 0.35;

scaffoldKey() => GlobalKey<ScaffoldState>();
