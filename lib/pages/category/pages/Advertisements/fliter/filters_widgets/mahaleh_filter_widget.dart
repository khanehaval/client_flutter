import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/Neighbourhood.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // اضافه کردن پکیج ScreenUtil

class MahalehFilterWidget extends StatelessWidget {
  MahalehFilterWidget({super.key});
  final _show_item_mahaleh_1 = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: _show_item_mahaleh_1.isTrue
            ? 130.h
            : 40.h, // استفاده از .h برای مقیاس‌دهی ارتفاع
        decoration: BoxDecoration(
          color: const Color.fromRGBO(250, 250, 250, 1),
          border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
          borderRadius: BorderRadius.circular(15.r), // مقیاس‌دهی شعاع گوشه‌ها
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: _show_item_mahaleh_1.value
                      ? SvgPicture.asset(
                          'assets/images/=.svg',
                        )
                      : SvgPicture.asset('assets/images/down.svg'),
                  onPressed: () {
                    _show_item_mahaleh_1.value = !_show_item_mahaleh_1.value;
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 10.w, right: 20.w), // مقیاس‌دهی فاصله‌ها
                  child: Text(
                    'محله',
                    style: TextStyle(
                      fontFamily: MAIN_FONT_FAMILY,
                      color: const Color.fromRGBO(48, 48, 48, 1),
                      fontSize: 12.sp, // مقیاس‌دهی اندازه فونت
                    ),
                  ),
                ),
              ],
            ),
            if (_show_item_mahaleh_1.isTrue)
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  buildmahaleh(context)
                ],
              )
          ],
        ),
      ),
    );
  }

  Obx buildmahaleh(BuildContext context) {
    return Obx(
      () => _show_item_mahaleh_1.isTrue
          ? Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(11.r), // مقیاس‌دهی شعاع گوشه‌ها
                    color: const Color.fromRGBO(183, 183, 183, 1),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(1.1.w), // مقیاس‌دهی Padding
                    child: Container(
                      width: 300.w, // مقیاس‌دهی عرض
                      height: 35.h, // مقیاس‌دهی ارتفاع
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.r), // مقیاس‌دهی شعاع گوشه‌ها
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Get.to(() => Neighbourhood());
                            },
                            icon: SvgPicture.asset(
                              "assets/images/arrow_down.svg",
                              width: 10.w, // مقیاس‌دهی اندازه آیکون
                              height: 10.h, // مقیاس‌دهی اندازه آیکون
                              color: const Color.fromRGBO(48, 48, 48, 1),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: 10.w), // مقیاس‌دهی فاصله‌ها
                            child: Text(
                              'انتخاب کنید',
                              style: TextStyle(
                                fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                fontSize: 12.sp, // مقیاس‌دهی اندازه فونت
                                color: const Color.fromRGBO(166, 166, 166, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          : const SizedBox.shrink(),
    );
  }
}
