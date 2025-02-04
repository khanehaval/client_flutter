import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/jahatsakhteman.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/jahat_sakhteman.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JahatSakhtemanFilterWidget extends StatelessWidget {
  JahatSakhtemanFilterWidget({super.key});
  final _show_item_jahatsakhteman_1 = false.obs;
  final RxString _selectedOptionlow = "انتخاب کنید".obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Container(
          height: _show_item_jahatsakhteman_1.isTrue ? 130.h : 50,
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
                    icon: _show_item_jahatsakhteman_1.value
                        ? SvgPicture.asset(
                            'assets/images/=.svg',
                            width: 8.w,
                            height: 8.h,
                          )
                        : SvgPicture.asset(
                            'assets/images/down.svg',
                            width: 12.w,
                            height: 12.h,
                          ),
                    onPressed: () {
                      _show_item_jahatsakhteman_1.value =
                          !_show_item_jahatsakhteman_1.value;
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20.w),
                    child: Text(
                      "جهت ساختمان",
                      style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ],
              ),
              if (_show_item_jahatsakhteman_1.isTrue)
                Column(
                  children: [jahatsakhteman(context)],
                ),
            ],
          ),
        );
      },
    );
  }

  Widget jahatsakhteman(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11.r),
            color: const Color.fromRGBO(183, 183, 183, 1),
          ),
          child: Padding(
            padding: EdgeInsets.all(1.1.r),
            child: Container(
              width: 295.w,
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
                      jahatSakhteman((selectedOption) {
                        _selectedOptionlow.value = selectedOption;
                      } as Function(String key, String label));
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
                        _selectedOptionlow.value,
                        style: TextStyle(
                          fontFamily: MAIN_FONT_FAMILY_LIGHT,
                          fontSize: 12.sp,
                          color: const Color.fromRGBO(99, 99, 99, 1),
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
