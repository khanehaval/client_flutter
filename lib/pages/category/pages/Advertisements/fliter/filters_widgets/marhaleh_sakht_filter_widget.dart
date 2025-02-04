import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class MarhalehSakhtFilterWidget extends StatelessWidget {
  MarhalehSakhtFilterWidget({super.key});
  final _show_item_mahaleh_1 = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
          height: _show_item_mahaleh_1.isTrue ? 130.h : 50,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                padding: EdgeInsets.only(left: 10, right: 20),
                child: Text(
                  'مرحله ساخت',
                  style: TextStyle(
                      fontFamily: MAIN_FONT_FAMILY,
                      color: Color.fromRGBO(48, 48, 48, 1),
                      fontSize: 12.sp),
                ),
              ),
            ]),
            if (_show_item_mahaleh_1.isTrue)
              Column(
                children: [marhalehSakht(context)],
              )
          ])),
    );
  }

  Obx marhalehSakht(BuildContext context) {
    return Obx(
      () => _show_item_mahaleh_1.isTrue
          ? Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: const Color.fromARGB(183, 183, 183, 183),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(1.1),
                    child: Container(
                      width: 295.w,
                      height: 35.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              "assets/images/arrow_down.svg",
                              width: 10,
                              height: 10,
                              color: const Color.fromRGBO(
                                48,
                                48,
                                48,
                                1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Text(
                              'انتخاب کنید',
                              style: TextStyle(
                                  fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                  fontSize: 12.sp,
                                  color:
                                      const Color.fromRGBO(166, 166, 166, 1)),
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
