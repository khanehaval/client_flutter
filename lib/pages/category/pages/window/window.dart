import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_item_builder.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
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
                  padding: const EdgeInsets.all(0.5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => MainCategory(index: 0),
                              transition: Transition.downToUp);
                        },
                        child: SizedBox(
                            height: _getHeight(context) / 4.9,
                            width: _getHeight(context) / 5,
                            child: Padding(
                              padding: const EdgeInsets.all(25.0),
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
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: GRADIANT_COLOR1),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(0.5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => MainCategory(index: 1),
                              transition: Transition.downToUp);
                        },
                        child: SizedBox(
                            height: _getHeight(context) / 4.9,
                            width: (_getHeight(context) / 5) * (2 / 3),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Image.asset(
                                'assets/images/Frame_ejaramaskoni.png',
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
              padding: const EdgeInsets.all(0.5),
              child: Container(
                height: _getHeight(context) / 8,
                width: 330,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: GestureDetector(
                    onTap: () {
                      Get.to(() => MainCategory(index: 2),
                          transition: Transition.downToUp);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset(
                        'assets/images/Frame_foroshmaskoni.png',
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
                  padding: const EdgeInsets.all(0.5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => MainCategory(index: 4),
                              transition: Transition.downToUp);
                        },
                        child: SizedBox(
                            height: _getHeight(context) / 6.1,
                            width: _getHeight(context) / 6.0,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Image.asset(
                                'assets/images/Frame_ejaratejari.png',
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
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: GRADIANT_COLOR1),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(0.5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => MainCategory(index: 3),
                              transition: Transition.downToUp);
                        },
                        child: SizedBox(
                          height: _getHeight(context) / 6.2,
                          width: _getHeight(context) / 6.1,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
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
                  padding: const EdgeInsets.all(0.5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => MainCategory(index: 5),
                              transition: Transition.downToUp);
                        },
                        child: SizedBox(
                            height: _getHeight(context) / 6.2,
                            width: _getHeight(context) / 6.1,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Image.asset(
                                'assets/images/Frame_kotamodat.png',
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
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: GRADIANT_COLOR1),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(0.5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap: () {
                            Get.to(() => MainCategory(index: 6),
                                transition: Transition.downToUp);
                          },
                          child: SizedBox(
                              height: _getHeight(context) / 6.2,
                              width: _getHeight(context) / 6.1,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Image.asset(
                                  'assets/images/Frame_sakht va saz.png',
                                  color: const Color.fromRGBO(
                                    99,
                                    99,
                                    99,
                                    1,
                                  ),
                                ),
                              ))),
                    ),
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
    min(MediaQuery.of(context).size.height, 900);
