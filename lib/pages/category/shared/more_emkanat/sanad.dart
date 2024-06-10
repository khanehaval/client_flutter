import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:gradient_icon/gradient_icon.dart';

void Sanad(Function(String) onSelected) {
  final selected = "".obs;

  final values = ["تجاری", "اداری", "مسکونی"];

  Get.bottomSheet(
    Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: GRADIANT_COLOR,
        ),
        border: Border.all(
          width: 1,
        ),
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      child: Padding(
          padding: const EdgeInsets.all(2.0),
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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, top: 30),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient:
                                const LinearGradient(colors: GRADIANT_COLOR),
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                          icon: Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: SvgPicture.asset(
                              'assets/images/tic.svg',
                              width: 33,
                              height: 26,
                            ),
                          ),
                          onPressed: () {
                            onSelected(selected.value);
                            Get.back();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    ),
  );
}
