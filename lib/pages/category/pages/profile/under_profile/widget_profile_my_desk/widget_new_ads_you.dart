import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class WidgetNewAdsYou extends StatelessWidget {
  const WidgetNewAdsYou({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      reverse: true,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          children: [
            Container(
              width: Get.width / 2,
              height: 140,
              padding: const EdgeInsets.all(10),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 3,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment:
                        MainAxisAlignment.center, // تراز عمودی در مرکز
                    children: [
                      SvgPicture.asset(
                        "assets/images/total price.svg",
                        width: 10,
                        height: 10,
                      ),
                      const Text(
                        '12.000.000.000',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: MAIN_FONT_FAMILY),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        width: Get.width / 5,
                        height: 13,
                        child: Row(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 0.50, color: Color(0xFFA6A6A6)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: const Text(
                                'خراسان شمالی',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF636363),
                                  fontSize: 8,
                                  fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10),
                        child: Row(
                          children: [
                            Container(
                              width: Get.width / 10,
                              height: 13,
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 0.50,
                                            color: Color(0xFFA6A6A6)),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    child: const Text(
                                      'ویلا',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF636363),
                                        fontSize: 8,
                                        fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: Get.width / 8,
                              height: 15,
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 0.50,
                                            color: Color(0xFFA6A6A6)),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    child: const Text(
                                      '500 متر',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF636363),
                                        fontSize: 8,
                                        fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          SvgPicture.asset("assets/images/Frame 2390.svg"),
                          Padding(
                            padding: const EdgeInsets.only(left: 50.0),
                            child: Image.asset(
                              "assets/images/photo_profile.png",
                              width: 30,
                              height: 30,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // ستون سمت راست
                  Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // تراز عمودی در مرکز
                    children: [
                      Image.asset(
                        'assets/images/Ellipse 519.png',
                        width: 60,
                        height: 60,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        ' آگهی : 14579423',
                        style: TextStyle(
                            fontSize: 7,
                            color: Colors.black,
                            fontFamily: MAIN_FONT_FAMILY),
                      ),
                      const Text(
                        'تاریخ ثبت آگهی',
                        style: TextStyle(
                            fontSize: 8,
                            color: Color.fromRGBO(166, 166, 166, 1),
                            fontFamily: MAIN_FONT_FAMILY_MEDIUM),
                      ),
                      const Text(
                        '1402 / 05 /20',
                        style: TextStyle(
                            fontSize: 8,
                            color: Colors.black54,
                            fontFamily: MAIN_FONT_FAMILY_MEDIUM),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              width: 190,
              height: 140,
              padding: const EdgeInsets.all(10),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 3,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment:
                        MainAxisAlignment.center, // تراز عمودی در مرکز
                    children: [
                      SvgPicture.asset(
                        "assets/images/total price.svg",
                        width: 10,
                        height: 10,
                      ),
                      const Text(
                        '12.000.000.000',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: MAIN_FONT_FAMILY),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        width: 65,
                        height: 13,
                        child: Row(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 0.50, color: Color(0xFFA6A6A6)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: const Text(
                                'خراسان شمالی',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF636363),
                                  fontSize: 8,
                                  fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 13,
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 0.50,
                                            color: Color(0xFFA6A6A6)),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    child: const Text(
                                      'ویلا',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF636363),
                                        fontSize: 8,
                                        fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 40,
                              height: 15,
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 0.50,
                                            color: Color(0xFFA6A6A6)),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    child: const Text(
                                      '500 متر',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF636363),
                                        fontSize: 8,
                                        fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          SvgPicture.asset("assets/images/Frame 2390.svg"),
                          Padding(
                            padding: const EdgeInsets.only(left: 50.0),
                            child: Image.asset(
                              "assets/images/photo_profile.png",
                              width: 30,
                              height: 30,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // ستون سمت راست
                  Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // تراز عمودی در مرکز
                    children: [
                      Image.asset(
                        'assets/images/Ellipse 519.png',
                        width: 60,
                        height: 60,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        ' آگهی : 14579423',
                        style: TextStyle(
                            fontSize: 7,
                            color: Colors.black,
                            fontFamily: MAIN_FONT_FAMILY),
                      ),
                      const Text(
                        'تاریخ ثبت آگهی',
                        style: TextStyle(
                            fontSize: 8,
                            color: Color.fromRGBO(166, 166, 166, 1),
                            fontFamily: MAIN_FONT_FAMILY_MEDIUM),
                      ),
                      const Text(
                        '1402 / 05 /20',
                        style: TextStyle(
                            fontSize: 8,
                            color: Colors.black54,
                            fontFamily: MAIN_FONT_FAMILY_MEDIUM),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 140,
                height: 140,
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x26000000),
                      blurRadius: 3,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    SvgPicture.asset(
                      'assets/images/Group_home_profile.svg',
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'آگهی های جدید شما',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF303030),
                          fontSize: 16,
                          fontFamily: 'Aban Bold',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
