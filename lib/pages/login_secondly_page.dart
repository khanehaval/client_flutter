import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:flutter_application_1/pages/consultants.dart';
import 'package:flutter_application_1/pages/educational_tour.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_application_1/pages/real_estate_agency.dart';
import 'package:flutter_application_1/pages/private.dart';
import 'package:get/get.dart';

class LoginSecondlyPage extends StatelessWidget {
  const LoginSecondlyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Get.to(() => Home()),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(
                () => const Profile(),
              );
            },
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(60)),
                child: const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Icon(
                    Icons.person_2_rounded,
                    size: 30,
                  ),
                )),
          ),
        ],
      ),
      body: Container(
        color: Colors.white60,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Image.asset(
                'assets/images/Rectangle 1.png',
                width: 220,
                height: 185,
              ),
              const SizedBox(
                height: 45,
              ),
              const Text(
                "نوع کاربری خود را انتخاب کنید",
                textAlign: TextAlign.justify,
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
              const SizedBox(
                height: 45,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => Private());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 65,
                  decoration: ShapeDecoration(
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
                          width: 1, color: Color.fromARGB(255, 19, 122, 133)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'شخصی',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: MAIN_FONT_FAMILY,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => Consultants());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 65,
                  decoration: ShapeDecoration(
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
                          width: 1, color: Color.fromARGB(255, 19, 122, 133)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'مشاوران ',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: MAIN_FONT_FAMILY,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const Realestateagency());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 65,
                  decoration: ShapeDecoration(
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
                      side: BorderSide(
                          width: 1, color: Color.fromARGB(255, 19, 122, 133)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'آژانس املاک ',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: MAIN_FONT_FAMILY,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15, left: 30),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
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
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: MAIN_FONT_FAMILY),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: getGradient(),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => EducationalTour());
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        child: const Text(
                          'مشاهده تور آموزشی',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: MAIN_FONT_FAMILY),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  LinearGradient getGradient() => const LinearGradient(colors: [
     Color.fromARGB(255, 95, 173, 237),
        Color.fromARGB(126, 118, 238, 146),

      ]);
}
