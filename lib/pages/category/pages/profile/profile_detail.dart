import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({super.key});

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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 64,
                    height: 100,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 0.50, color: Color(0xFF4C8CEC)),
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
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ویرایش\nاطلاعات',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(48, 48, 48, 1),
                              fontSize: 12,
                              fontFamily: MAIN_FONT_FAMILY,
                              height: 2.0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 160,
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
                            left: 100.0,
                          ),
                          child: SvgPicture.asset(
                            'assets/images/Group 1000004193.svg',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'پروفایل',
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
                          padding: EdgeInsets.only(right: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'ویرایش و درسترسی ها',
                                style: TextStyle(
                                  color: Color(0xFFA5A5A5),
                                  fontSize: 10,
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
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Divider(
                        indent: 25,
                        endIndent: 15,
                        color: Color.fromRGBO(226, 226, 226, 1),
                        thickness: 1,
                      ),
                    ),
                    Text(
                      '(2/4)',
                      style: TextStyle(
                        color: Color.fromRGBO(156, 64, 64, 1),
                        fontSize: 14,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'اطلاعات فردی',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Color.fromRGBO(159, 159, 159, 1),
                        fontSize: 14,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    SizedBox(width: 8),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 160,
                    height: 80,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'نام خانوادگی',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color.fromRGBO(48, 48, 48, 1),
                            fontSize: 12,
                            fontFamily:
                                MAIN_FONT_FAMILY, // تغییر به فونت مورد نظر
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: 137,
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFE2E2E2),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: 137,
                          child: const TextField(
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 8),
                              isDense: true,
                              border: InputBorder.none,
                              hintText: 'وارد کنید',
                              hintStyle: TextStyle(
                                fontSize: 11,
                                color: Color(0xFF626262),
                                fontFamily: MAIN_FONT_FAMILY,
                              ),
                            ),
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF626262),
                              fontFamily: MAIN_FONT_FAMILY,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 160,
                    height: 80,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'نام',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color.fromRGBO(48, 48, 48, 1),
                            fontSize: 12,
                            fontFamily:
                                MAIN_FONT_FAMILY, // تغییر به فونت مورد نظر
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: 137,
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFE2E2E2),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: 137,
                          child: const TextField(
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 8),
                              isDense: true,
                              border: InputBorder.none,
                              hintText: 'وارد کنید',
                              hintStyle: TextStyle(
                                fontSize: 11,
                                color: Color(0xFF626262),
                                fontFamily: MAIN_FONT_FAMILY,
                              ),
                            ),
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF626262),
                              fontFamily: MAIN_FONT_FAMILY,
                            ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 160,
                    height: 85,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
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
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'تاریخ تولد  ',
                                    style: TextStyle(
                                      color: Color(0xFF303030),
                                      fontSize: 11,
                                      fontFamily: MAIN_FONT_FAMILY,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'مثال (1368/01/01)',
                                    style: TextStyle(
                                      color: Color(0xFFA5A5A5),
                                      fontSize: 8,
                                      fontFamily: MAIN_FONT_FAMILY,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Container(
                          width: 137,
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFE2E2E2),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Expanded(
                          child: Container(
                            width: 140,
                            child: TextField(
                              textAlign: TextAlign.right,
                              decoration: InputDecoration(
                                  isDense: true,
                                  border: InputBorder.none,
                                  hintText: 'وارد کنید',
                                  hintStyle: const TextStyle(
                                    fontSize: 11,
                                    color: Color(0xFF626262),
                                    fontFamily: MAIN_FONT_FAMILY,
                                  ),
                                  prefixIcon: Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, bottom: 10.0, right: 30),
                                      child: SvgPicture.asset(
                                        'assets/images/calender_birthday.svg',
                                        width: 20,
                                      ),
                                    ),
                                  )),
                              style: const TextStyle(
                                fontSize: 11,
                                color: Color(0xFF626262),
                                fontFamily: MAIN_FONT_FAMILY,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 160,
                    height: 80,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'نام پدر',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color.fromRGBO(48, 48, 48, 1),
                            fontSize: 12,
                            fontFamily:
                                MAIN_FONT_FAMILY, // تغییر به فونت مورد نظر
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: 137,
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFE2E2E2),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: 137,
                          child: const TextField(
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 8),
                              isDense: true,
                              border: InputBorder.none,
                              hintText: 'وارد کنید',
                              hintStyle: TextStyle(
                                fontSize: 11,
                                color: Color(0xFF626262),
                                fontFamily: MAIN_FONT_FAMILY,
                              ),
                            ),
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF626262),
                              fontFamily: MAIN_FONT_FAMILY,
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
        ),
      ),
    );
  }
}
