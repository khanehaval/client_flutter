import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/main_category.dart';

import 'package:get/get.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 180,
                width: MediaQuery.of(context).size.width * 1 / 2,
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
                  child: SizedBox(child: Image.asset('assets/images/amlak.png')),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                height: 180,
                width: MediaQuery.of(context).size.width * 1 / 3,
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
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 115,
            width: MediaQuery.of(context).size.width * 1 / 1.090,
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
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1 / 2.35,
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
                  child: Image.asset('assets/images/ejara_tajari_edari.png'),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Container(
                height: 145,
                width: MediaQuery.of(context).size.width * 1 / 2.35,
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
                  child: Image.asset('assets/images/forosh_tagari_edari.png'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 135,
                width: MediaQuery.of(context).size.width * 1 / 2.35,
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
              const SizedBox(
                width: 25,
              ),
              Container(
                height: 135,
                width: MediaQuery.of(context).size.width * 1 / 2.35,
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
    );
  }
}
