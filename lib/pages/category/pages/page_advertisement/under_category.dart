import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/sale_home1.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class UnderForosh extends StatelessWidget {
  const UnderForosh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
            onPressed: () => Get.back(),
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
                ),
              ),
            ),
          ],
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, bottom: 2),
            child: Text(
              "انتخاب نوع ملک",
              style: TextStyle(
                  color: Color.fromRGBO(
                    99,
                    99,
                    99,
                    1,
                  ),
                  fontSize: 30,
                  fontFamily: 'Iran Sans Bold'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 40),
              child: SvgPicture.asset(
                'assets/images/key and home1.svg',
              )),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(children: [
                GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 134, bottom: 10, top: 10),
                          child: Container(
                            height: 96,
                            width: 144,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                )
                              ],
                              border: Border.all(
                                color: Colors.black45,
                                width: 0.3,
                              ),
                            ),
                            child: GestureDetector(
                                onTap: () {
                                  Get.to(() => SaleHome1());
                                },
                                child: SvgPicture.asset(
                                    'assets/images/undercategory.svg')),
                          ),
                        ),
                      ]),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30, bottom: 10, top: 10),
                        child: Container(
                          height: 96,
                          width: 144,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 5,
                              )
                            ],
                            border: Border.all(
                              color: Colors.black45,
                              width: 0.3,
                            ),
                          ),
                          child:
                              SvgPicture.asset('assets/images/under vila.svg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30, bottom: 20, top: 10),
                        child: Container(
                          height: 96,
                          width: 144,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 5,
                              )
                            ],
                            border: Border.all(
                              color: Colors.black45,
                              width: 0.3,
                            ),
                          ),
                          child: SvgPicture.asset(
                              'assets/images/under kolangi.svg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130, top: 10),
                        child: Row(
                          children: [
                            Text(
                              "تائید و ادامه ...",
                              style: TextStyle(
                                  fontSize: 20, fontFamily: 'Iran Sans Bold'),
                            ),
                            Icon(
                              Icons.double_arrow,
                              color: Color.fromRGBO(76, 140, 237, 1),
                              size: 35,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ]))
        ]));
  }
}
