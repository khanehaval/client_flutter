import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/component_filter/showMizanRahnLowBottomSheet.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/component_filter/showMizanRahnMaxBottomSheet.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // اضافه کردن ScreenUtil

class RahnFilterWidget extends StatefulWidget {
  @override
  State<RahnFilterWidget> createState() => _RahnFilterWidgetState();
}

class _RahnFilterWidgetState extends State<RahnFilterWidget> {
  final _buildRoomsCountController = TextEditingController();
  final TextEditingController _customAmountController = TextEditingController();
  final TextEditingController _MaxAmountController = TextEditingController();
  bool _isFieldEnabled = false;

  final _show_item_mizanrahn = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          height: _show_item_mizanrahn.isTrue ? 230.h : 40.h,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15.r)),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                IconButton(
                  icon: _show_item_mizanrahn.value
                      ? SvgPicture.asset('assets/images/=.svg')
                      : SvgPicture.asset('assets/images/down.svg'),
                  onPressed: () {
                    _show_item_mizanrahn.value = !_show_item_mizanrahn.value;
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: const Text(
                    "میزان رهن",
                    style: TextStyle(
                      fontFamily: MAIN_FONT_FAMILY,
                      fontSize: 12,
                    ),
                  ),
                ),
              ]),
              if (_show_item_mizanrahn.isTrue)
                Column(
                  children: [
                    rahn(context),
                    SizedBox(height: 25.h),
                    rahn2(context),
                  ],
                ),
            ],
          ),
        ));
  }

  Widget rahn(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(183, 183, 183, 1),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(1.1.w),
        child: Container(
          height: 55.h,
          width: MediaQuery.of(context).size.width / 1.25,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 225, 225, 225),
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 225.w,
                height: 35.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9.r),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        showMizanRahnLowBottomSheet((selectedAmount) {
                          setState(() {
                            if (selectedAmount == 'وارد کردن مبلغ دلخواه') {
                              _isFieldEnabled = true;
                              _customAmountController.text = '';
                            } else {
                              _isFieldEnabled = false;
                              _customAmountController.text = selectedAmount;
                            }
                          });
                        });
                      },
                      icon: SvgPicture.asset(
                        "assets/images/arrow_down.svg",
                        width: 10.w,
                        height: 10.h,
                        color: const Color.fromRGBO(48, 48, 48, 1),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        style: TextStyle(
                          fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                          color: const Color.fromRGBO(99, 99, 99, 1),
                          fontSize: 12.sp,
                        ),
                        controller: _customAmountController,
                        enabled: _isFieldEnabled,
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                          hintText: 'انتخاب کنید (به تومان)',
                          hintStyle: TextStyle(fontSize: 12.sp),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 30.w),
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            setState(() {
                              _isFieldEnabled = false;
                            });
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "حداقل",
                style: TextStyle(
                  fontFamily: MAIN_FONT_FAMILY,
                  fontSize: 11.sp,
                  color: const Color.fromRGBO(99, 99, 99, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget rahn2(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(183, 183, 183, 1),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(1.1.w),
        child: Container(
          height: 55.h,
          width: MediaQuery.of(context).size.width / 1.25,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 225, 225, 225),
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 225.w,
                height: 35.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9.r),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        showMizanRahnMaxBottomSheet((selectedAmount) {
                          setState(() {
                            if (selectedAmount == 'وارد کردن مبلغ دلخواه') {
                              _isFieldEnabled = true;
                              _MaxAmountController.text = '';
                            } else {
                              _isFieldEnabled = false;
                              _MaxAmountController.text = selectedAmount;
                            }
                          });
                        });
                      },
                      icon: SvgPicture.asset(
                        "assets/images/arrow_down.svg",
                        width: 10.w,
                        height: 10.h,
                        color: const Color.fromRGBO(48, 48, 48, 1),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        style: TextStyle(
                          fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                          color: const Color.fromRGBO(99, 99, 99, 1),
                          fontSize: 12.sp,
                        ),
                        controller: _MaxAmountController,
                        enabled: _isFieldEnabled,
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                          hintText: 'انتخاب کنید (به تومان)',
                          hintStyle: TextStyle(fontSize: 12.sp),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 30.w),
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            setState(() {
                              _isFieldEnabled = false;
                            });
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "حداقل",
                style: TextStyle(
                  fontFamily: MAIN_FONT_FAMILY,
                  fontSize: 11.sp,
                  color: const Color.fromRGBO(99, 99, 99, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
