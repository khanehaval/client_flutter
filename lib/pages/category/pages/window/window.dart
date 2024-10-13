import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_item_builder.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Category extends StatelessWidget {
  const Category({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: GRADIANT_COLOR1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(0.7),
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => MainCategory(index: 1),
                                transition: Transition.leftToRightWithFade);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: _getHeight(context) / 4.9,
                                width: (_getHeight(context) / 5) * (2 / 3),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 30.0,
                                      left: 25,
                                      right: 25,
                                      top: 25),
                                  child: Image.asset(
                                    'assets/images/Frame_ejaramaskoni.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 140, left: 25),
                          child: Text(
                            "اجاره مسکونی",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: MAIN_FONT_FAMILY,
                                color: Color.fromRGBO(48, 48, 48, 1)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => MainCategory(index: 0),
                        transition: Transition.leftToRightWithFade);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: GRADIANT_COLOR1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(0.7),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                  height: _getHeight(context) / 4.9,
                                  width: _getHeight(context) / 5,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 55.0,
                                        left: 25,
                                        right: 25,
                                        top: 55),
                                    child: Image.asset(
                                      'assets/images/Frame_amlak.png',
                                    ),
                                  )),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 140, left: 70),
                            child: Text("امـلاک",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: MAIN_FONT_FAMILY,
                                  color: Color.fromRGBO(48, 48, 48, 1),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => MainCategory(index: 2),
                    transition: Transition.leftToRightWithFade);
              },
              child: Container(
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: GRADIANT_COLOR1),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(0.7),
                  child: Stack(
                    children: [
                      Container(
                        height: _getHeight(context) / 8,
                        width: MediaQuery.of(context).size.width / 1.2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, bottom: 15, left: 140),
                          child: Image.asset(
                            'assets/images/Frame_foroshmaskoni.png',
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 40.0, left: 70),
                        child: Text(
                          "فروش مسکونی",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: MAIN_FONT_FAMILY,
                            color: Color.fromRGBO(48, 48, 48, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: GRADIANT_COLOR1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(0.7),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Get.to(() => MainCategory(index: 4),
                                    transition: Transition.leftToRightWithFade);
                              },
                              child: SizedBox(
                                height: _getHeight(context) / 6.8,
                                width: _getHeight(context) / 6.0,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15.0,
                                      bottom: 50,
                                      left: 20,
                                      right: 20),
                                  child: Image.asset(
                                    'assets/images/Frame_ejaratejari.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 100.0, left: 22),
                          child: Text(
                            "اجاره تجاری و اداری",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: MAIN_FONT_FAMILY,
                              color: Color.fromRGBO(48, 48, 48, 1),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: GRADIANT_COLOR1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(0.7),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: GestureDetector(
                              onTap: () {
                                Get.to(() => MainCategory(index: 3),
                                    transition: Transition.leftToRightWithFade);
                              },
                              child: SizedBox(
                                height: _getHeight(context) / 6.8,
                                width: _getHeight(context) / 6.0,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15.0,
                                      bottom: 50,
                                      left: 20,
                                      right: 20),
                                  child: Image.asset(
                                    'assets/images/Frame_foroshtejari.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 100.0, left: 20),
                          child: Text(
                            "فروش تجاری و اداری",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: MAIN_FONT_FAMILY,
                              color: Color.fromRGBO(48, 48, 48, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: GRADIANT_COLOR1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(0.7),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Get.to(() => MainCategory(index: 5),
                                    transition: Transition.leftToRightWithFade);
                              },
                              child: SizedBox(
                                height: _getHeight(context) / 6.8,
                                width: _getHeight(context) / 6.0,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15.0,
                                      bottom: 50,
                                      left: 20,
                                      right: 20),
                                  child: Image.asset(
                                    'assets/images/Frame_kotamodat.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 102.0, left: 32),
                          child: Text(
                            "اجاره کوتاه مدت",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: MAIN_FONT_FAMILY,
                              color: Color.fromRGBO(48, 48, 48, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: GRADIANT_COLOR1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(0.7),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Get.to(() => MainCategory(index: 6),
                                    transition: Transition.leftToRightWithFade);
                              },
                              child: SizedBox(
                                height: _getHeight(context) / 6.8,
                                width: _getHeight(context) / 6.0,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15.0,
                                      bottom: 47,
                                      left: 20,
                                      right: 20),
                                  child: Image.asset(
                                    'assets/images/Frame_sakht va saz.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 102.0, left: 42),
                          child: Text(
                            "ساخت و ساز",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: MAIN_FONT_FAMILY,
                              color: Color.fromRGBO(48, 48, 48, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

double _getHeight(BuildContext context) =>
    min(MediaQuery.of(context).size.height, 800);
