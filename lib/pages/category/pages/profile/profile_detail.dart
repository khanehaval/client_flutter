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
              const SizedBox(
                height: 30,
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
                      '(0/6)',
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
                      'ارتباط با شما',
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
                height: 30,
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'شماره تلفن ثابت',
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'شماره تلفن همراه',
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'آدرس وب سایت',
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'ایمیل',
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
                    width: 343,
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'آدرس محل سکونت',
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
                          width: 340,
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
              Container(
                width: 343,
                height: 85,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
                      'کد پستی',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color.fromRGBO(48, 48, 48, 1),
                        fontSize: 12,
                        fontFamily: MAIN_FONT_FAMILY, // تغییر به فونت مورد نظر
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      width: 340,
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
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 8),
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
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Divider(
                        indent: 20,
                        endIndent: 15,
                        color: Color.fromRGBO(226, 226, 226, 1),
                        thickness: 1,
                      ),
                    ),
                    Text(
                      '(1/2)',
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
                      'اطلاعات هویتی',
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
                height: 30,
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
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'آپلود تصویر کارت ملی',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromRGBO(48, 48, 48, 1),
                                fontSize: 12,
                                fontFamily: MAIN_FONT_FAMILY,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        const SizedBox(height: 8),
                        Expanded(
                          child: Container(
                            width: 140,
                            child: TextField(
                              readOnly: true,
                              textAlign: TextAlign.right,
                              decoration: InputDecoration(
                                  isDense: true,
                                  border: InputBorder.none,
                                  hintText: 'انتخاب کنید',
                                  hintStyle: const TextStyle(
                                    fontSize: 11,
                                    color: Color(0xFF626262),
                                    fontFamily: MAIN_FONT_FAMILY,
                                  ),
                                  prefixIcon: Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 5.0, right: 30),
                                      child: SvgPicture.asset(
                                        'assets/images/Del.svg',
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'کد ملی',
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
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'آپلود تصویر شناسنامه',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromRGBO(48, 48, 48, 1),
                                fontSize: 12,
                                fontFamily: MAIN_FONT_FAMILY,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        const SizedBox(height: 8),
                        Expanded(
                          child: Container(
                            width: 140,
                            child: TextField(
                              readOnly: true,
                              textAlign: TextAlign.right,
                              decoration: InputDecoration(
                                  isDense: true,
                                  border: InputBorder.none,
                                  hintText: 'انتخاب کنید',
                                  hintStyle: const TextStyle(
                                    fontSize: 11,
                                    color: Color(0xFF626262),
                                    fontFamily: MAIN_FONT_FAMILY,
                                  ),
                                  prefixIcon: Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 5.0, right: 30),
                                      child: SvgPicture.asset(
                                        'assets/images/Del.svg',
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'شماره شناسنامه',
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
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Divider(
                        indent: 20,
                        endIndent: 15,
                        color: Color.fromRGBO(226, 226, 226, 1),
                        thickness: 1,
                      ),
                    ),
                    Text(
                      '(0/2)',
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
                      'اطلاعات مالی',
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
                height: 30,
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'شماره حساب',
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'بانک',
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
                    width: 343,
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'شماره شبا',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color.fromRGBO(48, 48, 48, 1),
                            fontSize: 12,
                            fontFamily: MAIN_FONT_FAMILY,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0xFFE2E2E2),
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(
                          width: 320,
                          child: Row(
                            children: [
                              Text(
                                'IR', // متن ثابت سمت چپ
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Color(0xFF626262),
                                  fontFamily: MAIN_FONT_FAMILY,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  textAlign: TextAlign.right,
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 8),
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
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Divider(
                        indent: 20,
                        endIndent: 15,
                        color: Color.fromRGBO(226, 226, 226, 1),
                        thickness: 1,
                      ),
                    ),
                    Text(
                      '(1/1)',
                      style: TextStyle(
                        color: Color.fromRGBO(66, 159, 86, 1),
                        fontSize: 14,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'نام کاربری',
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
                height: 30,
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'نمایش نام کاربری شما',
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
                            readOnly: true,
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 8),
                              isDense: true,
                              border: InputBorder.none,
                              hintText: 'Agancy-',
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '(Ayande) ',
                                    style: TextStyle(
                                      color: Color(0xFFA5A5A5),
                                      fontSize: 8,
                                      fontFamily: MAIN_FONT_FAMILY,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'نام کاربری ',
                                    style: TextStyle(
                                      color: Color(0xFF303030),
                                      fontSize: 11,
                                      fontFamily: MAIN_FONT_FAMILY,
                                    ),
                                  ),
                                ],
                              ),
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
                            child: const TextField(
                              textAlign: TextAlign.right,
                              decoration: InputDecoration(
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Divider(
                        indent: 20,
                        endIndent: 15,
                        color: Color.fromRGBO(226, 226, 226, 1),
                        thickness: 1,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'تغییر رمز عبور',
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
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 343,
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'رمز فعلی',
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
                          width: 340,
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
                                  vertical: 0, horizontal: 0),
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
              Container(
                width: 343,
                height: 85,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'رمز جدید',
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 11,
                                  fontFamily: MAIN_FONT_FAMILY,
                                ),
                              ),
                              TextSpan(
                                text: '(8 کارکتر شامل اعداد، حروف و نشان ها)',
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
                      width: 340,
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
                        child: const TextField(
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
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
                    ),
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
                    width: 343,
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'تکرار رمز عبور',
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
                          width: 340,
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
                                  vertical: 0, horizontal: 0),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 160,
                      height: 41,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x26000000),
                            blurRadius: 3,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Center(
                        child: Container(
                          width: 137,
                          child: const TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 0),
                              isDense: true,
                              border: InputBorder.none,
                              hintText: '--  --  -- -- --',
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
                      ),
                    ),
                    Container(
                      width: 160,
                      height: 41,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
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
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'D578ghe',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF00BD61),
                                fontSize: 14,
                                fontFamily: MAIN_FONT_FAMILY),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 119,
                height: 32,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 119,
                        height: 32,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFE2E2E2)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x7FC7D8CA),
                              blurRadius: 7,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 37,
                      top: 5,
                      child: SizedBox(
                        width: 46,
                        child: Text(
                          'ذخیره',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFE2E2E2),
                            fontSize: 14,
                            fontFamily: 'IRANSansWeb(FaNum)',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
