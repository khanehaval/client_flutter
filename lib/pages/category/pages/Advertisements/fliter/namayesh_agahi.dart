import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
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
                Stack(children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top),
                    child: Image.asset(
                      "assets/images/Pic One.png",
                      height: 330,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0, left: 10),
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset(
                        'assets/images/Back_NAMAYESH.svg',
                        width: 15,
                        height: 25,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, right: 10),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset(
                        'assets/images/Save2.svg',
                        width: 15,
                        height: 25,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0, right: 40),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset(
                        'assets/images/Share.svg',
                        width: 15,
                        height: 25,
                      ),
                    ),
                  ),
                ]),
                Image.asset('assets/images/Map_namayesh.png'),
                Image.asset('assets/images/Pic 3.png'),
              ],
            ),
            DraggableScrollableSheet(
              maxChildSize: 0.9,
              initialChildSize: 0.9,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 550.0),
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  gradient:
                                      LinearGradient(colors: GRADIANT_COLOR)),
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Container(
                                  width: 410,
                                  height: 600,
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      color: Colors.white),
                                  child: SingleChildScrollView(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10.0),
                                          child: SvgPicture.asset(
                                              'assets/images/swipe up.svg'),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        const Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20.0),
                                            child: Text(
                                              'ویلا 100 متری در زمین 250 متری، لوکیشن عالی',
                                              style: TextStyle(
                                                  fontFamily: MAIN_FONT_FAMILY,
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(
                                                      48, 48, 48, 1)),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0),
                                            child: SvgPicture.asset(
                                                'assets/images/Villa.svg'),
                                          ),
                                        ),
                                        const Divider(
                                          indent: 7,
                                          endIndent: 10,
                                          color:
                                              Color.fromRGBO(226, 226, 226, 1),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10.0),
                                              child: SvgPicture.asset(
                                                  'assets/images/Main feature.svg'),
                                            ),
                                            const Divider(
                                              indent: 7,
                                              endIndent: 10,
                                              color: Color.fromRGBO(
                                                  226, 226, 226, 1),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10.0),
                                              child: Image.asset(
                                                  'assets/images/convertable.png'),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Divider(
                                              indent: 7,
                                              endIndent: 10,
                                              color: Color.fromRGBO(
                                                  226, 226, 226, 1),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: SvgPicture.asset(
                                                  'assets/images/detail.svg'),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10.0),
                                              child: SvgPicture.asset(
                                                  'assets/images/facilit.svg'),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            const Text(
                                              ' .........................................................  ویژگی های آگهی  ',
                                              style: TextStyle(
                                                  fontFamily: MAIN_FONT_FAMILY,
                                                  fontSize: 12,
                                                  color: Color.fromRGBO(
                                                      99, 99, 99, 1)),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10.0),
                                              child: SvgPicture.asset(
                                                  'assets/images/detail2.svg'),
                                            ),
                                            const SizedBox(
                                              height: 30,
                                            ),
                                            const Text(
                                              ' ............................................................  امکانات آگهی ',
                                              style: TextStyle(
                                                  fontFamily: MAIN_FONT_FAMILY,
                                                  fontSize: 12,
                                                  color: Color.fromRGBO(
                                                      99, 99, 99, 1)),
                                            ),
                                            const SizedBox(
                                              height: 30,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0),
                                              child: SvgPicture.asset(
                                                  'assets/images/detail3.svg'),
                                            ),
                                            const SizedBox(
                                              height: 30,
                                            ),
                                            const Text(
                                              ' .........................................................  توضیحات آگهی ',
                                              style: TextStyle(
                                                  fontFamily: MAIN_FONT_FAMILY,
                                                  fontSize: 12,
                                                  color: Color.fromRGBO(
                                                      99, 99, 99, 1)),
                                            ),
                                            const SizedBox(
                                              height: 30,
                                            ),
                                            const Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: 20.0),
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
                                            const SizedBox(
                                              height: 30,
                                            ),
                                            const Divider(
                                              indent: 7,
                                              endIndent: 10,
                                              color: Color.fromRGBO(
                                                  226, 226, 226, 1),
                                            ),
                                            const SizedBox(
                                              height: 30,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5.0),
                                              child: SvgPicture.asset(
                                                  'assets/images/Contact us.svg'),
                                            ),
                                            const SizedBox(
                                              height: 50,
                                            )
                                          ],
                                        ),
                                      ]),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ));
  }
}
