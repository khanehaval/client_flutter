import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/component_filter/showMizanEjaraMaxBottomSheet.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/component_filter/showMizanEjaralowBottomSheet.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EjaraFilterWidget extends StatefulWidget {
  EjaraFilterWidget({super.key});

  @override
  State<EjaraFilterWidget> createState() => _EjaraFilterWidgetState();
}

class _EjaraFilterWidgetState extends State<EjaraFilterWidget> {
  final _show_item_mizanejara = false.obs;
  final TextEditingController _customAmountController = TextEditingController();
  final TextEditingController _MaxAmountController = TextEditingController();

  bool _isFieldEnabled = false;
  final _show_item_mizanrahn = false.obs;

  final RxString _selectedMinAmount = 'انتخاب کنید'.obs;
  final RxString _selectedMaxAmount = 'انتخاب کنید'.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: _show_item_mizanejara.isTrue ? 230.h : 40.h,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(250, 250, 250, 1),
          border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                icon: _show_item_mizanejara.value
                    ? SvgPicture.asset('assets/images/=.svg')
                    : SvgPicture.asset('assets/images/down.svg'),
                onPressed: () {
                  _show_item_mizanejara.value = !_show_item_mizanejara.value;
                },
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: const Text(
                  "میزان اجاره",
                  style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                ),
              ),
            ]),
            if (_show_item_mizanejara.isTrue)
              Column(
                children: [
                  ejara(context),
                  SizedBox(height: 25.h),
                  ejara2(context),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget ejara(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(183, 183, 183, 1),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(1.1.w),
        child: Container(
          height: 55.h,
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
                  color: const Color.fromRGBO(183, 183, 183, 1),
                ),
                child: Padding(
                  padding: EdgeInsets.all(1.1.w),
                  child: Container(
                    width: 225.w,
                    height: 35.h,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9.r),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            showMizanEjaraMaxBottomSheet((selectedAmount) {
                              setState(() {
                                if (selectedAmount == 'وارد کردن مبلغ دلخواه') {
                                  _isFieldEnabled = true;
                                  _customAmountController.text = '';
                                } else {
                                  _isFieldEnabled = false;
                                  _customAmountController.text = selectedAmount;
                                }
                                _selectedMaxAmount.value = selectedAmount;
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
                        Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: Obx(() => Text(
                                _selectedMaxAmount.value,
                                style: TextStyle(
                                  fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                  fontSize: 12.sp,
                                  color: const Color.fromRGBO(99, 99, 99, 1),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
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

  Widget ejara2(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(183, 183, 183, 1),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(1.1.w),
        child: Container(
          height: 55.h,
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
                  borderRadius: BorderRadius.circular(9.r),
                  color: const Color.fromRGBO(183, 183, 183, 1),
                ),
                child: Padding(
                  padding: EdgeInsets.all(1.1.w),
                  child: Container(
                    width: 225.w,
                    height: 35.h,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9.r),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            showMizanEjaraLowBottomSheet((selectedAmount) {
                              setState(() {
                                if (selectedAmount == 'وارد کردن مبلغ دلخواه') {
                                  _isFieldEnabled = true;
                                  _customAmountController.text = '';
                                } else {
                                  _isFieldEnabled = false;
                                  _customAmountController.text = selectedAmount;
                                }
                                _selectedMinAmount.value = selectedAmount;
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
                        Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: Obx(() => Text(
                                _selectedMinAmount.value,
                                style: TextStyle(
                                  fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                  fontSize: 12.sp,
                                  color: const Color.fromRGBO(99, 99, 99, 1),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Text(
                "حداکثر",
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
