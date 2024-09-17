import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

Widget mosharekatdarsakht({
  required Rx<bool> aparteman,
  required Rx<bool> sharakvilaei,
  required Rx<bool> mojtamaetejari,
}) {
  final aparteman = false.obs;
  final sharakvilaei = false.obs;
  final mojtamaetejari = false.obs;

  return Column(children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Transform.scale(
          scale: 0.60,
          child: Obx(
            () => Switch(
                onChanged: (_) => aparteman.value = _,
                value: aparteman.value,
                activeColor: Colors.white,
                activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1)),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20),
          child: Text(
            "آپارتمان ",
            style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
          ),
        ),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Transform.scale(
          scale: 0.60,
          child: Obx(
            () => Switch(
                onChanged: (_) => sharakvilaei.value = _,
                value: sharakvilaei.value,
                activeColor: Colors.white,
                activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1)),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20),
          child: Text(
            "شهرک ویلایی",
            style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
          ),
        ),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Transform.scale(
          scale: 0.60,
          child: Obx(
            () => Switch(
                onChanged: (_) => mojtamaetejari.value = _,
                value: mojtamaetejari.value,
                activeColor: Colors.white,
                activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1)),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20),
          child: Text(
            " مجتمع تجاری و اداری",
            style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
          ),
        ),
      ],
    ),
  ]);
}
