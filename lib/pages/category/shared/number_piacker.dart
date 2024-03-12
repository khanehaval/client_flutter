import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:get/get.dart';
import 'package:gradient_icon/gradient_icon.dart';

void showNumberPicker(Function(String) onSelected) {
  final index = 6.obs;
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (index.value > 2) {
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
                        Obx(() => Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text((index.value - 1).toString()),
                                const SizedBox(
                                  height: 40,
                                ),
                                AnimatedSwitcher(
                                  switchInCurve: Curves.bounceOut,
                                  switchOutCurve: Curves.easeInCirc,
                                  transitionBuilder: (c, s) {
                                    return c;
                                  },
                                  key: Key(index.value.toString()),
                                  duration: const Duration(milliseconds: 600),
                                  child: Text(
                                    index.value.toString(),
                                    style: const TextStyle(fontSize: 30),
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Text((index.value + 1).toString()),
                              ],
                            )),
                        GestureDetector(
                          onTap: () {
                            if (index.value < 17) {
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
                          icon: const Icon(
                            CupertinoIcons.check_mark,
                            color: Colors.white,
                            weight: 20,
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
