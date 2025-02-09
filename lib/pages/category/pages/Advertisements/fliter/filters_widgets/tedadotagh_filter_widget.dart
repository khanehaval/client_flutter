import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tedad_Otagh.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TedadotaghFilterWidget extends StatelessWidget {
  TedadotaghFilterWidget({super.key});

  final _showItemOtagh = false.obs;
  final _selectedItemText = "انتخاب کنید".obs;
  final _buildRoomsCountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: _showItemOtagh.isTrue ? 110.h : 50,
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
                  icon: _showItemOtagh.value
                      ? SvgPicture.asset('assets/images/=.svg')
                      : SvgPicture.asset('assets/images/down.svg'),
                  onPressed: () {
                    _showItemOtagh.value = !_showItemOtagh.value;
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Text(
                    "تعداد اتاق",
                    style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY, fontSize: 12.sp),
                  ),
                ),
              ],
            ),
            otagh(context)
          ],
        ),
      ),
    );
  }

  Obx otagh(BuildContext context) {
    return Obx(() => _showItemOtagh.value
        ? Column(
            children: [
              const SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11.r),
                  color: const Color.fromRGBO(183, 183, 183, 1),
                ),
                child: Padding(
                  padding: EdgeInsets.all(1.1.w),
                  child: Container(
                    width: 285.w,
                    height: 35.h,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            TedadOtagh((selectedKey, selectedLabel) {
                              // به‌روزرسانی متن انتخاب‌شده
                              _selectedItemText.value = selectedLabel;
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
                          padding: EdgeInsets.only(right: 15.w),
                          child: Text(
                            _selectedItemText.value, // نمایش متن انتخاب‌شده
                            style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY_LIGHT,
                              fontSize: 12.sp,
                              color: const Color.fromRGBO(99, 99, 99, 1),
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
        : const SizedBox.shrink());
  }
}
