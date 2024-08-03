import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:get/get.dart';
import 'package:gradient_icon/gradient_icon.dart';

void showNumberPicker(Function(String) onSelected) {
  final index = 6.obs;
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
          padding: const EdgeInsets.only(top: 2, left: 2, right: 2),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (index.value > 0) {
                              index.value = index.value - 1;
                            }
                          },
                          child: const GradientIcon(
                            icon: Icons.keyboard_arrow_up,
                            gradient: LinearGradient(
                              colors: GRADIANT_COLOR,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            size: 40,
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Obx(
                          () => NumberPicker(
                            value: index.value,
                            minValue: 0,
                            maxValue: 20,
                            step: 1,
                            itemHeight: 70,
                            axis: Axis.vertical,
                            onChanged: (value) => index.value = value,
                            textStyle: const TextStyle(
                                fontSize: 20,
                                color: Colors.black38,
                                fontFamily: MAIN_FONT_FAMILY),
                            selectedTextStyle: const TextStyle(
                                fontFamily: MAIN_FONT_FAMILY, fontSize: 35),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (index.value < 20) {
                              index.value = index.value + 1;
                            }
                          },
                          child: const GradientIcon(
                            icon: Icons.keyboard_arrow_down_sharp,
                            gradient: LinearGradient(
                              colors: GRADIANT_COLOR,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, top: 40),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: GRADIANT_COLOR,
                            ),
                            color: Colors.cyan,
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
                            onSelected(index.value.toString());
                            Get.back();
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
    ),
  );
}
