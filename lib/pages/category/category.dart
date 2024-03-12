import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/main_category.dart';

import 'package:get/get.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 10,
                            )
                          ],
                          border: Border.all(
                            color: Colors.blue, // Initial border color
                            width: 0.6,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => MainCategory(index: 0));
                          },
                          child: SizedBox(
                              height: _getHeight(context) / 5,
                              width: _getHeight(context) / 5,
                              child:
                                  Image.asset('assets/images/Frame_amlak.png')),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 10,
                          )
                        ],
                        border: Border.all(
                          color: Colors.blue,
                          width: 0.7,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => MainCategory(index: 1));
                          },
                          child: SizedBox(
                              height: _getHeight(context) / 5,
                              width: (_getHeight(context) / 5) * (2 / 3),
                              child: Image.asset(
                                  'assets/images/Frame_ejaramaskoni.png')),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: _getHeight(context) / 7,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 10,
                      )
                    ],
                    border: Border.all(
                      color: Colors.blue,
                      width: 0.7,
                    ),
                  ),
                  child: GestureDetector(
                      onTap: () {
                        Get.to(() => MainCategory(index: 2));
                      },
                      child:
                          Image.asset('assets/images/Frame_foroshmaskoni.png')),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 10,
                            )
                          ],
                          border: Border.all(
                            color: Colors.blue, // Initial border color
                            width: 0.7,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => MainCategory(index: 4));
                          },
                          child: SizedBox(
                              height: _getHeight(context) / 6,
                              width: _getHeight(context) / 6,
                              child: Image.asset(
                                  'assets/images/Frame_ejaratejari.png')),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 10,
                            )
                          ],
                          border: Border.all(
                            color: Colors.blue, // Initial border color
                            width: 0.7,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => MainCategory(index: 3));
                          },
                          child: SizedBox(
                            height: _getHeight(context) / 6,
                            width: _getHeight(context) / 6,
                            child: Image.asset(
                                'assets/images/Frame_foroshtejari.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 10,
                            )
                          ],
                          border: Border.all(
                            color: Colors.blue, // Initial border color
                            width: 0.7,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => MainCategory(index: 5));
                          },
                          child: SizedBox(
                              height: _getHeight(context) / 6,
                              width: _getHeight(context) / 6,
                              child: Image.asset(
                                  'assets/images/Frame_kotamodat.png')),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 10,
                            )
                          ],
                          border: Border.all(
                            color: Colors.blue, // Initial border color
                            width: 0.7,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                            onTap: () {
                              Get.to(() => MainCategory(index: 6));
                            },
                            child: SizedBox(
                                height: _getHeight(context) / 6,
                                width: _getHeight(context) / 6,
                                child: Image.asset(
                                    'assets/images/Frame_sakht va saz.png'))),
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
    min(MediaQuery.of(context).size.height, 780);
