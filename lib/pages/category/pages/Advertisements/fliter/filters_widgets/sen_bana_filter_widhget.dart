import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/senbana.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_sen_bana.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SenBanaFilterWidget extends StatefulWidget {
  SenBanaFilterWidget({super.key});

  @override
  State<SenBanaFilterWidget> createState() => _SenBanaFilterWidgetState();
}

class _SenBanaFilterWidgetState extends State<SenBanaFilterWidget> {
  final _showItemSenbana = false.obs;
  final RxBool _isChecked = false.obs;
  final RxBool _isDeleted = false.obs;
  final _senBanaMaxTextController = TextEditingController();
  final _senBanaLowTextController = TextEditingController();

  String _selectedOption = 'انتخاب کنید';
  String _selectedOptionLow = 'انتخاب کنید';
  String _headerText = "سن بنا";

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
          height: _showItemSenbana.isTrue ? 230.h : 50,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15.r)),
          child: Column(children: [
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
                  if (_headerText != 'سن بنا') {
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
            ]),
            if (_showItemSenbana.isTrue)
              Column(
                children: [
                  _buildSenBanaSelector(context),
                  SizedBox(height: 21.h),
                  _buildSenBanaMaxSelector(context)
                ],
              ),
          ])),
    );
  }

  Widget _buildSenBanaSelector(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 225, 225, 225),
          borderRadius: BorderRadius.circular(16.r)),
      child: Padding(
        padding: EdgeInsets.all(1.1.w),
        child: Container(
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
                    color: const Color.fromRGBO(183, 183, 183, 1)),
                child: Padding(
                  padding: EdgeInsets.all(1.1.w),
                  child: Container(
                    width: 225.w,
                    height: 30.h,
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
                            SenBana((selectedOption) {
                              setState(() {
                                _selectedOptionLow = selectedOption;
                                _senBanaLowTextController.text =
                                    _selectedOptionLow;
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
                          padding: EdgeInsets.only(right: 15.w),
                          child: Text(
                            _selectedOptionLow,
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

  Widget _buildSenBanaMaxSelector(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 225, 225, 225),
          borderRadius: BorderRadius.circular(16.r)),
      child: Padding(
        padding: EdgeInsets.all(1.1.w),
        child: Container(
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
                  borderRadius: BorderRadius.circular(9.r),
                  color: const Color.fromRGBO(183, 183, 183, 1),
                ),
                child: Padding(
                  padding: EdgeInsets.all(1.1.w),
                  child: Container(
                    width: 225.w,
                    height: 30.h,
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
                            SenBana((selectedOption) {
                              setState(() {
                                _selectedOption = selectedOption;
                                _senBanaMaxTextController.text = selectedOption;
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
                          padding: EdgeInsets.only(right: 15.w),
                          child: Text(
                            _selectedOption,
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
      _headerText = 'سن بنا';
      _isChecked.value = false;
    }
  }

  void _resetState() {
    _showItemSenbana.value = false;
    _isChecked.value = false;
    _isDeleted.value = false;
    _selectedOption = 'انتخاب کنید';
    _selectedOptionLow = 'انتخاب کنید';
    _headerText = 'سن بنا';
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
