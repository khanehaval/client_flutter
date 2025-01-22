import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_inner_shadow/flutter_inner_shadow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ProfileAdsSeen extends StatelessWidget {
  const ProfileAdsSeen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Divider(
        endIndent: 20.w,
        indent: 25.w,
      ),
      SizedBox(height: 10.h),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Container(
          width: double.infinity,
          height: 141.h,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            shadows: [
              BoxShadow(
                color: const Color(0x26000000),
                blurRadius: 3.r,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Row(
            children: [
              Column(
                children: [
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      Container(
                        width: 65.w,
                        height: 13.h,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 1.w),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 0.5.w,
                                        color: const Color(0xFFA6A6A6)),
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                ),
                                child: Text(
                                  'خراسان شمالی',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xFF636363),
                                    fontSize: 8.sp,
                                    fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 13.h,
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.w),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 0.5.w,
                                      color: const Color(0xFFA6A6A6)),
                                  borderRadius: BorderRadius.circular(5.r),
                                ),
                              ),
                              child: Text(
                                'ویلا',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xFF636363),
                                  fontSize: 8.sp,
                                  fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 50.w),
                      SvgPicture.asset(
                        "assets/images/total price.svg",
                        width: 40.w,
                        height: 15.h,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.w),
                    child: Row(
                      children: [
                        Container(
                          width: Get.width / 14,
                          height: 25.h,
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 2.w),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 0.5.w,
                                        color: const Color(0xFFA6A6A6)),
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                ),
                                child: Text(
                                  '2 اتاق',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xFF636363),
                                    fontSize: 7.sp,
                                    fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 20.h,
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 0.5.w,
                                        color: const Color(0xFFA6A6A6)),
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                ),
                                child: Text(
                                  '300 متر',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xFF636363),
                                    fontSize: 8.sp,
                                    fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/toman_profile.svg",
                              height: 15.h,
                              width: 15.w,
                            ),
                            Text(
                              '12.000.000.000',
                              style: TextStyle(
                                  fontSize: 9.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: MAIN_FONT_FAMILY),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildInfoContainer(
                              'assets/images/request_see.svg', '3'),
                          SizedBox(width: 5.w),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 15.w,
              ),
              InnerShadow(
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 3.r,
                    offset: const Offset(2, 2),
                  ),
                ],
                child: Image.asset(
                  'assets/images/Ellipse 519.png',
                  width: Get.width / 4.5,
                  height: 85.h,
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 20.h),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Container(
          width: double.infinity,
          height: 141.h,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            shadows: [
              BoxShadow(
                color: const Color(0x26000000),
                blurRadius: 3.r,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Row(
            children: [
              Column(
                children: [
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      Container(
                        width: 65.w,
                        height: 13.h,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 1.w),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 0.5.w,
                                        color: const Color(0xFFA6A6A6)),
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                ),
                                child: Text(
                                  'خراسان شمالی',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xFF636363),
                                    fontSize: 8.sp,
                                    fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 13.h,
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.w),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 0.5.w,
                                      color: const Color(0xFFA6A6A6)),
                                  borderRadius: BorderRadius.circular(5.r),
                                ),
                              ),
                              child: Text(
                                'ویلا',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xFF636363),
                                  fontSize: 8.sp,
                                  fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 50.w),
                      SvgPicture.asset(
                        "assets/images/total price.svg",
                        width: 40.w,
                        height: 15.h,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.w),
                    child: Row(
                      children: [
                        Container(
                          width: Get.width / 14,
                          height: 25.h,
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 2.w),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 0.5.w,
                                        color: const Color(0xFFA6A6A6)),
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                ),
                                child: Text(
                                  '2 اتاق',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xFF636363),
                                    fontSize: 7.sp,
                                    fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 20.h,
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 0.5.w,
                                        color: const Color(0xFFA6A6A6)),
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                ),
                                child: Text(
                                  '300 متر',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xFF636363),
                                    fontSize: 8.sp,
                                    fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/toman_profile.svg",
                              height: 15.h,
                              width: 15.w,
                            ),
                            Text(
                              '12.000.000.000',
                              style: TextStyle(
                                  fontSize: 9.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: MAIN_FONT_FAMILY),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildInfoContainer(
                              'assets/images/request_see.svg', '3'),
                          SizedBox(width: 5.w),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 15.w,
              ),
              InnerShadow(
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 3.r,
                    offset: const Offset(2, 2),
                  ),
                ],
                child: Image.asset(
                  'assets/images/Ellipse 519.png',
                  width: Get.width / 4.5,
                  height: 85.h,
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }

  Widget _buildInfoContainer(String assetPath, String text) {
    return Stack(
      // Allows content to go outside the container
      children: [
        Row(
          children: [
            InnerShadow(
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 3,
                  offset: const Offset(2, 2),
                ),
              ],
              child: Container(
                width: Get.width / 2.1.w,
                height: 54,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(0.99, 0.10),
                    end: Alignment(-0.99, -0.1),
                    colors: [
                      Color(0xFFF8F8F8),
                      Color.fromARGB(255, 255, 253, 253),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 1,
                      color: Color(0xFFE8E8E8),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SvgPicture.asset(
                        'assets/images/delete.svg',
                        width: 15,
                        height: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      'دیـده شــده',
                      style: TextStyle(fontFamily: 'Aban Bold', fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 8 - 0,
          right: -0,
          child: SvgPicture.asset(
            'assets/images/see_kam_rang.svg',
            width: 50.w,
            height: 45.h,
          ),
        ),
      ],
    );
  }
}
