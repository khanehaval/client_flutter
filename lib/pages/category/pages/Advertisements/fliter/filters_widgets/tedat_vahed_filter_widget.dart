import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TedatVahedFilterWidget extends StatefulWidget {
  const TedatVahedFilterWidget({super.key});

  @override
  State<TedatVahedFilterWidget> createState() => _TedatVahedFilterWidgetState();
}

class _TedatVahedFilterWidgetState extends State<TedatVahedFilterWidget> {
  final _showItem = false.obs;
  final RxBool _isChecked = false.obs;
  final RxBool _isDeleted = false.obs;

  final RxString _selectedMinValue = 'انتخاب کنید'.obs;
  final RxString _selectedMaxValue = 'انتخاب کنید'.obs;
  final RxString _headerText = 'تعداد واحد در طبقه'.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() => GestureDetector(
          onTap: () {
            if (!_isChecked.value && !_isDeleted.value) {
              _showItem.value = !_showItem.value;
            } else if (_isChecked.value && !_isDeleted.value) {
              _isDeleted.value = true;
              _isChecked.value = false;
              _showItem.value = false;
            } else if (_isDeleted.value) {
              _resetState();
            }
          },
          child: Container(
            height: _showItem.isTrue ? 230.h : 50,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(250, 250, 250, 1),
                border:
                    Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
                borderRadius: BorderRadius.circular(15.r)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: _getIconAsset(),
                      onPressed: () {
                        if (!_isChecked.value && !_isDeleted.value) {
                          _showItem.value = !_showItem.value;
                        } else if (_isChecked.value && !_isDeleted.value) {
                          _isDeleted.value = true;
                          _isChecked.value = false;
                          _showItem.value = false;
                        } else if (_isDeleted.value) {
                          _resetState();
                        }
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        if (_headerText.value != 'تعداد واحد در طبقه') {
                          _showItem.value = true;
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 20.w),
                        child: Text(
                          _headerText.value,
                          style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY, fontSize: 12.sp),
                        ),
                      ),
                    ),
                  ],
                ),
                if (_showItem.isTrue)
                  Column(
                    children: [
                      buildFilterRow(
                        "حداقل",
                        _selectedMinValue.value,
                        () => showNumberPicker((selectedNumber) {
                          setState(() {
                            _selectedMinValue.value = selectedNumber;
                            _updateHeaderText();
                          });
                        }),
                      ),
                      SizedBox(height: 21.h),
                      buildFilterRow(
                        "حداکثر",
                        _selectedMaxValue.value,
                        () => showNumberPicker((selectedNumber) {
                          setState(() {
                            _selectedMaxValue.value = selectedNumber;
                            _updateHeaderText();
                          });
                        }),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ));
  }

  Widget buildFilterRow(
      String label, String selectedOption, VoidCallback onTap) {
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
                    onPressed: onTap,
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
                      selectedOption,
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
          Text(
            label,
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

    if (_selectedMinValue.value != 'انتخاب کنید') {
      selectedItems.add(_selectedMinValue.value);
    }
    if (_selectedMaxValue.value != 'انتخاب کنید') {
      selectedItems.add(_selectedMaxValue.value);
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
      _headerText.value = 'تعداد واحد در طبقه';
      _isChecked.value = false;
    }
  }

  void _resetState() {
    _showItem.value = false;
    _isChecked.value = false;
    _isDeleted.value = false;
    _selectedMinValue.value = 'انتخاب کنید';
    _selectedMaxValue.value = 'انتخاب کنید';
    _headerText.value = 'تعداد واحد در طبقه';
  }

  Widget _getIconAsset() {
    if (_isDeleted.value) {
      return SvgPicture.asset('assets/images/delete.svg',
          width: 14.w, height: 14.h);
    } else if (_isChecked.value) {
      return SvgPicture.asset('assets/images/check_green.svg');
    } else if (_showItem.value) {
      return SvgPicture.asset('assets/images/=.svg');
    }
    return SvgPicture.asset('assets/images/down.svg');
  }
}
