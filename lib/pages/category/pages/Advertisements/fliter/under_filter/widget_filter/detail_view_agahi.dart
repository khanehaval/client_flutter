import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/namayesh_agahi.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jalali_flutter_datepicker/jalali_flutter_datepicker.dart';

class DetailViewAgahi extends StatefulWidget {
  const DetailViewAgahi({super.key});

  @override
  State<DetailViewAgahi> createState() => _DetailViewAgahiState();
}

class _DetailViewAgahiState extends State<DetailViewAgahi> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
                child: GestureDetector(
                  onTap: () {
                    Get.to(const NamayeshAgahi1());
                  },
                  child: Container(
                    width: width,
                    height: height / 2.25,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFE2E2E2)),
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
                                height: 210,
                                width: width - 20,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    "assets/images/pic.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                      "assets/images/Score.svg"),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                      "assets/images/announcement.svg"),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 155,
                                      right: 10,
                                      bottom: 10,
                                      left: 10),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isFavorite = !isFavorite;
                                      });
                                    },
                                    child: SvgPicture.asset(
                                      isFavorite
                                          ? "assets/images/save.svg"
                                          : "assets/images/save_withe.svg",
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
                                    "assets/images/loc and cam.svg",
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
                                  "assets/images/total price.svg",
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
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
                          const SizedBox(height: 10),
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
                                  '12.000.000.000',
                                  style: TextStyle(
                                      fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                      color: Color.fromRGBO(99, 99, 99, 1)),
                                ),
                                SizedBox(width: width / 3.35),
                                Flexible(
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 110,
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
                                                fontSize: 10,
                                                fontFamily:
                                                    MAIN_FONT_FAMILY_MEDIUM,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
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
                                  '100.000.000',
                                  style: TextStyle(
                                      fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                      color: Color.fromRGBO(99, 99, 99, 1)),
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                SvgPicture.asset(
                                  "assets/images/SQM_metr.svg",
                                  height: 25,
                                ),
                                SizedBox(width: width / 3.6),
                                Flexible(
                                  child: Container(
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
                                        textDirection: TextDirection.rtl,
                                        text: const TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '100',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    99, 99, 99, 1),
                                                fontSize: 10,
                                                fontFamily:
                                                    MAIN_FONT_FAMILY_MEDIUM,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' متر',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    99, 99, 99, 1),
                                                fontSize: 10,
                                                fontFamily:
                                                    MAIN_FONT_FAMILY_MEDIUM,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Flexible(
                                  child: Container(
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
                                        textDirection: TextDirection.rtl,
                                        text: const TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '2',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    99, 99, 99, 1),
                                                fontSize: 10,
                                                fontFamily:
                                                    MAIN_FONT_FAMILY_MEDIUM,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'اتاق',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    99, 99, 99, 1),
                                                fontSize: 10,
                                                fontFamily:
                                                    MAIN_FONT_FAMILY_MEDIUM,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
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
