import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/consultants.dart/list_consultants.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/consultants.dart/map_agency/list_agency.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForoshMaskoni extends StatelessWidget {
  final _show_item_1 = false.obs;
  final _show_item_2 = false.obs;
  final _show_item_3 = false.obs;

  ForoshMaskoni({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
          360, 690), // اندازه طراحی شما (مثلاً اندازه یک دستگاه موبایل)
      builder: (context, child) {
        return ListView(
          children: [
            dividerwidget(),
            Container(
              margin: EdgeInsets.all(10.w),
              padding: EdgeInsets.all(5.w),
              height: 149.h,
              width: Get.width / 1.1,
              child: Image.asset('assets/images/Group 667.png'),
            ),
            dividerwidget(),
            SizedBox(
              height: 10.h,
            ),
            SingleChildScrollView(
              reverse: true,
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(right: 10.0.w, left: 10.w),
                child: Row(
                  children: [
                    Container(
                        height: 90.h,
                        width: 130.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: SvgPicture.asset(
                          'assets/images/Group 759.svg',
                          width: Get.width / 2.1,
                        )),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                        height: 90.h,
                        width: 130.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: SvgPicture.asset(
                          'assets/images/Group 758.svg',
                          width: Get.width / 2.1,
                        )),
                    Container(
                        height: 90.h,
                        width: 130.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: SvgPicture.asset(
                          'assets/images/Group 757.svg',
                          width: Get.width / 2.1,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            dividerwidget(),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0.w),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(11.r)),
                    gradient: const LinearGradient(colors: GRADIANT_COLOR3)),
                child: Padding(
                  padding: EdgeInsets.all(1.2.w),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(() => IconButton(
                              icon: _show_item_1.value
                                  ? SvgPicture.asset('assets/images/down.svg')
                                  : SvgPicture.asset(
                                      'assets/images/=.svg',
                                    ),
                              style: const ButtonStyle(),
                              onPressed: () {
                                _show_item_1.value = !_show_item_1.value;
                              },
                            )),
                        Padding(
                          padding: EdgeInsets.only(right: 15.0.w),
                          child: Text(
                            'فروش آپارتمان بر اساس قیمت',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: const Color.fromRGBO(
                                  48,
                                  48,
                                  48,
                                  1,
                                ),
                                fontWeight: FontWeight.bold,
                                fontFamily: MAIN_FONT_FAMILY),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            buildItem1(),
            SizedBox(
              height: 10.h,
            ),
            dividerwidget(),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    gradient: const LinearGradient(colors: GRADIANT_COLOR3)),
                child: Padding(
                  padding: EdgeInsets.all(1.2.w),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(() => IconButton(
                              icon: _show_item_2.value
                                  ? SvgPicture.asset('assets/images/down.svg')
                                  : SvgPicture.asset(
                                      'assets/images/=.svg',
                                    ),
                              style: const ButtonStyle(),
                              onPressed: () {
                                _show_item_2.value = !_show_item_2.value;
                              },
                            )),
                        Padding(
                          padding: EdgeInsets.only(right: 15.0.w),
                          child: Text(
                            'خرید ویلا در شمال',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: const Color.fromRGBO(
                                  48,
                                  48,
                                  48,
                                  1,
                                ),
                                fontWeight: FontWeight.bold,
                                fontFamily: MAIN_FONT_FAMILY),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            _buildItem2(),
            SizedBox(
              height: 10.h,
            ),
            dividerwidget(),
            SizedBox(
              height: 10.h,
            ),
            _buildItem3(),
          ],
        );
      },
    );
  }

  Obx buildItem1() {
    return Obx(
      () => _show_item_1.isTrue
          ? Padding(
              padding: EdgeInsets.all(10.w),
              child: Column(children: [
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 57.h,
                        width: Get.width / 2.3,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(
                              color: Colors.black45,
                              width: 0.3.w,
                            )),
                        child: Text(
                          'تا ۵۰۰ میلیون تومان',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF303030),
                            fontSize: 14.sp,
                            fontFamily: MAIN_FONT_FAMILY,
                            fontWeight: FontWeight.w300,
                            height: 4.h,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Container(
                        height: 57.h,
                        width: Get.width / 2.3,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(
                              color: Colors.black45,
                              width: 0.3.w,
                            )),
                        child: Text(
                          'تا ۱۰۰ میلیون تومان',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF303030),
                            fontSize: 14.sp,
                            fontFamily: MAIN_FONT_FAMILY,
                            fontWeight: FontWeight.w300,
                            height: 4.h,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 57.h,
                      width: Get.width / 2.3,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            color: Colors.black45,
                            width: 0.3.w,
                          )),
                      child: Text(
                        'تا ۲ میلیارد تومان',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF303030),
                          fontSize: 14.sp,
                          fontFamily: MAIN_FONT_FAMILY,
                          fontWeight: FontWeight.w300,
                          height: 4.h,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      height: 57.h,
                      width: Get.width / 2.3,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            color: Colors.black45,
                            width: 0.3.w,
                          )),
                      child: Text(
                        'تا ۱ میلیارد تومان',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF303030),
                          fontSize: 14.sp,
                          fontFamily: MAIN_FONT_FAMILY,
                          fontWeight: FontWeight.w300,
                          height: 4.h,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 57.h,
                      width: Get.width / 2.3,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            color: Colors.black45,
                            width: 0.3.w,
                          )),
                      child: Text(
                        'تا ۴ میلیارد تومان',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF303030),
                          fontSize: 14.sp,
                          fontFamily: MAIN_FONT_FAMILY,
                          fontWeight: FontWeight.w300,
                          height: 4.h,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      height: 57.h,
                      width: Get.width / 2.3,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            color: Colors.black45,
                            width: 0.3.w,
                          )),
                      child: Text(
                        'تا ۳ میلیارد تومان',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF303030),
                          fontSize: 14.sp,
                          fontFamily: MAIN_FONT_FAMILY,
                          fontWeight: FontWeight.w300,
                          height: 4.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            )
          : const SizedBox.shrink(),
    );
  }

  Widget _buidText(String text) {
    return Container(
      height: 57.h,
      width: Get.width / 2.3,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: Colors.black45,
            width: 0.3.w,
          )),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: const Color(0xFF303030),
          fontSize: 14.sp,
          fontFamily: MAIN_FONT_FAMILY,
          fontWeight: FontWeight.w300,
          height: 4.h,
        ),
      ),
    );
  }

  Obx _buildItem2() {
    return Obx(() => _show_item_2.isTrue
        ? Padding(
            padding: EdgeInsets.all(10.0.w),
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buidText('تا ۵۰ متر مربع'),
                    _buidText('تا ۶۰ متر مربع'),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buidText('تا ۸۰ متر مربع'),
                    _buidText('تا ۷۰ متر مربع'),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buidText('تا ۱۰۰ متر مربع'),
                    _buidText('تا ۹۰ متر مربع'),
                  ],
                )
              ],
            ),
          )
        : const SizedBox.shrink());
  }

  _buildItem3() {
    return Padding(
      padding: EdgeInsets.only(left: 10.0.w, right: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: Get.width / 2.2,
            child: GestureDetector(
              onTap: () {
                Get.to(() => const ListConsultants(),
                    duration: const Duration(milliseconds: 300),
                    transition: Transition.leftToRight);
              },
              child: _buildRowItem(
                'assets/images/moshaver_amlak.svg',
              ),
            ),
          ),
          SizedBox(
              width: Get.width / 2.2,
              child: GestureDetector(
                  onTap: () {
                    Get.to(() => const ListAgency(),
                        duration: const Duration(milliseconds: 300),
                        transition: Transition.leftToRight);
                  },
                  child: _buildRowItem('assets/images/axhans_amlak1.svg'))),
        ],
      ),
    );
  }

  Divider dividerwidget() {
    return const Divider(
      endIndent: 20,
      indent: 20,
      color: Color.fromRGBO(236, 236, 236, 1),
    );
  }
}

Padding _buildRowItem(String asset) {
  return Padding(
      padding: EdgeInsets.all(5.w),
      child: SvgPicture.asset(
        asset,
      ));
}
