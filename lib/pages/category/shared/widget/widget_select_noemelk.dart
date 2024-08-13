import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/switchItem.dart';
import 'package:flutter_application_1/pages/category/shared/widget/enseraf.dart';
import 'package:flutter_application_1/pages/category/shared/widget/taeed.dart';
import 'package:flutter_svg/svg.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:get/get.dart';
import 'package:gradient_icon/gradient_icon.dart';

void showSelectNoeMelk(Function(String) onSelected) {
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
        padding: const EdgeInsets.only(
          top: 1.3,
          left: 1.3,
          right: 1.3,
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              const Text(
                "نوع مـلـک شمــا",
                style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "یک مورد را انتخاب کنید",
                style: TextStyle(
                    fontFamily: MAIN_FONT_FAMILY,
                    fontSize: 15,
                    color: Color.fromRGBO(
                      156,
                      64,
                      64,
                      1,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  SwitchItems(
                      onSelected: (_) {},
                      items: const ["باغ ویلا", "باغ", "خانه ویلایی"]),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Enseraf(),
                      taeed(onSelected),
                      const SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
