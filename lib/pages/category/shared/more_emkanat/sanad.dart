import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/taeedvaemalefilter.dart';
import 'package:flutter_application_1/pages/category/shared/widget/enseraf.dart';
import 'package:flutter_application_1/pages/category/shared/widget/taeed.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';

void Sanad(Function(String) onSelected) {
  final selected = "".obs;

  final values = ["تجاری", "اداری", "مسکونی"];

  Get.bottomSheet(
    Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: GRADIANT_COLOR,
        ),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      child: Padding(
          padding: const EdgeInsets.only(top: 2.0, left: 2, right: 2),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (c, i) {
                        String value = values[i];
                        return GestureDetector(
                          onTap: () {
                            selected.value = value;
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Obx(() => Container(
                                  width: 150,
                                  height: selected.value == value ? 43 : 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    gradient: selected.value == value
                                        ? const LinearGradient(
                                            colors: GRADIANT_COLOR)
                                        : const LinearGradient(colors: [
                                            Colors.black26,
                                            Colors.black26,
                                          ]),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: selected.value == value
                                        ? const EdgeInsets.all(1.0)
                                        : const EdgeInsets.all(1.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(value,
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontFamily: MAIN_FONT_FAMILY)),
                                      ),
                                    ),
                                  ))),
                            ),
                          ),
                        );
                      },
                      itemCount: values.length,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Enseraf(),
                        taeed(),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )),
    ),
  );
}
