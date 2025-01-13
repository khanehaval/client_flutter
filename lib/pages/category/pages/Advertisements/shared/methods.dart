import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/namayesh_agahi.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

Widget showAdvertisment(
    {required BuildContext context,
    required advertismentModel,
    required onTap,
    required Function onNext,
    required Function onBack}) {
  return SafeArea(
    child: Column(
      children: [
        Transform.translate(
          offset: const Offset(20, 60),
          child: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.16,
              right: MediaQuery.of(context).size.width * 0.1,
              bottom: MediaQuery.of(context).size.height * 0.10,
            ),
            child: Container(
              width: Get.width / 1.1,
              height: Get.height / 2.2,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(233, 10, 10, 0),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30)
                        .copyWith(top: 100, bottom: 15),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => const NamayeshAgahi1());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromRGBO(226, 226, 226, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Container(
                                              constraints: const BoxConstraints(
                                                maxWidth: 300,
                                                maxHeight: 200,
                                              ),
                                              child: Image.asset(
                                                "assets/images/pic.png",
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
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
                                              "assets/images/announcement.svg",
                                              width: 20,
                                              height: 20,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 100,
                                              right: 8,
                                              bottom: 8,
                                              left: 8),
                                          child: Align(
                                            alignment: Alignment.bottomRight,
                                            child: SvgPicture.asset(
                                              "assets/images/save.svg",
                                              width: 25,
                                              height: 25,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 3.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          child: SvgPicture.asset(
                                            "assets/images/total price.svg",
                                            width: 15,
                                            height: 15,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Text(
                                            "...ویلا 100 متری در زمین 250 متری",
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontFamily: MAIN_FONT_FAMILY,
                                                color: Color.fromRGBO(
                                                    99, 99, 99, 1)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 5,
                                    ),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/images/toman_ads.svg",
                                          height: 15,
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        const Text(
                                          '12.000.000.000',
                                          style: TextStyle(
                                              fontFamily:
                                                  MAIN_FONT_FAMILY_MEDIUM,
                                              fontSize: 12,
                                              color: Color.fromRGBO(
                                                  99, 99, 99, 1)),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  400
                                              ? 83
                                              : 110, // برای دستگاه‌های کوچک 75، برای بزرگ‌ترها 105
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 90,
                                              height: 19,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                      width: 1,
                                                      color: Color(0xFFA5A5A5)),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              child: const Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'سیستان و بلوچستان',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          99, 99, 99, 1),
                                                      fontSize: 8,
                                                      fontFamily:
                                                          MAIN_FONT_FAMILY_MEDIUM,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Expanded(
                                      child: Row(
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: SvgPicture.asset(
                                              "assets/images/toman_ads.svg",
                                              height: 15,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          const Text(
                                            '100.000.000',
                                            style: TextStyle(
                                                fontFamily:
                                                    MAIN_FONT_FAMILY_MEDIUM,
                                                fontSize: 12,
                                                color: Color.fromRGBO(
                                                    99, 99, 99, 1)),
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          SvgPicture.asset(
                                            "assets/images/SQM_metr.svg",
                                            height: 20,
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                        .size
                                                        .width <
                                                    400
                                                ? 80
                                                : 105,
                                          ),
                                          Container(
                                            width: 35,
                                            height: 19,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                side: const BorderSide(
                                                    width: 1,
                                                    color: Color(0xFFA5A5A5)),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            child: Center(
                                              child: RichText(
                                                textAlign: TextAlign.center,
                                                textDirection:
                                                    TextDirection.rtl,
                                                text: const TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: '100',
                                                      style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            99, 99, 99, 1),
                                                        fontSize: 8,
                                                        fontFamily:
                                                            MAIN_FONT_FAMILY_MEDIUM,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: ' متر',
                                                      style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            99, 99, 99, 1),
                                                        fontSize: 8,
                                                        fontFamily:
                                                            MAIN_FONT_FAMILY_MEDIUM,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Container(
                                            width: 35,
                                            height: 19,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                side: const BorderSide(
                                                    width: 1,
                                                    color: Color(0xFFA5A5A5)),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            child: Center(
                                              child: RichText(
                                                textAlign: TextAlign.center,
                                                textDirection:
                                                    TextDirection.rtl,
                                                text: const TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: '2',
                                                      style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            99, 99, 99, 1),
                                                        fontSize: 8,
                                                        fontFamily:
                                                            MAIN_FONT_FAMILY_MEDIUM,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: ' اتاق',
                                                      style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            99, 99, 99, 1),
                                                        fontSize: 8,
                                                        fontFamily:
                                                            MAIN_FONT_FAMILY_MEDIUM,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Positioned(
                        // درست
                        left: 160,
                        right: 160,
                        top: 90,
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
                ],
              ),
            ),
          ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 89,
                  maxWidth: 89,
                  minHeight: 35,
                  maxHeight: 35,
                ),
                child: GestureDetector(
                  onTap: () {
                    onBack();
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromRGBO(0, 189, 97, 1),
                    ),
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
              const SizedBox(width: 20),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 89,
                  maxWidth: 89,
                  minHeight: 35,
                  maxHeight: 35,
                ),
                child: GestureDetector(
                  onTap: () {
                    onNext();
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromRGBO(23, 102, 175, 1),
                    ),
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
              ),
            ],
          ),
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
          offset: const Offset(20, 60),
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
                          Get.to(() => const NamayeshAgahi1());
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
