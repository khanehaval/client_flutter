import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabaghehFilterWidget extends StatefulWidget {
  TabaghehFilterWidget({super.key});

  @override
  State<TabaghehFilterWidget> createState() => _TabaghehFilterWidgetState();
}

class _TabaghehFilterWidgetState extends State<TabaghehFilterWidget> {
  final _show_item_tabagheh_1 = false.obs;

  final _countOfInstallmentsController = false.obs;
  final _countOfInstallmentsMaxController = false.obs;

  String _selectedOptionlow = "انتخاب کنید";
  String _selectedOptionMax = "انتخاب کنید";
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          height: _show_item_tabagheh_1.isTrue ? 230.h : 50,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15.r)),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                icon: _show_item_tabagheh_1.value
                    ? SvgPicture.asset(
                        'assets/images/=.svg',
                        width: 7.w,
                        height: 7.h,
                      )
                    : SvgPicture.asset('assets/images/down.svg',
                        width: 11.w, height: 11.h),
                onPressed: () {
                  _show_item_tabagheh_1.value = !_show_item_tabagheh_1.value;
                },
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Text(
                  "طبقه",
                  style:
                      TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12.sp),
                ),
              ),
            ]),
            if (_show_item_tabagheh_1.isTrue)
              Column(
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  tabagheh(context),
                  SizedBox(
                    height: 21.h,
                  ),
                  tabagheh2(context),
                ],
              ),
          ]),
        ));
  }

  Widget tabagheh(BuildContext context) {
    return Container(
      height: 50.h,
      width: MediaQuery.of(context).size.width / 1.23,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 225, 225, 225),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: const Color.fromRGBO(
                  183,
                  183,
                  183,
                  1,
                )),
            child: Container(
              width: 225.w,
              height: 30.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x11000000),
                    blurRadius: 7,
                    offset: Offset(0, 5),
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      showNumberPicker((selectedNumber) {
                        setState(() {
                          _selectedOptionlow =
                              selectedNumber; // Update the selected number
                        });
                      });
                    },
                    icon: SvgPicture.asset(
                      "assets/images/arrow_down.svg",
                      width: 10.w,
                      height: 10.h,
                      color: const Color.fromRGBO(
                        48,
                        48,
                        48,
                        1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.w),
                    child: Text(
                      _selectedOptionlow, // Display selected number
                      style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY_LIGHT,
                        fontSize: 14.sp,
                        color: const Color.fromRGBO(48, 48, 48, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Text(
            "حداقل",
            style: TextStyle(
              fontFamily: MAIN_FONT_FAMILY,
              fontSize: 11,
              color: Color.fromRGBO(99, 99, 99, 1),
            ),
          ),
        ],
      ),
    );
  }

  Widget tabagheh2(BuildContext context) {
    return Container(
      height: 50.h,
      width: MediaQuery.of(context).size.width / 1.23,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 225, 225, 225),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: const Color.fromRGBO(
                  183,
                  183,
                  183,
                  1,
                )),
            child: Container(
              width: 225.w,
              height: 30.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x11000000),
                    blurRadius: 7,
                    offset: Offset(0, 5),
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      showNumberPicker((selectedNumber) {
                        setState(() {
                          _selectedOptionlow =
                              selectedNumber; // Update the selected number
                        });
                      });
                    },
                    icon: SvgPicture.asset(
                      "assets/images/arrow_down.svg",
                      width: 10.w,
                      height: 10.h,
                      color: const Color.fromRGBO(
                        48,
                        48,
                        48,
                        1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.w),
                    child: Text(
                      _selectedOptionlow, // Display selected number
                      style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY_LIGHT,
                        fontSize: 14.sp,
                        color: const Color.fromRGBO(48, 48, 48, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Text(
            "حداکثر",
            style: TextStyle(
              fontFamily: MAIN_FONT_FAMILY,
              fontSize: 11,
              color: Color.fromRGBO(99, 99, 99, 1),
            ),
          ),
        ],
      ),
    );
  }
}
