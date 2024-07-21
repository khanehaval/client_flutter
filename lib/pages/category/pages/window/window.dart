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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                              Get.to(() => MainCategory(index: 0),
                                  transition: Transition.leftToRightWithFade);
                            },
                            child: SizedBox(
                                height: _getHeight(context) / 4.9,
                                width: _getHeight(context) / 5,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 50.0,
                                      left: 20,
                                      right: 20,
                                      top: 50),
                                  child: Image.asset(
                                    'assets/images/Frame_amlak.png',
                                    color: const Color.fromRGBO(
                                      99,
                                      99,
                                      99,
                                      1,
                                    ),
                                  ),
                                )),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 140, left: 70),
                        child: Text("امـلاک",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: MAIN_FONT_FAMILY,
                              color: Color.fromRGBO(
                                99,
                                99,
                                99,
                                1,
                              ),
                            )),
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
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(() => MainCategory(index: 1),
                                  transition: Transition.leftToRightWithFade);
                            },
                            child: SizedBox(
                              height: _getHeight(context) / 4.9,
                              width: (_getHeight(context) / 5) * (2 / 3),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 30.0, left: 20, right: 20, top: 20),
                                child: Image.asset(
                                  'assets/images/Frame_ejaramaskoni.png',
                                  color: const Color.fromRGBO(
                                    99,
                                    99,
                                    99,
                                    1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 140, left: 17),
                        child: Text(
                          "اجاره مسکونی",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: MAIN_FONT_FAMILY,
                            color: Color.fromRGBO(
                              99,
                              99,
                              99,
                              1,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 17,
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
                    height: _getHeight(context) / 8,
                    width: 330,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => MainCategory(index: 2),
                            transition: Transition.leftToRightWithFade);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, bottom: 15, left: 125),
                        child: Image.asset(
                          'assets/images/Frame_foroshmaskoni.png',
                          color: const Color.fromRGBO(
                            99,
                            99,
                            99,
                            1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 40.0, left: 70),
                    child: Text(
                      "فروش مسکونی",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: MAIN_FONT_FAMILY,
                        color: Color.fromRGBO(
                          99,
                          99,
                          99,
                          1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                    top: 10.0, bottom: 40, left: 10, right: 10),
                                child: Image.asset(
                                  'assets/images/Frame_ejaratejari.png',
                                  color: const Color.fromRGBO(
                                    99,
                                    99,
                                    99,
                                    1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 100.0, left: 17),
                        child: Text(
                          "اجاره تجاری و اداری",
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: MAIN_FONT_FAMILY,
                            color: Color.fromRGBO(
                              99,
                              99,
                              99,
                              1,
                            ),
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
                                    top: 15.0, bottom: 40, left: 10, right: 10),
                                child: Image.asset(
                                  'assets/images/Frame_foroshtejari.png',
                                  color: const Color.fromRGBO(
                                    99,
                                    99,
                                    99,
                                    1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 100.0, left: 14),
                        child: Text(
                          "فروش تجاری و اداری",
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: MAIN_FONT_FAMILY,
                            color: Color.fromRGBO(
                              99,
                              99,
                              99,
                              1,
                            ),
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                    top: 10.0, bottom: 40, left: 10, right: 10),
                                child: Image.asset(
                                  'assets/images/Frame_kotamodat.png',
                                  color: const Color.fromRGBO(
                                    99,
                                    99,
                                    99,
                                    1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 102.0, left: 25),
                        child: Text(
                          "اجاره کوتاه مدت",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: MAIN_FONT_FAMILY,
                            color: Color.fromRGBO(
                              99,
                              99,
                              99,
                              1,
                            ),
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
                                    top: 10.0, bottom: 40, left: 10, right: 10),
                                child: Image.asset(
                                  'assets/images/Frame_sakht va saz.png',
                                  color: const Color.fromRGBO(
                                    99,
                                    99,
                                    99,
                                    1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 102.0, left: 35),
                        child: Text(
                          "ساخت و ساز",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: MAIN_FONT_FAMILY,
                            color: Color.fromRGBO(
                              99,
                              99,
                              99,
                              1,
                            ),
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
    );
  }
}

double _getHeight(BuildContext context) =>
    min(MediaQuery.of(context).size.height, 800);
