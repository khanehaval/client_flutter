import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/namayesh_agahi.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DetailViewAgahiEjara extends StatefulWidget {
  const DetailViewAgahiEjara({super.key});

  @override
  State<DetailViewAgahiEjara> createState() => _DetailViewAgahiEjaraState();
}

class _DetailViewAgahiEjaraState extends State<DetailViewAgahiEjara> {
  bool isFavorite = false; // Variable for tracking favorite status

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
                child: GestureDetector(
                  onTap: () {
                    Get.to(const NamayeshAgahi1());
                  },
                  child: Container(
                    width: Get.width,
                    height: Get.height / 2.25,
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
                                width: 377,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    "assets/images/pic.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
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
                                        isFavorite =
                                            !isFavorite; // Toggle favorite status
                                      });
                                    },
                                    child: SvgPicture.asset(
                                      isFavorite
                                          ? "assets/images/save.svg" // Red heart icon
                                          : "assets/images/save_withe.svg", // White heart icon
                                      width: 35,
                                      height: 35,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 155, left: 10, bottom: 10, right: 10),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: SvgPicture.asset(
                                    "assets/images/loc_and_cam.svg", // Corrected the name
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
                              SvgPicture.asset(
                                "assets/images/mizan_rahn.svg",
                                width: 15,
                                height: 15,
                              ),
                              const SizedBox(width: 30),
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
                          const SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/images/toman_ads.svg",
                                  height: 20,
                                ),
                                const SizedBox(width: 2),
                                const Text(
                                  '700.000.000.000',
                                  style: TextStyle(
                                      fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                      color: Color.fromRGBO(99, 99, 99, 1)),
                                ),
                                SizedBox(width: 95.w),
                                Flexible(
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 110.w,
                                        height: 19.h,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                              width: 1,
                                              color: Color(0xFFA5A5A5),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                          ),
                                        ),
                                        child: Column(
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
                                                color: const Color.fromRGBO(
                                                    99, 99, 99, 1),
                                                fontSize: 10.sp,
                                                fontFamily:
                                                    MAIN_FONT_FAMILY_MEDIUM,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
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
                                const SizedBox(width: 2),
                                const Text(
                                  '10.000.000',
                                  style: TextStyle(
                                      fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                      color: Color.fromRGBO(99, 99, 99, 1)),
                                ),
                                const SizedBox(width: 2),
                                SvgPicture.asset(
                                  "assets/images/mizan_ejara.svg",
                                  height: 15,
                                ),
                                SizedBox(width: Get.width / 3.8),
                                Container(
                                  width: 44.w,
                                  height: 19.h,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                        width: 1,
                                        color: Color(0xFFA5A5A5),
                                      ),
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                  ),
                                  child: Center(
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      textDirection: TextDirection.rtl,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '100',
                                            style: TextStyle(
                                              color: const Color.fromRGBO(
                                                  99, 99, 99, 1),
                                              fontSize: 10.sp,
                                              fontFamily:
                                                  MAIN_FONT_FAMILY_MEDIUM,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' متر',
                                            style: TextStyle(
                                              color: const Color.fromRGBO(
                                                  99, 99, 99, 1),
                                              fontSize: 10.sp,
                                              fontFamily:
                                                  MAIN_FONT_FAMILY_MEDIUM,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Container(
                                  width: 44.w,
                                  height: 19.h,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                        width: 1,
                                        color: Color(0xFFA5A5A5),
                                      ),
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                  ),
                                  child: Center(
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      textDirection: TextDirection.rtl,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '2',
                                            style: TextStyle(
                                              color: const Color.fromRGBO(
                                                  99, 99, 99, 1),
                                              fontSize: 10.sp,
                                              fontFamily:
                                                  MAIN_FONT_FAMILY_MEDIUM,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' اتاق',
                                            style: TextStyle(
                                              color: const Color.fromRGBO(
                                                  99, 99, 99, 1),
                                              fontSize: 10.sp,
                                              fontFamily:
                                                  MAIN_FONT_FAMILY_MEDIUM,
                                            ),
                                          ),
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
