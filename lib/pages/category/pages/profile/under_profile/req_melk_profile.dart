import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_req_melk_profile.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ReqMelkProfile extends StatelessWidget {
  ReqMelkProfile({super.key});
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar2(0),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: Get.width / 2.8,
                    height: 100,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 13),
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
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'تعداد اطلاع رسانی ها',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF3E3E3E),
                            fontSize: 14,
                            fontFamily: 'Aban Bold',
                          ),
                        ),
                        const Text(
                          '4',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                          ),
                        ),
                        Container(
                          width: 94,
                          height: 22,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFF9F9F9),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Color(0xFFAEAEAE),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '!',
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 12,
                                        fontFamily: MAIN_FONT_FAMILY,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'هنوز شروع نکردید',
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 11,
                                        fontFamily: 'Aban Bold',
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
                    width: 10,
                  ),
                  Container(
                    width: Get.width / 2.4,
                    height: 100,
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
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 110.0,
                          ),
                          child: SvgPicture.asset(
                            'assets/images/home_icon_profile.svg',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'درخواست ملک',
                                style: TextStyle(
                                  color: Color(0xFF626262),
                                  fontSize: 18,
                                  fontFamily: 'Aban Light',
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'دنبال چه ملکی میگردی؟',
                                style: TextStyle(
                                  color: Color(0xFFA5A5A5),
                                  fontSize: 9,
                                  fontFamily: MAIN_FONT_FAMILY_LIGHT,
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
              Padding(
                padding: const EdgeInsets.only(right: 20.0, left: 20),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    controller: searchController,
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      hintText: 'جستجو',
                      hintStyle: const TextStyle(
                          fontFamily: MAIN_FONT_FAMILY,
                          fontSize: 14,
                          height: 1.6),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(23, 102, 175, 1),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(23, 102, 175, 1),
                        ),
                      ),
                      prefixIcon: const Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0, left: 20),
                child: SingleChildScrollView(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: Get.width / 4,
                        height: 41,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFA5A5A5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x26000000),
                              blurRadius: 4,
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                                'assets/images/Arrow_list_agency.svg'),
                            const SizedBox(width: 5),
                            const Text(
                              'قیمت',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF636363),
                                fontSize: 11,
                                fontFamily: MAIN_FONT_FAMILY,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: Get.width / 4,
                        height: 41,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFA5A5A5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x26000000),
                              blurRadius: 4,
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                                'assets/images/Arrow_list_agency.svg'),
                            const SizedBox(width: 5),
                            const Text(
                              'متراژ',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF636363),
                                fontSize: 11,
                                fontFamily: MAIN_FONT_FAMILY,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: Get.width / 4,
                        height: 41,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFA5A5A5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x26000000),
                              blurRadius: 4,
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                                'assets/images/Arrow_list_agency.svg'),
                            const SizedBox(width: 15),
                            const Text(
                              'محله',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF636363),
                                fontSize: 12,
                                fontFamily: MAIN_FONT_FAMILY,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: Get.width / 4,
                        height: 41,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFFA5A5A5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x26000000),
                              blurRadius: 4,
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                                'assets/images/Arrow_list_agency.svg'),
                            const SizedBox(width: 10),
                            const Text(
                              'شهر',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF636363),
                                fontSize: 11.5,
                                fontFamily: MAIN_FONT_FAMILY,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: Get.width / 4,
                        height: 41,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFFA5A5A5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x26000000),
                              blurRadius: 4,
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                                'assets/images/Arrow_list_agency.svg'),
                            const SizedBox(width: 10),
                            const Text(
                              'نوع ملک',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF636363),
                                fontSize: 11.5,
                                fontFamily: MAIN_FONT_FAMILY,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const WidgetReqMelkProfile(),
              const SizedBox(
                height: 20,
              ),
              const WidgetReqMelkProfile(),
              const SizedBox(
                height: 20,
              ),
              const WidgetReqMelkProfile(),
              const SizedBox(
                height: 20,
              ),
              const WidgetReqMelkProfile(),
              const SizedBox(
                height: 20,
              ),
              const WidgetReqMelkProfile(),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
