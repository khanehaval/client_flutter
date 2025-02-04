import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtherEmkanatFilterWidget extends StatelessWidget {
  OtherEmkanatFilterWidget({super.key});
  final _show_item_otheremkanatagahi_1 = false.obs;
  final asansor = false.obs;
  final anbari = false.obs;
  final parking = false.obs;
  final bazsazi = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: _show_item_otheremkanatagahi_1.isTrue ? 225.h : 50,
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
                  icon: _show_item_otheremkanatagahi_1.value
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
                    _show_item_otheremkanatagahi_1.value =
                        !_show_item_otheremkanatagahi_1.value;
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Text(
                    "سایر امکانات",
                    style: TextStyle(
                      fontFamily: MAIN_FONT_FAMILY,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
            if (_show_item_otheremkanatagahi_1.isTrue)
              otheremkanatagahi(
                asansor: asansor,
                anbari: anbari,
                parking: parking,
                bazsazi: bazsazi,
              ),
          ],
        ),
      ),
    );
  }

  Widget otheremkanatagahi({
    required Rx<bool> asansor,
    required Rx<bool> anbari,
    required Rx<bool> parking,
    required Rx<bool> bazsazi,
  }) {
    return Column(
      children: [
        buildSwitchRow("آسانسور", asansor),
        buildSwitchRow("انباری", anbari),
        buildSwitchRow("پارکینگ", parking),
        buildSwitchRow("بازسازی شده", bazsazi),
      ],
    );
  }

  Widget buildSwitchRow(String label, Rx<bool> value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Transform.scale(
          scale: 0.6,
          child: Obx(
            () => Switch(
              onChanged: (_) => value.value = _,
              value: value.value,
              activeColor: Colors.white,
              activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
              inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
              inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Text(
            label,
            style: TextStyle(
              fontFamily: MAIN_FONT_FAMILY,
              fontSize: 12.sp,
            ),
          ),
        ),
      ],
    );
  }
}
