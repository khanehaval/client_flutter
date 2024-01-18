import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/main_category.dart';

import 'package:get/get.dart';

class Category extends StatelessWidget {
  var show = true.obs;

  Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 200,
                  width: 200,
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
                      Get.to(() => MainCategory(0));
                    },
                    child: Image.asset('assets/images/amlak.png'),
                  ),
                ),
              ),
              Obx(
                () => show.value
                    ? Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 200,
                          width: 132,
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
                              Get.to(() => MainCategory(1));
                            },
                            child:
                                Image.asset('assets/images/ejara_maskoni.png'),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 10),
            child: Container(
              height: 119,
              width: 364,
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
                ),
              ),
              child: Image.asset('assets/images/forosh_maskoni.png'),
            ),
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(() => MainCategory(1));
                },
                child: Row(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            height: 130,
                            width: 167,
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
                            child: Image.asset(
                                'assets/images/ejara_tajari_edari.png'),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 130,
                        width: 167,
                        decoration: BoxDecoration(
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.blue, // Initial border color
                              width: 0.7,
                            )),
                        child: Image.asset(
                            'assets/images/forosh_tagari_edari.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            height: 130,
                            width: 167,
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
                            child: Image.asset(
                                'assets/images/ejara_kota_modat.png'),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 130,
                        width: 167,
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
                        child: Image.asset('assets/images/sacht_saz.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
