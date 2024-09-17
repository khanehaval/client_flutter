import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/shared/widget_detail_call.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class NamayeshListAgency extends StatelessWidget {
  const NamayeshListAgency({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar1(),
        body: Stack(children: [
          Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/images/agency_namayeh_agahi.png",
                    height: Get.height / 1.3,
                    width: 412,
                    fit: BoxFit.cover,
                  ),
                  ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(),
                      child: Center(
                        child: Container(
                          width: 302,
                          height: Get.height / 1.6,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromRGBO(254, 254, 254, 1),
                                Color.fromRGBO(255, 255, 255, 0),
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
                                offset: Offset(0, 2),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: Image.asset(
                        'assets/images/Score_axansbartar.png',
                        width: 143,
                        height: 60,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Center(
                      child: Container(
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurRadius: 10,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 115.0),
                      child: SvgPicture.asset(
                        'assets/images/logo-farsi.svg',
                        width: MediaQuery.of(context).size.width - 275,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 260.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/Group 776.svg',
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'خانه اول',
                          style: TextStyle(
                              color: Color.fromRGBO(48, 48, 48, 1),
                              fontSize: 18,
                              fontFamily: 'Aban Bold'),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'آژانس املاک',
                          style: TextStyle(
                              color: Color.fromRGBO(48, 48, 48, 1),
                              fontSize: 18,
                              fontFamily: 'Aban Bold'),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 302.0, left: 220),
                      child: Align(
                        child: SvgPicture.asset('assets/images/Experience.svg'),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 308.0, right: 50),
                    child: Center(
                      child: Text(
                        ' خرید و فروش پروژه های بزرگ و اقتصادی',
                        style: TextStyle(
                            fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 400.0,
                    ),
                    child: Center(
                      child: Container(
                        width: 302,
                        height: 35,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(
                                  0, 114, 114, 114), // محو شدن از شفافیت
                              Colors.white, // وسط سفید
                              Color.fromARGB(
                                  0, 217, 216, 216), // محو شدن به شفافیت
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'بـا مـا صـاحبخـانه شـویـد',
                            style: TextStyle(
                              fontFamily: 'Aban Bold',
                              fontSize: 23,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.30,
            minChildSize: 0.30,
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
        ]));
  }
}
