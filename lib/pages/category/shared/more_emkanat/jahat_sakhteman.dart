import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get.dart';

void jahatSakhteman(Function(String) onSelected) {
  final selected = "".obs;

  final values = ["شمالی", "جنوبی", "شرقی", "غربی"];
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
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    gradient: selected.value == value
                                        ? const LinearGradient(
                                            colors: GRADIANT_COLOR)
                                        : const LinearGradient(colors: [
                                            Colors.black,
                                            Colors.black,
                                            Colors.black
                                          ]),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: selected.value == value
                                        ? const EdgeInsets.all(3.0)
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
                      itemCount: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, top: 30),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient:
                                const LinearGradient(colors: GRADIANT_COLOR),
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                          icon: const Icon(
                            CupertinoIcons.check_mark,
                            color: Colors.white,
                            weight: 20,
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
