import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class WidgetReqMelkProfile extends StatefulWidget {
  const WidgetReqMelkProfile({super.key});

  @override
  _WidgetReqMelkProfileState createState() => _WidgetReqMelkProfileState();
}

class _WidgetReqMelkProfileState extends State<WidgetReqMelkProfile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width / 1.11,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFB7B7B7)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 30,
                      height: 25,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 0.50, color: Color(0xFF296FE2)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: SvgPicture.asset(
                          'assets/images/Call_icon_profile.svg',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 30,
                      height: 25,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 0.50, color: Color(0xFF00BD61)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: SvgPicture.asset(
                          'assets/images/Message_icon_profile.svg',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.20, color: Color(0xFF303030)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: const Text(
                              '80 - 120',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF636363),
                                fontSize: 10,
                                fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.20, color: Color(0xFF303030)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: const Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'جنت آباد ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF636363),
                                    fontSize: 10,
                                    fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.20, color: Color(0xFF303030)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: const Column(
                              children: [
                                Text(
                                  'تهران',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF636363),
                                    fontSize: 10,
                                    fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 5),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.20, color: Color(0xFF303030)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: const Column(
                              children: [
                                Text(
                                  'آپارتمان',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF636363),
                                    fontSize: 10,
                                    fontFamily: MAIN_FONT_FAMILY_MEDIUM,
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
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: Get.width / 4,
                    height: 30,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 0.20, color: Color(0xFF303030)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isExpanded = !isExpanded;
                        });
                      },
                      child: Container(
                        width: Get.width / 4,
                        height: 30,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.20, color: Color(0xFF303030)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset(
                              isExpanded
                                  ? 'assets/images/Arrow_up_green.svg' // Change icon if expanded
                                  : 'assets/images/down.svg', // Default icon
                              width: 11,
                              height: 11,
                            ),
                            const Text(
                              'توضیحات',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF303030),
                                fontSize: 11,
                                fontFamily: MAIN_FONT_FAMILY,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: Get.width / 2.7,
                    height: 30,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 0.20, color: Color(0xFF303030)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ShaderMask(
                          shaderCallback: (bounds) => const LinearGradient(
                            colors: [
                              Color(0xFF4C8CED),
                              Color(0xFF36D859),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(
                            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                          ),
                          child: const Text(
                            'قیمت تا 12 میلیارد تومان',
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: MAIN_FONT_FAMILY,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          // The container that will show below when tapped
          Visibility(
              visible: isExpanded,
              child: Container(
                width: Get.width / 1.1,
                height: Get.height / 8,
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.20, color: Color(0xFF303030)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'خانه ای میخوام پر نور و در کوچه های محلی که خلوت باشد و نزدیک مترو باشه خانه ای میخوام پر نور و در کوچه های محلی که خلوت باشد و نزدیک مترو باشه میخوام پر نور و در کوچه های محلی میخوام پر نور و در کوچه های محلی',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF636363),
                        fontSize: 10,
                        fontFamily: MAIN_FONT_FAMILY_LIGHT,
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
