import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:gradient_icon/gradient_icon.dart';

void ServisesWc(Function(String) onSelected) {
  final index = 6.obs;
  final _selected = 0.obs;
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
                        const GradientIcon(
                          icon: Icons.keyboard_arrow_up,
                          gradient: LinearGradient(
                            colors: GRADIANT_COLOR,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          size: 40,
                        ),
                        Obx(
                          () => Container(
                            decoration: BoxDecoration(
                              gradient: _selected.value == index
                                  ? const LinearGradient(colors: GRADIANT_COLOR)
                                  : null,
                              borderRadius: BorderRadius.circular(10),
                              // border: Border.all(
                              //   width: _selected.value == index ? 2 : 1.5,
                              // )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                children: [
                                  Obx(
                                    () => Container(
                                        width: 150,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                              color: _selected.value == index
                                                  ? Colors.white
                                                  : Colors.black12,
                                              width: _selected.value == index
                                                  ? 2.8
                                                  : 1.5,
                                            )),
                                        child: const Align(
                                          alignment: Alignment.center,
                                          child: Text("ایرانی",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily:
                                                      MAIN_FONT_FAMILY)),
                                        )),
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Obx(
                                        () => Container(
                                            width: 150,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  color:
                                                      _selected.value == index
                                                          ? Colors.white
                                                          : Colors.black12,
                                                  width:
                                                      _selected.value == index
                                                          ? 2.8
                                                          : 1.5,
                                                )),
                                            child: const Align(
                                              alignment: Alignment.center,
                                              child: Text("فرنگی",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily:
                                                          MAIN_FONT_FAMILY)),
                                            )),
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const GradientIcon(
                          icon: Icons.keyboard_arrow_down_sharp,
                          gradient: LinearGradient(
                            colors: GRADIANT_COLOR,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          size: 40,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, top: 60),
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

Widget _buildItem(
  String assetPath,
  int index,
) {
  final _selected = 0.obs;

  return GestureDetector(
    onTap: () {
      _selected.value = index;
    },
    child: SizedBox(
      height: 85,
      width: 140,
      child: Obx(() => Container(
            decoration: BoxDecoration(
              gradient: _selected.value == index
                  ? const LinearGradient(colors: GRADIANT_COLOR)
                  : null,
              borderRadius: BorderRadius.circular(10),
              // border: Border.all(
              //   width: _selected.value == index ? 2 : 1.5,
              // )
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: _selected.value == index
                            ? Colors.white
                            : Colors.black12,
                        width: _selected.value == index ? 2.8 : 1.5,
                      )),
                  child: Image.asset(assetPath)),
            ),
          )),
    ),
  );
}
