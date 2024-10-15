import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_inner_shadow/flutter_inner_shadow.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WidgetAdProfile extends StatelessWidget {
  const WidgetAdProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Container(
        width: double.infinity,
        height: 141,
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
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 65,
                      height: 13,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Row(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 1),
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
                    ),
                    Container(
                      width: Get.width / 12,
                      height: 13,
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.50, color: Color(0xFFA6A6A6)),
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
                    const SizedBox(
                      width: 70,
                    ),
                    SvgPicture.asset(
                      "assets/images/total price.svg",
                      width: 30,
                      height: 13,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Row(
                    children: [
                      Container(
                        width: Get.width / 14,
                        height: 13,
                        child: Row(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 0.50, color: Color(0xFFA6A6A6)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: const Text(
                                '2 اتاق',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF636363),
                                  fontSize: 7,
                                  fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: Get.width / 9,
                        height: 15,
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
                                '300 متر',
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
                      const SizedBox(
                        width: 30,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/images/toman_profile.svg",
                            height: 15,
                            width: 15,
                          ),
                          const Text(
                            '12.000.000.000',
                            style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: MAIN_FONT_FAMILY),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InnerShadow(
                  shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 3,
                      offset: const Offset(2, 2),
                    ),
                  ],
                  child: Container(
                    width: Get.width / 1.89,
                    height: 51,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(0.99, 0.10),
                        end: Alignment(-0.99, -0.1),
                        colors: [
                          Color(0xFFF8F8F8),
                          Color(0xFFFFFDFD),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFE8E8E8)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _buildInfoContainer(
                            'assets/images/request_see.svg', '3'),
                        const SizedBox(width: 5),
                        _buildInfoContainer(
                            'assets/images/see_profile.svg', '32'),
                        const SizedBox(width: 12),
                        _buildInfoContainer(
                            'assets/images/favoraite_profile.svg', '15'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InnerShadow(
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 3,
                        offset: const Offset(2, 2),
                      ),
                    ],
                    child: Image.asset(
                      'assets/images/Ellipse 519.png',
                      width: Get.width / 4.5,
                      height: 85,
                    ),
                  ),
                ])
          ],
        ),
      ),
    );
  }
}

Widget _buildInfoContainer(String assetPath, String text) {
  return Container(
    width: 50,
    height: 24,
    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 0.70, color: Color(0xFFEAEAEA)),
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          assetPath,
          width: 15,
          height: 15,
        ),
        const SizedBox(width: 2),
        Text(
          text,
          textAlign: TextAlign.end,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 10,
            fontFamily: MAIN_FONT_FAMILY,
          ),
        ),
      ],
    ),
  );
}
