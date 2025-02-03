import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/namayesh_agahi.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return Transform.translate(
      offset: Offset(0, 20.h), // تنظیم offset به صورت نسبی
      child: Container(
        decoration: BoxDecoration(color: Colors.transparent),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: EdgeInsets.all(10.r), // padding به صورت نسبی
            child: GestureDetector(
              onTap: () {
                Get.to(const NamayeshAgahi1());
              },
              child: Container(
                width: 1.sw, // عرض صفحه به صورت نسبی
                height: 1.sh / 2.0, // ارتفاع صفحه به صورت نسبی
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFE2E2E2)),
                    borderRadius:
                        BorderRadius.circular(10.r), // انحنا به صورت نسبی
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(7.r), // padding به صورت نسبی
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: 210.h, // ارتفاع به صورت نسبی
                            width: 1.sw - 20.w, // عرض به صورت نسبی
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.r),
                              child: Image.asset(
                                "assets/images/pic.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.all(8.0.r),
                              child:
                                  SvgPicture.asset("assets/images/Score.svg"),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.all(8.0.r),
                              child: SvgPicture.asset(
                                  "assets/images/announcement.svg"),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 155.h,
                                right: 10.w,
                                bottom: 10.h,
                                left: 10.w,
                              ),
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
                                  width: 35.w, // عرض به صورت نسبی
                                  height: 35.h, // ارتفاع به صورت نسبی
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: SvgPicture.asset(
                                "assets/images/total price.svg"),
                          ),
                          SizedBox(width: 30.w),
                          Padding(
                            padding: EdgeInsets.all(8.0.r),
                            child: Text(
                              "...ویلا 100 متری در زمین 250 متری",
                              style: TextStyle(
                                fontSize: 13.sp, // اندازه متن به صورت نسبی
                                fontFamily: MAIN_FONT_FAMILY,
                                color: const Color.fromRGBO(99, 99, 99, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                "assets/images/toman_ads.svg",
                                height: 20.h, // ارتفاع به صورت نسبی
                              ),
                              SizedBox(width: 2.w), // فاصله به صورت نسبی
                              const Text(
                                '12.000.000.000',
                                style: TextStyle(
                                  fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                  color: Color.fromRGBO(99, 99, 99, 1),
                                ),
                              ),
                              SizedBox(width: 95.w), // فاصله به صورت نسبی

                              Flexible(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 110.w, // عرض به صورت نسبی
                                      height: 19.h, // ارتفاع به صورت نسبی
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
                                          SizedBox(
                                              width:
                                                  80.w), // فاصله به صورت نسبی

                                          Text(
                                            'سیستان و بلوچستان',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: const Color.fromRGBO(
                                                  99, 99, 99, 1),
                                              fontSize: 10
                                                  .sp, // اندازه متن به صورت نسبی
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
                          SizedBox(height: 10.h), // فاصله به صورت نسبی
                          Row(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SvgPicture.asset(
                                  "assets/images/toman_ads.svg",
                                  height: 20.h, // ارتفاع به صورت نسبی
                                ),
                              ),
                              SizedBox(width: 2.w), // فاصله به صورت نسبی
                              const Text(
                                '100.000.000',
                                style: TextStyle(
                                  fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                  color: Color.fromRGBO(99, 99, 99, 1),
                                ),
                              ),
                              SizedBox(width: 2.w), // فاصله به صورت نسبی
                              SvgPicture.asset(
                                "assets/images/SQM_metr.svg",
                                height: 25.h, // ارتفاع به صورت نسبی
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .end, // قرار دادن در سمت راست
                                children: [
                                  SizedBox(width: 80.w), // فاصله به صورت نسبی
                                  Container(
                                    width: 44.w, // عرض به صورت نسبی
                                    height: 19.h, // ارتفاع به صورت نسبی
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
                                                fontSize: 10
                                                    .sp, // اندازه متن به صورت نسبی
                                                fontFamily:
                                                    MAIN_FONT_FAMILY_MEDIUM,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' متر',
                                              style: TextStyle(
                                                color: const Color.fromRGBO(
                                                    99, 99, 99, 1),
                                                fontSize: 10
                                                    .sp, // اندازه متن به صورت نسبی
                                                fontFamily:
                                                    MAIN_FONT_FAMILY_MEDIUM,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5.w), // فاصله بین دو عنصر
                                  Container(
                                    width: 44.w, // عرض به صورت نسبی
                                    height: 19.h, // ارتفاع به صورت نسبی
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
                                    child: Center(
                                      child: RichText(
                                        textAlign: TextAlign.center,
                                        textDirection: TextDirection.rtl,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '2',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    99, 99, 99, 1),
                                                fontSize: 10
                                                    .sp, // اندازه متن به صورت نسبی
                                                fontFamily:
                                                    MAIN_FONT_FAMILY_MEDIUM,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' اتاق',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    99, 99, 99, 1),
                                                fontSize: 10
                                                    .sp, // اندازه متن به صورت نسبی
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
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
