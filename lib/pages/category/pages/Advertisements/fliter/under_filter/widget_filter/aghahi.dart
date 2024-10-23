import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/Detail_view_agahi_ejara.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/detail_view_agahi.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ViewAghahi extends StatefulWidget {
  @override
  _ViewAghahiState createState() => _ViewAghahiState();
}

class _ViewAghahiState extends State<ViewAghahi> {
  bool isFavorite = false; // متغیر برای ردیابی وضعیت مورد علاقه

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0), // اعمال بلور
            child: Column(
              children: [
                _buildHeaderText(),
                const DetailViewAgahi(),
                const DetailViewAgahiEjara(),
                const DetailViewAgahi(),
                const DetailViewAgahiEjara(),
                const DetailViewAgahiEjara(),
                const DetailViewAgahi(),
                const DetailViewAgahiEjara(),
                const DetailViewAgahiEjara(),
                const DetailViewAgahiEjara(),
                const DetailViewAgahiEjara(),
                const DetailViewAgahi(),
                const DetailViewAgahiEjara(),
                const DetailViewAgahiEjara(),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildHeaderText() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "خرید و فروش، رهن و اجاره انواع املاک در تهران",
        style: TextStyle(
          fontFamily: MAIN_FONT_FAMILY_MEDIUM,
          fontSize: 12,
          color: Color.fromRGBO(99, 99, 99, 1),
        ),
      ),
    ],
  );
}
