import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/switachable.dart';
import 'package:get/get.dart';

Widget SwitchKotaModat() {
  final hasBargozariMarasem = false.obs;
  final hasAnimalHome = false.obs;
  final hasTaradodBaKafsh = false.obs;
  final hasEstemalDokhaniat = false.obs;
  final hasMadarekMahramiat = false.obs;
  return Column(
    children: [
      Row(
        children: [
          switchable(hasBargozariMarasem, ""),
          const Spacer(),
          const Text(
            "شرایط برگزاری مراسم",
            style: TextStyle(fontFamily: MAIN_FONT_FAMILY),
          ),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        children: [
          switchable(hasAnimalHome, ""),
          const Spacer(),
          const Text(
            "شرایط حیوانات خانگی",
            style: TextStyle(fontFamily: MAIN_FONT_FAMILY),
          ),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        children: [
          switchable(hasMadarekMahramiat, ""),
          const Spacer(),
          const Text(
            "مدارک محرمیت",
            style: TextStyle(fontFamily: MAIN_FONT_FAMILY),
          ),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        children: [
          switchable(hasTaradodBaKafsh, ""),
          const Spacer(),
          const Text(
            "تردد با کفش",
            style: TextStyle(fontFamily: MAIN_FONT_FAMILY),
          ),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        children: [
          switchable(hasEstemalDokhaniat, ""),
          const Spacer(),
          const Text(
            "استعمال دخانیات",
            style: TextStyle(fontFamily: MAIN_FONT_FAMILY),
          ),
        ],
      ),
    ],
  );
}
