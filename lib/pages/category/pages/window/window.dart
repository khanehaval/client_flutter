import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_item_builder.dart';
import 'package:get/get.dart';

class Category extends StatelessWidget {
  const Category({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color.fromRGBO(65, 177, 164, 1),
                      width: 0.6,
                    ), // Initial border color
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => MainCategory(index: 0),
                            transition: Transition.downToUp);
                      },
                      child: SizedBox(
                          height: _getHeight(context) / 4.8,
                          width: _getHeight(context) / 5,
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Image.asset(
                              'assets/images/Frame_amlak.png',
                            ),
                          )),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color.fromRGBO(65, 177, 164, 1),
                      width: 0.6,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => MainCategory(index: 1),
                            transition: Transition.downToUp);
                      },
                      child: SizedBox(
                          height: _getHeight(context) / 4.8,
                          width: (_getHeight(context) / 5) * (2 / 3),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.asset(
                                'assets/images/Frame_ejaramaskoni.png'),
                          )),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 17,
            ),
            Container(
              height: _getHeight(context) / 8,
              width: 330,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color.fromRGBO(65, 177, 164, 1),
                  width: 0.6,
                ),
              ),
              child: GestureDetector(
                  onTap: () {
                    Get.to(() => MainCategory(index: 2),
                        transition: Transition.downToUp);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset('assets/images/Frame_foroshmaskoni.png'),
                  )),
            ),
            const SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromRGBO(65, 177, 164, 1),
                        width: 0.7,
                      )),
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
                                'assets/images/Frame_ejaratejari.png'),
                          )),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromRGBO(65, 177, 164, 1),
                        width: 0.6,
                      )),
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
                              'assets/images/Frame_foroshtejari.png'),
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
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromRGBO(65, 177, 164, 1),
                        width: 0.8,
                      )),
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
                                'assets/images/Frame_kotamodat.png'),
                          )),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromRGBO(65, 177, 164, 1),
                        width: 0.8,
                      )),
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
                                  'assets/images/Frame_sakht va saz.png'),
                            ))),
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
    min(MediaQuery.of(context).size.height, 900);
