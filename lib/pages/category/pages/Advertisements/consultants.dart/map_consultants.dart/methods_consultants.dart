import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/category/models/AdvertismentMoidel.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/namayesh_agahi.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

Widget methodsAxans(
    {required advertismentModel,
    required onTap,
    required Function onNext,
    required Function onBack}) {
  return SafeArea(
    child: Column(
      children: [
        Transform.translate(
          offset: const Offset(20, 80),
          child: Padding(
            padding: const EdgeInsets.only(top: 140, right: 40, bottom: 10),
            child: Container(
              width: 390,
              height: 400,
              decoration: const BoxDecoration(color: Colors.transparent),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2)
                        .copyWith(top: 220, bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => const NamayeshAgahi1());
                      },
                      child: Container(
                        width: 390,
                        height: 100,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 3,
                                color: Color.fromRGBO(0, 0, 0, 0.15))
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, bottom: 10),
                                      child: SvgPicture.asset(
                                          'assets/images/vitrinaxans.svg'),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          right: 50.0, bottom: 10),
                                      child: Text(
                                        'ویترین',
                                        style: TextStyle(
                                            fontFamily: MAIN_FONT_FAMILY,
                                            fontSize: 12),
                                      ),
                                    ),
                                    _profileHeader(),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 60.0, left: 22),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/locationaxans.svg',
                                    width: 20,
                                    height: 20,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text(
                                    'تــهـران',
                                    style: TextStyle(
                                        fontFamily: MAIN_FONT_FAMILY,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 160,
                    top: 210,
                    child: GestureDetector(
                      onTap: () {
                        onTap();
                      },
                      child: SvgPicture.asset(
                        "assets/images/delete.svg",
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  onBack();
                },
                child: Container(
                  width: 89,
                  height: 35,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromRGBO(0, 189, 97, 1)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(CupertinoIcons.back, color: Colors.white),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Text(
                          'قبلی',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: MAIN_FONT_FAMILY,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  onNext();
                },
                child: Container(
                  width: 89,
                  height: 35,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromRGBO(
                        23,
                        102,
                        175,
                        1,
                      )),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'بعدی',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: MAIN_FONT_FAMILY,
                          ),
                        ),
                      ),
                      Icon(CupertinoIcons.forward, color: Colors.white),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    ),
  );
}

void deleteAdvertsment() {
  return null;
}

Widget showAdvertisment1(
    {required advertismentModel,
    required onTap,
    required Function onNext1,
    required Function onBack1}) {
  return SafeArea(
    child: Column(
      children: [
        Transform.translate(
          offset: const Offset(20, 80),
          child: Padding(
            padding: const EdgeInsets.only(top: 75, right: 40, bottom: 70),
            child: Container(
              width: 350,
              height: 400,
              decoration: const BoxDecoration(color: Colors.transparent),
              child: Stack(
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30)
                          .copyWith(top: 130, bottom: 30),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => NamayeshAgahi1());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(children: [
                              Stack(
                                children: [
                                  SizedBox(
                                    width: 300,
                                    child: Image.asset(
                                      "assets/images/pic.png",
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  // Text(advertismentModel.title),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SvgPicture.asset(
                                        "assets/images/Score.svg",
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SvgPicture.asset(
                                        "assets/images/Pic Number.svg",
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 115, right: 10),
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: SvgPicture.asset(
                                        "assets/images/save.svg",
                                        width: 15,
                                        height: 15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 115, right: 30),
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: SvgPicture.asset(
                                        "assets/images/loc and cam.svg",
                                        width: 15,
                                        height: 15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 110, left: 10),
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: SvgPicture.asset(
                                        "assets/images/announcement.svg",
                                        width: 20,
                                        height: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 35,
                                    width: 35,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 20.0),
                                      child: SvgPicture.asset(
                                          "assets/images/total price.svg"),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 20.0),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/price.svg",
                                    height: 20,
                                    width: 20,
                                  ),
                                  Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: SvgPicture.asset(
                                          "assets/images/Sqm.svg",
                                          width: 25,
                                          height: 25,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ]),
                          ),
                        ),
                      )),
                  Positioned(
                    left: 160,
                    top: 115,
                    child: GestureDetector(
                      onTap: () {
                        onTap();
                      },
                      child: SvgPicture.asset(
                        "assets/images/delete.svg",
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  onBack1();
                },
                child: Container(
                  width: 89,
                  height: 42,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromRGBO(0, 189, 97, 1)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(CupertinoIcons.back, color: Colors.white),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Text(
                          'قبلی',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: MAIN_FONT_FAMILY,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  onNext1();
                },
                child: Container(
                  width: 89,
                  height: 42,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromRGBO(
                        23,
                        102,
                        175,
                        1,
                      )),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'بعدی',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: MAIN_FONT_FAMILY,
                          ),
                        ),
                      ),
                      Icon(CupertinoIcons.forward, color: Colors.white),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    ),
  );
}

void deleteAdvertsment1() {
  return null;
}

Widget _profileHeader() {
  return Column(
    children: [
      const SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Row(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "آژانس املاک",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Aban Bold',
                      color: Colors.black54),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.verified,
                      color: Colors.blue,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "خانه اول",
                      style:
                          TextStyle(fontSize: 14, fontFamily: MAIN_FONT_FAMILY),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 10),
            Stack(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: const Color.fromRGBO(229, 222, 41, 1)),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(
                      'assets/images/logo-fa-photoshop.png',
                      width: 65,
                      height: 65,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
