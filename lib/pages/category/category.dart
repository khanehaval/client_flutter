import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/main_category.dart';

import 'package:get/get.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: _getHeight(context) / 5,
                      width: _getHeight(context) / 5,
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
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => MainCategory(index: 0));
                        },
                        child: SizedBox(
                            child: Image.asset('assets/images/amlak.png')),
                      ),
                    ),
                    Container(
                      height: _getHeight(context) / 5,
                      width: (_getHeight(context) / 5) * (2 / 3),
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
                          Get.to(() => MainCategory(index: 1));
                        },
                        child: Image.asset('assets/images/ejara_maskoni.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
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
                      child: Image.asset('assets/images/forosh_maskoni.png')),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: _getHeight(context) / 6,
                      width: _getHeight(context) / 6,
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
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => MainCategory(index: 4));
                        },
                        child:
                            Image.asset('assets/images/ejara_tajari_edari.png'),
                      ),
                    ),
                    Container(
                      height: _getHeight(context) / 6,
                      width: _getHeight(context) / 6,
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
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => MainCategory(index: 3));
                        },
                        child:
                            Image.asset('assets/images/forosh_tagari_edari.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: _getHeight(context) / 6,
                      width: _getHeight(context) / 6,
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
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => MainCategory(index: 5));
                        },
                        child: Image.asset('assets/images/ejara_kota_modat.png'),
                      ),
                    ),
                    Container(
                      height: _getHeight(context) / 6,
                      width: _getHeight(context) / 6,
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
                      child: GestureDetector(
                          onTap: () {
                            Get.to(() => MainCategory(index: 6));
                          },
                          child: Image.asset('assets/images/sacht_saz.png')),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}

double _getHeight(BuildContext context) => MediaQuery.of(context).size.height;
