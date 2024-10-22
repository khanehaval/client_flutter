import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DetailViewAgahiEjara extends StatefulWidget {
  const DetailViewAgahiEjara({super.key});

  @override
  State<DetailViewAgahiEjara> createState() => _DetailViewAgahiEjaraState();
}

class _DetailViewAgahiEjaraState extends State<DetailViewAgahiEjara> {
  bool isFavorite = false; // متغیر برای ردیابی وضعیت مورد علاقه

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, 20),
      child: Container(
        decoration: const BoxDecoration(color: Colors.transparent),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: Get.width,
                  height: Get.height / 2.6,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFFE2E2E2)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              height: 200,
                              width: 362,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  "assets/images/pic.png", // آدرس تصویر
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 10.0, top: 8),
                                child: SvgPicture.asset(
                                    "assets/images/Score.svg"), // آیکون امتیاز
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10.0, top: 8),
                                child: SvgPicture.asset(
                                    "assets/images/announcement.svg"), // آیکون اعلان
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 155, right: 10),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isFavorite =
                                          !isFavorite; // تغییر وضعیت مورد علاقه
                                    });
                                  },
                                  child: SvgPicture.asset(
                                    isFavorite
                                        ? "assets/images/save.svg" // آیکون قلب قرمز
                                        : "assets/images/save_withe.svg", // آیکون قلب سفید
                                    width: 35,
                                    height: 35,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 155, left: 10),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: SvgPicture.asset(
                                  "assets/images/loc and cam.svg", // آیکون مکان و دوربین
                                  width: 35,
                                  height: 35,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: SvgPicture.asset(
                                "assets/images/mizan_rahn.svg",
                                width: 15,
                                height: 15,
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 5.0),
                              child: Text(
                                "...ویلا 100 متری در زمین 250 متری",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: MAIN_FONT_FAMILY,
                                    color: Color.fromRGBO(99, 99, 99, 1)),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/images/toman_ads.svg",
                                height: 20,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              const Text(
                                '700.000.000.000',
                                style: TextStyle(
                                    fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                    color: Color.fromRGBO(99, 99, 99, 1)),
                              ),
                              const SizedBox(
                                width: 100,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 110,
                                    height: 19,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 1, color: Color(0xFFA5A5A5)),
                                        borderRadius: BorderRadius.circular(10),
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
                                            color:
                                                Color.fromRGBO(99, 99, 99, 1),
                                            fontSize: 10,
                                            fontFamily: MAIN_FONT_FAMILY_MEDIUM,
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
                        const SizedBox(
                          height: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: Row(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SvgPicture.asset(
                                  "assets/images/toman_ads.svg",
                                  height: 20,
                                ),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              const Text(
                                '10.000.000',
                                style: TextStyle(
                                    fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                    color: Color.fromRGBO(99, 99, 99, 1)),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              SvgPicture.asset(
                                "assets/images/mizan_ejara.svg",
                                height: 15,
                              ),
                              const SizedBox(
                                width: 98,
                              ),
                              Container(
                                width: 44,
                                height: 19,
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFFA5A5A5)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    textDirection: TextDirection
                                        .rtl, // Set direction to RTL
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '100', // Number first
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(99, 99, 99, 1),
                                            fontSize: 10,
                                            fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' متر', // Then the text
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(99, 99, 99, 1),
                                            fontSize: 10,
                                            fontFamily: MAIN_FONT_FAMILY_MEDIUM,
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
                                width: 44,
                                height: 19,
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFFA5A5A5)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    textDirection: TextDirection
                                        .rtl, // Set direction to RTL
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '2', // Number first
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(99, 99, 99, 1),
                                            fontSize: 10,
                                            fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' اتاق', // Then the text
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(99, 99, 99, 1),
                                            fontSize: 10,
                                            fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
