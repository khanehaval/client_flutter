import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

Obx buildmetraj() {
  final _show_item_mizanmetraj = false.obs;

  return Obx(() => _show_item_mizanmetraj.isTrue
      ? Stack(children: [
          Container(
            height: 50,
            width: 325,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(183, 183, 183, 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.white,
                  height: 30,
                  width: 250,
                  child: TextFormField(
                      readOnly: true,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                          hintText: 'انتخاب کنید (به تومان)',
                          hintStyle: const TextStyle(
                              color: Color.fromRGBO(166, 166, 166, 1),
                              fontSize: 10,
                              fontFamily: MAIN_FONT_FAMILY),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              "assets/images/arrow_down.svg",
                              width: 10,
                              height: 10,
                            ),
                          ))),
                ),
                const Text(
                  "حداکثر",
                  style: TextStyle(
                    fontFamily: MAIN_FONT_FAMILY,
                    fontSize: 11,
                    color: Color.fromRGBO(99, 99, 99, 1),
                  ),
                )
              ],
            ),
          )
        ])
      : const SizedBox.shrink());
}

Obx buildmetraj2() {
  final _show_item_mizanmetraj = false.obs;

  return Obx(() => _show_item_mizanmetraj.isTrue
      ? Stack(children: [
          Container(
            height: 50,
            width: 325,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(183, 183, 183, 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.white,
                  height: 30,
                  width: 250,
                  child: TextFormField(
                      readOnly: true,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                          hintText: 'انتخاب کنید (به تومان)',
                          hintStyle: const TextStyle(
                              color: Color.fromRGBO(166, 166, 166, 1),
                              fontSize: 10,
                              fontFamily: MAIN_FONT_FAMILY),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              "assets/images/arrow_down.svg",
                              width: 10,
                              height: 10,
                            ),
                          ))),
                ),
                const Text(
                  "حداکثر",
                  style: TextStyle(
                    fontFamily: MAIN_FONT_FAMILY,
                    fontSize: 11,
                    color: Color.fromRGBO(99, 99, 99, 1),
                  ),
                )
              ],
            ),
          )
        ])
      : const SizedBox.shrink());
}
