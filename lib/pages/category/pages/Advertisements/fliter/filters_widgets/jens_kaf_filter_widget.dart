import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/jenskaf.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_jenskaf.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JensKafFilterWidget extends StatelessWidget {
  JensKafFilterWidget({super.key});

  final RxBool _showOptions = false.obs;
  final RxString _selectedOption = "انتخاب کنید".obs;
  final RxBool _isChecked = false.obs;
  final RxBool _isDeleted = false.obs;
  final RxString _headerText = "جنس کف".obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: _showOptions.isTrue ? 130.h : 50,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(250, 250, 250, 1),
          border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Column(
          children: [
            buildHeader(),
            if (_showOptions.isTrue) buildSelector(),
          ],
        ),
      ),
    );
  }

  /// 📌 ساخت هدر ویجت
  Widget buildHeader() {
    return Row(
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
              _showOptions.value = !_showOptions.value;
            } else if (_isChecked.value && !_isDeleted.value) {
              _isDeleted.value = true;
              _isChecked.value = false;
              _showOptions.value = false;
            } else if (_isDeleted.value) {
              _resetState();
            }
          },
        ),
        GestureDetector(
          onTap: () {
            if (_headerText.value != "جنس کف") {
              _showOptions.value = true;
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
    );
  }

  /// 📌 ویجت انتخاب جنس کف
  Widget buildSelector() {
    return Container(
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
                  JensKaf((selectedKey, selectedLabel) {
                    _selectedOption.value = selectedLabel;
                    _updateHeaderText();
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
                    _selectedOption.value,
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
    );
  }

  /// 📌 تعیین آیکون مناسب
  String _getIconAsset() {
    if (_isDeleted.value) {
      return 'assets/images/delete.svg';
    } else if (_isChecked.value) {
      return 'assets/images/check_green.svg';
    } else if (_showOptions.value) {
      return 'assets/images/=.svg';
    }
    return 'assets/images/down.svg';
  }

  /// 📌 تعیین سایز آیکون
  double _getIconSize() {
    if (_isDeleted.value) {
      return 15.w;
    } else if (_isChecked.value) {
      return 17.w;
    } else if (_showOptions.value) {
      return 10.w;
    }
    return 15.w;
  }

  /// 📌 بروزرسانی متن هدر
  void _updateHeaderText() {
    if (_selectedOption.value != "انتخاب کنید") {
      _headerText.value = _selectedOption.value;
      _isChecked.value = true;
      _isDeleted.value = false;
    } else {
      _headerText.value = "جنس کف";
      _isChecked.value = false;
    }
  }

  /// 📌 ریست وضعیت ویجت
  void _resetState() {
    _showOptions.value = false;
    _isChecked.value = false;
    _isDeleted.value = false;
    _selectedOption.value = "انتخاب کنید";
    _headerText.value = "جنس کف";
  }
}
