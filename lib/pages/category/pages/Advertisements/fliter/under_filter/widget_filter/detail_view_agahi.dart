import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/namayesh_agahi.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

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
      offset: Offset(0, 20.h),
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.transparent),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: EdgeInsets.all(10.r),
            child: GestureDetector(
              onTap: () {
                Get.to(const NamayeshAgahi1());
              },
              child: Container(
                height: 290.h,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFE2E2E2)),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.r),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.r),
                            child: Image.asset(
                              "assets/images/pic.png",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: 180.h,
                            ),
                          ),
                          Positioned(
                            top: 8.h,
                            right: 10.w,
                            child: SvgPicture.asset("assets/images/Score.svg"),
                          ),
                          Positioned(
                            top: 8.h,
                            left: 10.w,
                            child: SvgPicture.asset(
                                "assets/images/announcement.svg"),
                          ),
                          Positioned(
                            bottom: 8.h,
                            right: 10.w,
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
                                width: 30.w,
                                height: 30.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            "assets/images/total price.svg",
                            height: 20.h,
                          ),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: Text(
                              "...ویلا 100 متری در زمین 250 متری",
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontFamily: MAIN_FONT_FAMILY,
                                color: const Color.fromRGBO(99, 99, 99, 1),
                              ),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right, // راست‌چین کردن متن
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset("assets/images/toman_ads.svg",
                                  height: 20.h),
                              SizedBox(width: 5.w),
                              const Text(
                                '12.000.000.000',
                                style: TextStyle(
                                  fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                  color: Color.fromRGBO(99, 99, 99, 1),
                                ),
                              ),
                            ],
                          ),
                          _buildDetailContainer1("سیستان و بلوچستان"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset("assets/images/toman_ads.svg",
                                  height: 20.h),
                              SizedBox(width: 5.w),
                              const Text(
                                '100.000.000',
                                style: TextStyle(
                                  fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                  color: Color.fromRGBO(99, 99, 99, 1),
                                ),
                              ),
                              SizedBox(width: 5.w),
                              SvgPicture.asset("assets/images/SQM_metr.svg",
                                  height: 25.h),
                            ],
                          ),
                          Row(
                            children: [
                              _buildDetailContainer('100 متر'),
                              SizedBox(width: 5.w),
                              _buildDetailContainer('2 اتاق'),
                            ],
                          ),
                        ],
                      ),
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

  /// ویجت برای نمایش موقعیت مکانی
  Widget _buildDetailContainer1(String text) {
    return Container(
      width: 90.w,
      height: 19.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(width: 1, color: const Color(0xFFA5A5A5)),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 9.sp,
          fontFamily: MAIN_FONT_FAMILY_MEDIUM,
          color: const Color.fromRGBO(99, 99, 99, 1),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  /// ویجت برای نمایش متراژ و تعداد اتاق
  Widget _buildDetailContainer(String text) {
    return Container(
      width: 55.w,
      height: 19.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(width: 1, color: const Color(0xFFA5A5A5)),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 10.sp,
          fontFamily: MAIN_FONT_FAMILY_MEDIUM,
          color: const Color.fromRGBO(99, 99, 99, 1),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
