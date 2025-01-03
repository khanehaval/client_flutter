import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/shared/widget_detail_call.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class NamayeshAgahi1 extends StatelessWidget {
  const NamayeshAgahi1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top),
                    child: Image.asset(
                      "assets/images/Pic One.png",
                      height: 310,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top),
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 3.0,
                          sigmaY: 3.0,
                        ),
                        child: Container(
                          width: 412,
                          height: 80,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromRGBO(255, 255, 255, 1),
                                Color.fromRGBO(255, 255, 255, 0.30),
                                Color.fromRGBO(255, 255, 255, 0.055),
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(
                                  0,
                                  0,
                                  0,
                                  0.1,
                                ),
                                blurRadius: 8,
                                offset: Offset(0, 2),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 65.0, left: 10),
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.064),
                              offset: Offset(0, 4),
                              blurRadius: 4)
                        ]),
                        child: SvgPicture.asset(
                          'assets/images/Back_NAMAYESH.svg',
                          width: 20,
                          height: 35,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 65, right: 10),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.064),
                              offset: Offset(0, 4),
                              blurRadius: 4)
                        ]),
                        child: SvgPicture.asset(
                          'assets/images/Save2.svg',
                          width: 20,
                          height: 35,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 65.0, right: 50),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.064),
                              offset: Offset(0, 3),
                              blurRadius: 6)
                        ]),
                        child: SvgPicture.asset(
                          'assets/images/Share.svg',
                          width: 20,
                          height: 35,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 1,
              ),
              Image.asset('assets/images/Map_namayesh.png'),
              const SizedBox(
                height: 2,
              ),
              Image.asset('assets/images/Pic 3.png'),
            ],
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.26,
            minChildSize: 0.26,
            maxChildSize: 0.80,
            builder: (BuildContext context, ScrollController scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: GRADIANT_COLOR),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 1.2),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: SvgPicture.asset(
                                  'assets/images/swipe up.svg'),
                            ),
                            const SizedBox(height: 15),
                            const Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 20.0),
                                child: Text(
                                  'ویلا 100 متری در زمین 250 متری، لوکیشن عالی',
                                  style: TextStyle(
                                    fontFamily: MAIN_FONT_FAMILY,
                                    fontSize: 14,
                                    color: Color.fromRGBO(48, 48, 48, 1),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child:
                                    SvgPicture.asset('assets/images/Villa.svg'),
                              ),
                            ),
                            const Divider(
                              indent: 10,
                              endIndent: 10,
                              color: Color.fromRGBO(226, 226, 226, 1),
                            ),
                            const SizedBox(height: 20),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: SvgPicture.asset(
                                      'assets/images/Main feature.svg'),
                                ),
                                const Divider(
                                  indent: 10,
                                  endIndent: 10,
                                  color: Color.fromRGBO(226, 226, 226, 1),
                                ),
                                const SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: SvgPicture.asset(
                                      'assets/images/detail.svg'),
                                ),
                                const SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: SvgPicture.asset(
                                      'assets/images/facilit.svg'),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  ' .........................................................  ویژگی های آگهی  ',
                                  style: TextStyle(
                                    fontFamily: MAIN_FONT_FAMILY,
                                    fontSize: 12,
                                    color: Color.fromRGBO(99, 99, 99, 1),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: SvgPicture.asset(
                                      'assets/images/detail2.svg'),
                                ),
                                const SizedBox(height: 30),
                                const Text(
                                  ' ............................................................  امکانات آگهی ',
                                  style: TextStyle(
                                    fontFamily: MAIN_FONT_FAMILY,
                                    fontSize: 12,
                                    color: Color.fromRGBO(99, 99, 99, 1),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: SvgPicture.asset(
                                      'assets/images/detail3.svg'),
                                ),
                                const SizedBox(height: 30),
                                const Text(
                                  ' .........................................................  توضیحات آگهی ',
                                  style: TextStyle(
                                    fontFamily: MAIN_FONT_FAMILY,
                                    fontSize: 12,
                                    color: Color.fromRGBO(99, 99, 99, 1),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                const Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 20.0),
                                    child: Text(
                                      'نورگیر عالی\nدر بهترین لوکیشن منطقه\nفاصله با دریا تنها 5 دقیقه\nنزدیک به سوپر مارکت و فروشگاه های بزرگ منطقه\nمحوطه ویلا درخت کاری شده\nاستخر با امکانات روز\nمعماری مدرن و بهترین متریال',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 14,
                                        fontFamily: 'Iran Sans',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                const Divider(
                                  indent: 7,
                                  endIndent: 10,
                                  color: Color.fromRGBO(226, 226, 226, 1),
                                ),
                                const SizedBox(height: 30),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: SvgPicture.asset(
                                      'assets/images/Component 2.svg'),
                                ),
                                const SizedBox(height: 30),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    SvgPicture.asset('assets/images/pm.svg'),
                                    const SizedBox(
                                      width: 70,
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          DetailCall((selectedMelk) {
                                            selectedMelk; // Update TextField with selected option
                                          });
                                        },
                                        child: SvgPicture.asset(
                                            'assets/images/tamas.svg'))
                                  ],
                                ),
                                const SizedBox(height: 30),
                                Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 45,
                                          width: 150,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                  width: 1,
                                                  color: Color(0xFFB7B7B7)),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/images/left_icon.svg',
                                                  width: 10,
                                                  height: 15,
                                                ),
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                const Text(
                                                  'گزارش مشکل آگهی',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          MAIN_FONT_FAMILY,
                                                      fontSize: 9),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                SvgPicture.asset(
                                                  'assets/images/Vector-51.svg',
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          height: 45,
                                          width: 177,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                  width: 1,
                                                  color: Color(0xFFB7B7B7)),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/images/left_icon.svg',
                                                  width: 10,
                                                  height: 15,
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                const Text(
                                                  'زنگ خطرهای قبل از معامله',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          MAIN_FONT_FAMILY,
                                                      fontSize: 9),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                SvgPicture.asset(
                                                  'assets/images/Alarm Icon.svg',
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                const SizedBox(height: 50),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
