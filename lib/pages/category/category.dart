import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/main_category.dart';

import 'package:get/get.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
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
                  Get.to(() => MainCategory(index: 0));
                },
                child: Image.asset('assets/images/amlak.png'),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
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
                  Get.to(() => MainCategory(index: 1));
                },
                child: Image.asset('assets/images/ejara_maskoni.png'),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 119,
          width: 360,
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
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
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
              child: GestureDetector(
                onTap: () {
                  Get.to(() => MainCategory(index: 4));
                },
                child: Image.asset('assets/images/ejara_tajari_edari.png'),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              height: 130,
              width: 167,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue,
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
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
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
              child: GestureDetector(
                onTap: () {
                  Get.to(() => MainCategory(index: 5));
                },
                child: Image.asset('assets/images/ejara_kota_modat.png'),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
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
              child: GestureDetector(
                  onTap: () {
                    Get.to(() => MainCategory(index: 6));
                  },
                  child: Image.asset('assets/images/sacht_saz.png')),
            ),
          ],
        ),
      ]),
    );
  }
}
