import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/advertisements.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/consultants.dart';
import 'package:flutter_application_1/pages/educational_tour.dart';
import 'package:flutter_application_1/pages/category/pages/home.dart';
import 'package:flutter_application_1/pages/real_estate_agency.dart';
import 'package:flutter_application_1/pages/private.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LoginSecondlyPage extends StatelessWidget {
  const LoginSecondlyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/images/Vector-47.svg',
            width: 18,
            height: 18,
          ),
          onPressed: () => Get.to(() => Advertisements()),
        ),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          color: Colors.white60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/logo-farsi.svg',
                    width: MediaQuery.of(context).size.width - 220,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "نوع کاربری خود را انتخاب کنید",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "هر کاربری امکانات مخصوص به خود را دارد",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: MAIN_FONT_FAMILY,
                        color: Color.fromRGBO(146, 146, 146, 1)),
                  ),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => Private(),
                          transition: Transition.downToUp,
                          duration: const Duration(milliseconds: 400));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient:
                              const LinearGradient(colors: GRADIANT_COLOR1)),
                      child: Padding(
                        padding: const EdgeInsets.all(1.2),
                        child: Container(
                          height: 65,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(19)),
                              color: Color.fromARGB(255, 255, 255, 255)),
                          child: const Center(
                            child: Text(
                              'شخصی',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: MAIN_FONT_FAMILY,
                                color: Color.fromRGBO(48, 48, 48, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => Consultants(),
                          transition: Transition.downToUp,
                          duration: const Duration(milliseconds: 400));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient:
                              const LinearGradient(colors: GRADIANT_COLOR1)),
                      child: Padding(
                        padding: const EdgeInsets.all(1.2),
                        child: Container(
                          height: 65,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19),
                              color: Colors.white),
                          child: const Center(
                            child: Text(
                              'مشاوران',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: MAIN_FONT_FAMILY,
                                color: Color.fromRGBO(48, 48, 48, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => Realestateagency(),
                          transition: Transition.downToUp,
                          duration: const Duration(milliseconds: 400));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient:
                              const LinearGradient(colors: GRADIANT_COLOR1)),
                      child: Padding(
                        padding: const EdgeInsets.all(1.2),
                        child: Container(
                          height: 65,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19),
                              color: Colors.white),
                          child: const Center(
                            child: Text(
                              'آژانس املاک',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: MAIN_FONT_FAMILY,
                                color: Color.fromRGBO(48, 48, 48, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.25),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 1)),
                      ],
                      gradient: getGradient(),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => Home());
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent),
                      child: const Text(
                        'بعدا یادآوری کن',
                        style: TextStyle(
                            color: Color.fromRGBO(48, 48, 48, 1),
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            fontFamily: MAIN_FONT_FAMILY),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.25),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: const Offset(0, 1)),
                        ],
                        gradient: getGradient(),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => EducationalTour(),
                              transition: Transition.leftToRightWithFade,
                              duration: const Duration(milliseconds: 400));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        child: const Text(
                          'مشاهده تور آموزشی',
                          style: TextStyle(
                              color: Color.fromRGBO(48, 48, 48, 1),
                              fontSize: 9,
                              fontFamily: MAIN_FONT_FAMILY),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  ShapeDecoration buildShapeDecoration() {
    return ShapeDecoration(
      gradient: const LinearGradient(
        begin: Alignment(-1.00, 0.00),
        end: Alignment(1, 0),
        colors: [
          Color(0xFFF9F9F9),
          Color(0x51F9F9F9),
          Color(0xA5F9F9F9),
          Color(0xFFF9F9F9)
        ],
      ),
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  LinearGradient getGradient() => const LinearGradient(colors: GRADIANT_COLOR);
}
