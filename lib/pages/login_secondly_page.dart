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
      body: Stack(children: [
        Container(
          color: Colors.white60,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/intro_screen_2.png',
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "نوع کاربری خود را انتخاب کنید",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                ),
                const Text(
                  "هر کاربری امکانات مخصوص به خود را دارد",
                  style: TextStyle(fontSize: 15, fontFamily: MAIN_FONT_FAMILY),
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                    onTap: () {
                      Get.to(() => Private());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * (0.6),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Center(
                          child: Text(
                            'شخصی',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: MAIN_FONT_FAMILY,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                    onTap: () {
                      Get.to(() => Consultants());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * (0.6),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Center(
                          child: Text(
                            'مشاوران ',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: MAIN_FONT_FAMILY,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                    onTap: () {
                      Get.to(() => const Realestateagency());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * (0.6),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
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
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 140),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * (0.4),
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
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: MAIN_FONT_FAMILY),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * (0.4),
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
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
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
      ]),
    );
  }

  LinearGradient getGradient() => const LinearGradient(colors: [
        Color.fromARGB(700, 55, 250, 100),
        Colors.blue,
      ]);
}
