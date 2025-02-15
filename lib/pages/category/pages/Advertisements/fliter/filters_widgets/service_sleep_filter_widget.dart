import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_service_sleep.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ServiceSleepFilterWidget extends StatefulWidget {
  ServiceSleepFilterWidget({super.key});
  @override
  State<ServiceSleepFilterWidget> createState() =>
      _ServiceSleepFilterWidgetState();
}

class _ServiceSleepFilterWidgetState extends State<ServiceSleepFilterWidget> {
  final _showItemTabagheh = false.obs;
  final _isChecked = false.obs; // برای نشان دادن حالت انتخاب
  final _isDeleted = false.obs; // برای نشان دادن حالت حذف
  final RxString selectedMinAmount = 'انتخاب کنید'.obs;
  final RxString selectedMaxAmount = 'انتخاب کنید'.obs;
  String headerText = "تعداد سرویس خواب";
  final _showItemSenbana = false.obs;
  String _headerText = "تعداد سرویس خواب";
  String _selectedOptionLow = 'انتخاب کنید';
  String _selectedOption = 'انتخاب کنید';
  final _senBanaMaxTextController = TextEditingController();
  final _senBanaLowTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: _showItemSenbana.isTrue ? 230.h : 50,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(250, 250, 250, 1),
            border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
            borderRadius: BorderRadius.circular(15.r)),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                icon: _getIconAsset(),
                onPressed: () {
                  if (!_isChecked.value && !_isDeleted.value) {
                    _showItemSenbana.value = !_showItemSenbana.value;
                  } else if (_isChecked.value && !_isDeleted.value) {
                    _isDeleted.value = true;
                    _isChecked.value = false;
                    _showItemSenbana.value = false;
                  } else if (_isDeleted.value) {
                    _resetState();
                  }
                },
              ),
              GestureDetector(
                onTap: () {
                  if (_headerText != 'تعداد سرویس خواب') {
                    _showItemSenbana.value = true;
                  }
                },
                child: Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Text(
                    _headerText,
                    style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY, fontSize: 12.sp),
                  ),
                ),
              ),
            ]), // The header row displaying the text
            if (_showItemSenbana.isTrue)
              Column(
                children: [
                  _buildMinAmountSelector(context),
                  SizedBox(height: 21.h),
                  _buildMaxAmountSelector(context)
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildMinAmountSelector(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 225, 225, 225),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(1.1),
        child: Container(
          height: 50.h,
          width: MediaQuery.of(context).size.width / 1.23,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 225, 225, 225),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: const Color.fromRGBO(183, 183, 183, 1)),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(183, 183, 183, 1),
                      borderRadius: BorderRadius.circular(16)),
                  child: Padding(
                    padding: const EdgeInsets.all(1.1),
                    child: Container(
                      width: 225.w,
                      height: 30.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              ServiceSleep((selectedOption) {
                                setState(() {
                                  selectedMinAmount.value = selectedOption;
                                  _selectedOptionLow =
                                      selectedOption; // Update the selected minimum option
                                  _senBanaLowTextController.text =
                                      selectedOption;
                                  _updateHeaderText();
                                });
                              });
                            },
                            icon: SvgPicture.asset(
                              "assets/images/arrow_down.svg",
                              width: 10,
                              height: 10,
                              color: const Color.fromRGBO(48, 48, 48, 1),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Text(
                              selectedMinAmount
                                  .value, // Display the selected minimum value
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
              ),
              Text(
                "حداقل",
                style: TextStyle(
                  fontFamily: MAIN_FONT_FAMILY,
                  fontSize: 12.sp,
                  color: const Color.fromRGBO(99, 99, 99, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMaxAmountSelector(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 225, 225, 225),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(1.1),
        child: Container(
          height: 50.h,
          width: MediaQuery.of(context).size.width / 1.23,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 225, 225, 225),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: const Color.fromRGBO(183, 183, 183, 1)),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(183, 183, 183, 1),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(1.1),
                    child: Container(
                      width: 225.w,
                      height: 30.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              ServiceSleep((selectedOption) {
                                setState(() {
                                  selectedMaxAmount.value = selectedOption;
                                  _selectedOption =
                                      selectedOption; // Update the selected maximum option
                                  _senBanaMaxTextController.text =
                                      selectedOption;
                                  _updateHeaderText();
                                });
                              });
                            },
                            icon: SvgPicture.asset(
                              "assets/images/arrow_down.svg",
                              width: 10,
                              height: 10,
                              color: const Color.fromRGBO(48, 48, 48, 1),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Text(
                              selectedMaxAmount
                                  .value, // Display the selected maximum value
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
              ),
              Text(
                "حداکثر",
                style: TextStyle(
                  fontFamily: MAIN_FONT_FAMILY,
                  fontSize: 12.sp,
                  color: const Color.fromRGBO(99, 99, 99, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _updateHeaderText() {
    final selectedItems = <String>[];

    if (_selectedOptionLow != 'انتخاب کنید') {
      selectedItems.add(_selectedOptionLow);
    }
    if (_selectedOption != 'انتخاب کنید') {
      selectedItems.add(_selectedOption);
    }

    if (selectedItems.isNotEmpty) {
      if (selectedItems.length == 1) {
        _headerText = selectedItems.first;
      } else if (selectedItems.length == 2) {
        _headerText = "${selectedItems[0]} و 1 مورد دیگر";
      }
      _isChecked.value = true;
      _isDeleted.value = false;
    } else {
      _headerText = ' تعداد سرویس خواب';
      _isChecked.value = false;
    }
  }

  void _resetState() {
    _showItemSenbana.value = false;
    _isChecked.value = false;
    _isDeleted.value = false;
    _selectedOption = 'انتخاب کنید';
    _selectedOptionLow = 'انتخاب کنید';
    _headerText = 'تعداد سرویس خواب';
  }

  Widget _getIconAsset() {
    if (_isDeleted.value) {
      return SvgPicture.asset('assets/images/delete.svg',
          width: 14.w, height: 14.h);
    } else if (_isChecked.value) {
      return SvgPicture.asset('assets/images/check_green.svg');
    } else if (_showItemSenbana.value) {
      return SvgPicture.asset('assets/images/=.svg');
    }
    return SvgPicture.asset('assets/images/down.svg');
  }
}
