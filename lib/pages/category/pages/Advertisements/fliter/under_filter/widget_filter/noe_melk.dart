import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

Widget noemelk({
  required Rx<bool> aksdar,
  required Rx<bool> videodar,
}) {
  final aksdar = false.obs;
  final videodar = false.obs;
  return Column(children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Transform.scale(
          scale: 0.60,
          child: Obx(
            () => Switch(
                onChanged: (_) => aksdar.value = _,
                value: aksdar.value,
                activeColor: Colors.white,
                activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1)),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20),
          child: Text(
            "زمین مسکونی",
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
                onChanged: (_) => videodar.value = _,
                value: videodar.value,
                activeColor: Colors.white,
                activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1)),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20),
          child: Text(
            "خانه کلنگی",
            style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
          ),
        ),
      ],
    )
  ]);
}

Widget noemelk_sakht({
  required Rx<bool> zamin,
  required Rx<bool> aparteman,
  required Rx<bool> vila,
  required Rx<bool> edaritejari,
}) {
  final zamin = false.obs;
  final aparteman = false.obs;
  final vila = false.obs;
  final edaritejari = false.obs;

  return Column(children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Transform.scale(
          scale: 0.60,
          child: Obx(
            () => Switch(
                onChanged: (_) => zamin.value = _,
                value: zamin.value,
                activeColor: Colors.white,
                activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1)),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20),
          child: Text(
            "زمین ",
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
            "آپارتمان",
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
                onChanged: (_) => vila.value = _,
                value: vila.value,
                activeColor: Colors.white,
                activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1)),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20),
          child: Text(
            " ویلا",
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
                onChanged: (_) => edaritejari.value = _,
                value: edaritejari.value,
                activeColor: Colors.white,
                activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1)),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20),
          child: Text(
            "اداری تجاری",
            style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
          ),
        ),
      ],
    )
  ]);
}
