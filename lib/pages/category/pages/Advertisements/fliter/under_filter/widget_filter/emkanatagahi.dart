import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

Obx buildemkanatagahi() {
  final _show_item_emkanatagahi_1 = false.obs;
  final aksdar = false.obs;
  final videodar = false.obs;
  return Obx(() => _show_item_emkanatagahi_1.isTrue
      ? Column(children: [
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
                      inactiveTrackColor:
                          const Color.fromRGBO(255, 255, 255, 1)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "عکس دار",
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
                      inactiveTrackColor:
                          const Color.fromRGBO(255, 255, 255, 1)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "ویدئو دار",
                  style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                ),
              ),
            ],
          )
        ])
      : const SizedBox.shrink());
}
