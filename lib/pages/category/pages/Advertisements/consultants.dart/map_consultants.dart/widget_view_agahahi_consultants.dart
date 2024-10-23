import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/consultants.dart/map_consultants.dart/widget_view_agahi_consultants/view_agahi_axans_amlak.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

Widget WidgetViewAghahiAxans() {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40), topRight: Radius.circular(40)),
    ),
    child: SingleChildScrollView(
      child: Column(children: [
        _buildHeaderText(),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          child: const Column(children: [
            ViewAgahiAxansAmlak(),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
            //   child:
            //       SvgPicture.asset('assets/images/turn on location notif.svg'),
            // ),
            ViewAgahiAxansAmlak(),
            ViewAgahiAxansAmlak(),
            ViewAgahiAxansAmlak(),
            ViewAgahiAxansAmlak(),
            ViewAgahiAxansAmlak(),
            ViewAgahiAxansAmlak(),
            ViewAgahiAxansAmlak(),
            ViewAgahiAxansAmlak(),
            ViewAgahiAxansAmlak(),
            SizedBox(
              height: 20,
            ),
          ]),
        ),
        const SizedBox(
          height: 50,
        )
      ]),
    ),
  );
}

Widget _buildHeaderText() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "آژانس های املاک در تهران",
        style: TextStyle(
          fontFamily: MAIN_FONT_FAMILY_MEDIUM,
          fontSize: 12,
          color: Color.fromRGBO(99, 99, 99, 1),
        ),
      ),
    ],
  );
}
