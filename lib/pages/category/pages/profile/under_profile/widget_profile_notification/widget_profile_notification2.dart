// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_notification/widget_titr_noitification_profile.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class WidgetProfileNotification2 extends StatelessWidget {
  const WidgetProfileNotification2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const WidgetTitrNoitificationProfile(),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                endIndent: 25,
                indent: 25,
                color: Color.fromRGBO(226, 226, 226, 1),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: Get.width / 1.12,
                height: 44,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFE2E2E2)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'ذخیره جستجو',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF626262),
                        fontSize: 12,
                        fontFamily: MAIN_FONT_FAMILY,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    const SizedBox(width: 20),
                    SizedBox(
                      width: Get.width / 3.0,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: DottedBorder(
                          borderType: BorderType.RRect,
                          color: Color.fromARGB(255, 168, 167, 167),
                          strokeWidth: 1,
                          radius: const Radius.circular(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.add,
                                color: Color.fromRGBO(166, 166, 166, 1),
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: Get.width / 1.12,
                height: 41,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(colors: GRADIANT_COLOR1),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFE2E2E2)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'ذخیره جستجو',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 12,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 17.93,
                            height: 18,
                            decoration: ShapeDecoration(
                              color: Color(0xFFFDFDFD),
                              shape: OvalBorder(),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '2',
                                  style: TextStyle(
                                    fontFamily: MAIN_FONT_FAMILY,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'قیمت (تومان)',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 9,
                                  fontFamily: MAIN_FONT_FAMILY,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'متراژ از - تا',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 9,
                                  fontFamily: MAIN_FONT_FAMILY,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'شهر / محله',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 9,
                                  fontFamily: MAIN_FONT_FAMILY,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'نوع ملک',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 9,
                                  fontFamily: MAIN_FONT_FAMILY,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'ردیف',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 9,
                                  fontFamily: MAIN_FONT_FAMILY,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    indent: 25,
                    endIndent: 30,
                    color: Color.fromRGBO(183, 183, 183, 1),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 10),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Text(
                            '12.000.000',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 8,
                              fontFamily: MAIN_FONT_FAMILY_UltraLight,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '80 - 120',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 8,
                              fontFamily: MAIN_FONT_FAMILY_UltraLight,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'تهران / جنت آباد',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 8,
                              fontFamily: MAIN_FONT_FAMILY_UltraLight,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'آپارتمان',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 8,
                              fontFamily: MAIN_FONT_FAMILY_UltraLight,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '1',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 8,
                              fontFamily: MAIN_FONT_FAMILY_UltraLight,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/delete_icon_rington.svg',
                              width: 18,
                              height: 18,
                            ),
                            const SizedBox(width: 30),
                            SvgPicture.asset(
                              'assets/images/edit.svg',
                              width: 18,
                              height: 18,
                            ),
                            const SizedBox(width: 30),
                            SvgPicture.asset(
                              'assets/images/see_icon_rington.svg',
                              width: 18,
                              height: 18,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'مورد پیدا شده',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF626262),
                                fontSize: 12,
                                fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Container(
                              width: 20,
                              height: 20,
                              decoration: ShapeDecoration(
                                color: Color(0xFF00BD61),
                                shape: OvalBorder(),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '3',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                      fontFamily: MAIN_FONT_FAMILY,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              ': وضعیت',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF626262),
                                fontSize: 12,
                                fontFamily: MAIN_FONT_FAMILY,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(
                    indent: 40,
                    endIndent: 45,
                    color: Color.fromRGBO(183, 183, 183, 1),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 10),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Text(
                            '12.000.000',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 8,
                              fontFamily: MAIN_FONT_FAMILY_UltraLight,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '80 - 120',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 8,
                              fontFamily: MAIN_FONT_FAMILY_UltraLight,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'تهران / جنت آباد',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 8,
                              fontFamily: MAIN_FONT_FAMILY_UltraLight,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'آپارتمان',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 8,
                              fontFamily: MAIN_FONT_FAMILY_UltraLight,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '2',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 8,
                              fontFamily: MAIN_FONT_FAMILY_UltraLight,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/delete_icon_rington.svg',
                              width: 18,
                              height: 18,
                            ),
                            const SizedBox(width: 30),
                            SvgPicture.asset(
                              'assets/images/edit.svg',
                              width: 18,
                              height: 18,
                            ),
                            const SizedBox(width: 30),
                            SvgPicture.asset(
                              'assets/images/see_icon_rington.svg',
                              width: 18,
                              height: 18,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'هنوز پیدا نشده',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF626262),
                                fontSize: 12,
                                fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Container(
                              width: 20,
                              height: 20,
                              decoration: ShapeDecoration(
                                color: Color(0xFF00BD61),
                                shape: OvalBorder(),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '0',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                      fontFamily: MAIN_FONT_FAMILY,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              ': وضعیت',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF626262),
                                fontSize: 12,
                                fontFamily: MAIN_FONT_FAMILY,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                indent: 25,
                endIndent: 30,
                color: Color.fromRGBO(183, 183, 183, 1),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
