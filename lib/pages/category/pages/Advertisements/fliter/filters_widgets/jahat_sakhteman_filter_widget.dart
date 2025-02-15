import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/jahat_sakhteman.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JahatSakhtemanFilterWidget extends StatefulWidget {
  const JahatSakhtemanFilterWidget({super.key});

  @override
  State<JahatSakhtemanFilterWidget> createState() =>
      _JahatSakhtemanFilterWidgetState();
}

class _JahatSakhtemanFilterWidgetState
    extends State<JahatSakhtemanFilterWidget> {
  final RxBool _isExpanded = false.obs;
  final RxBool _isChecked = false.obs;
  final RxBool _isDeleted = false.obs;
  final RxString _selectedOption = "انتخاب کنید".obs;
  final RxString _headerText = "جهت ساختمان".obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: () {
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
        child: Container(
          height: _isExpanded.value ? 130.h : 50,
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
                      if (_headerText.value != "جهت ساختمان") {
                        _isExpanded.value = true;
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
                Column(children: [_jahatSakhteman(context)]),
            ],
          ),
        ),
      ),
    );
  }

  void _resetState() {
    _isExpanded.value = false;
    _isChecked.value = false;
    _isDeleted.value = false;
    _selectedOption.value = "انتخاب کنید";
    _headerText.value = "جهت ساختمان";
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

  Widget _jahatSakhteman(BuildContext context) {
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
                  jahatSakhteman((selectedKey, selectedLabel) {
                    setState(() {
                      _selectedOption.value = selectedLabel;
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

  void _updateHeaderText() {
    if (_selectedOption.value != "انتخاب کنید") {
      _headerText.value = _selectedOption.value;
      _isChecked.value = true;
      _isDeleted.value = false;
    } else {
      _headerText.value = "جهت ساختمان";
      _isChecked.value = false;
    }
  }
}
