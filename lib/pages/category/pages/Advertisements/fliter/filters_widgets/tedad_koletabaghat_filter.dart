import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/koletabagheh.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TedadKoletabaghatFilter extends StatefulWidget {
  TedadKoletabaghatFilter({super.key});

  @override
  State<TedadKoletabaghatFilter> createState() =>
      _TedadKoletabaghatFilterState();
}

class _TedadKoletabaghatFilterState extends State<TedadKoletabaghatFilter> {
  final RxBool _isExpanded = false.obs;
  final RxBool _isChecked = false.obs;
  final RxBool _isDeleted = false.obs;

  String _selectedOptionlow = "انتخاب کنید";
  String _selectedOptionMax = "انتخاب کنید";
  final RxString _headerText = 'تعداد کل طبقات'.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: _isExpanded.value ? 230.h : 50,
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
                  icon: SvgPicture.asset(
                    _getIconAsset(),
                    width: _getIconSize(),
                    height: _getIconSize(),
                  ),
                  onPressed: () {
                    if (!_isChecked.value && !_isDeleted.value) {
                      _isExpanded.value = !_isExpanded.value;
                    } else if (_isChecked.value && !_isDeleted.value) {
                      _isDeleted.value = true;
                      _isChecked.value = false;
                      _isExpanded.value = false;
                    } else if (_isDeleted.value) {
                      _resetState();
                    }
                  },
                ),
                GestureDetector(
                  onTap: () {
                    if (_headerText.value != 'تعداد کل طبقات') {
                      _isExpanded.value = true; // کانتینر باز می‌شود
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 20.w),
                    child: Text(
                      _headerText.value,
                      style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            if (_isExpanded.value)
              Column(
                children: [
                  _buildMinAmountWidget(context),
                  SizedBox(height: 21.h),
                  _buildMaxAmountWidget(context)
                ],
              ),
          ],
        ),
      ),
    );
  }

  void _resetState() {
    _isExpanded.value = false;
    _isChecked.value = false;
    _isDeleted.value = false;
    _selectedOptionlow = "انتخاب کنید";
    _selectedOptionMax = "انتخاب کنید";
    _headerText.value = 'تعداد کل طبقات';
  }

  String _getIconAsset() {
    if (_isDeleted.value) {
      return 'assets/images/delete.svg';
    } else if (_isChecked.value) {
      return 'assets/images/check_green.svg';
    } else if (_isExpanded.value) {
      return 'assets/images/=.svg';
    }
    return 'assets/images/down.svg';
  }

  double _getIconSize() {
    if (_isDeleted.value) {
      return 15.w;
    } else if (_isChecked.value) {
      return 17.w;
    } else if (_isExpanded.value) {
      return 10.w;
    }
    return 15.w;
  }

  Widget _buildMinAmountWidget(BuildContext context) {
    return Container(
      height: 50.h,
      width: MediaQuery.of(context).size.width / 1.25,
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
                        showNumberPicker((selectedNumber) {
                          setState(() {
                            _selectedOptionlow = selectedNumber;
                            _updateHeaderText();
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
                      child: Text(
                        _selectedOptionlow,
                        style: TextStyle(
                          fontFamily: MAIN_FONT_FAMILY_LIGHT,
                          color: const Color.fromRGBO(99, 99, 99, 1),
                        ),
                      ),
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
    );
  }

  Widget _buildMaxAmountWidget(BuildContext context) {
    return Container(
      height: 50.h,
      width: MediaQuery.of(context).size.width / 1.25,
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
                        showNumberPicker((selectedNumber) {
                          setState(() {
                            _selectedOptionMax = selectedNumber;
                            _updateHeaderText();
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
                      child: Text(
                        _selectedOptionMax,
                        style: TextStyle(
                          fontFamily: MAIN_FONT_FAMILY_LIGHT,
                          color: const Color.fromRGBO(99, 99, 99, 1),
                        ),
                      ),
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
    );
  }

  void _updateHeaderText() {
    final selectedItems = <String>[];

    if (_selectedOptionlow != 'انتخاب کنید') {
      selectedItems.add(_selectedOptionlow);
    }
    if (_selectedOptionMax != 'انتخاب کنید') {
      selectedItems.add(_selectedOptionMax);
    }

    if (selectedItems.isNotEmpty) {
      if (selectedItems.length == 1) {
        _headerText.value = selectedItems.first;
      } else if (selectedItems.length == 2) {
        _headerText.value = "${selectedItems[0]} و 1 مورد دیگر";
      }
      _isChecked.value = true;
      _isDeleted.value = false;
    } else {
      _headerText.value = 'تعداد کل طبقات';
      _isChecked.value = false;
    }
  }
}
