import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

void aghahi(Function(String) onAghahiSelected) {
  Get.bottomSheet(
    SingleChildScrollView(
      controller: ScrollController(),
      scrollDirection: Axis.vertical,
      child: SizedBox(
        height: 500,
        child: Container(
          height: 1000,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
        ),
      ),
    ),
  );
}
