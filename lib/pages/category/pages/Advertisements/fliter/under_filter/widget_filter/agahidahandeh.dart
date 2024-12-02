import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

Widget agahidahandeh({required Rx<bool> shakhsi,required Rx<bool> amlak,required Rx<bool> moshaver  }) {

  return  Column(children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Transform.scale(
                  scale: 0.6,
                  child: Obx(
                    () => Switch(
                        onChanged: (_) => shakhsi.value = _,
                        value: shakhsi.value,
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
                    "شخصی",
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Transform.scale(
                scale: 0.60,
                child: Obx(
                  () => Switch(
                      onChanged: (_) => amlak.value = _,
                      value: amlak.value,
                      activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                      inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                      inactiveTrackColor:
                          const Color.fromRGBO(255, 255, 255, 1)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "آژانس املاک",
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
                      onChanged: (_) => moshaver.value = _,
                      value: moshaver.value,
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
                  "مشاورین املاک",
                  style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                ),
              ),
            ],
          )
        ]);
}
