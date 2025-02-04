import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TedadTabaghVilaFilterWidget extends StatelessWidget {
  TedadTabaghVilaFilterWidget({super.key});

  final RxBool _showItemTabaghehvila = false.obs;
  final RxString _selectedTabaghe = "انتخاب کنید".obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: _showItemTabaghehvila.isTrue ? 130.h : 50,
        width: 370.w,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(250, 250, 250, 1),
          border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: _showItemTabaghehvila.value
                      ? SvgPicture.asset('assets/images/=.svg')
                      : SvgPicture.asset('assets/images/down.svg'),
                  onPressed: () {
                    _showItemTabaghehvila.value = !_showItemTabaghehvila.value;
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Text(
                    "تعداد طبقات ویلا",
                    style: TextStyle(
                      fontFamily: MAIN_FONT_FAMILY,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
            if (_showItemTabaghehvila.isTrue) tabaghehvila(context),
          ],
        ),
      ),
    );
  }

  Widget tabaghehvila(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11.r),
            color: const Color.fromRGBO(183, 183, 183, 1),
          ),
          child: Padding(
            padding: EdgeInsets.all(1.1.w),
            child: Container(
              width: 295.w,
              height: 35.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      showNumberPicker((selectedNumber) {
                        _selectedTabaghe.value = selectedNumber;
                      });
                    },
                    icon: SvgPicture.asset(
                      "assets/images/arrow_down.svg",
                      width: 10.w,
                      height: 10.h,
                      color: const Color.fromRGBO(48, 48, 48, 1),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Obx(
                      () => Text(
                        _selectedTabaghe.value,
                        style: const TextStyle(
                          fontFamily: MAIN_FONT_FAMILY_LIGHT,
                          fontSize: 12,
                          color: Color.fromRGBO(99, 99, 99, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
