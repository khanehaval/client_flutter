import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/component_filter/show_qematKol_low_BottomSheet.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/component_filter/show_qematKol_max_BottomSheet.dart';

class EjaraRozanehFilterWidget extends StatefulWidget {
  EjaraRozanehFilterWidget({super.key});

  @override
  State<EjaraRozanehFilterWidget> createState() =>
      _EjaraRozanehFilterWidgetState();
}

class _EjaraRozanehFilterWidgetState extends State<EjaraRozanehFilterWidget> {
  final RxBool _isExpanded = false.obs;
  final RxBool _isChecked = false.obs;
  final RxBool _isDeleted = false.obs;

  final TextEditingController _customAmountController = TextEditingController();
  final TextEditingController _maxAmountController = TextEditingController();

  bool _isFieldEnabled = false;
  final RxString selectedMinAmount = 'انتخاب کنید'.obs;
  final RxString selectedMaxAmount = 'انتخاب کنید'.obs;
  final RxString _headerText = 'اجاره روزانه'.obs;

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
          height: _isExpanded.value ? 230.h : 50,
          width: 370.w,
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
                      if (_headerText.value != 'اجاره روزانه') {
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
                Column(
                  children: [
                    ejaraRozaneh(context),
                    SizedBox(height: 20.h),
                    ejaraRozaneh2(context),
                  ],
                ),
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
    selectedMinAmount.value = 'انتخاب کنید';
    selectedMaxAmount.value = 'انتخاب کنید';
    _headerText.value = 'اجاره روزانه';
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

  Widget ejaraRozaneh(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 225, 225, 225),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(1.1.w),
        child: Container(
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
                  color: const Color.fromRGBO(183, 183, 183, 1),
                ),
                child: Padding(
                  padding: EdgeInsets.all(1.1.w),
                  child: Container(
                    width: 230.w,
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
                            showQematKolLowBottomSheet((selected) {
                              setState(() {
                                selectedMinAmount.value = selected;
                                _isFieldEnabled =
                                    selected == 'وارد کردن مبلغ دلخواه';
                                _customAmountController.text =
                                    _isFieldEnabled ? '' : selected;
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
                            selectedMinAmount.value,
                            style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY_LIGHT,
                              fontSize: 12.sp,
                              color: Color.fromRGBO(99, 99, 99, 1),
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

  Widget ejaraRozaneh2(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 225, 225, 225),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(1.1.w),
        child: Container(
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
                  borderRadius: BorderRadius.circular(9.r),
                  color: const Color.fromRGBO(183, 183, 183, 1),
                ),
                child: Padding(
                  padding: EdgeInsets.all(1.1.w),
                  child: Container(
                    width: 230.w,
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
                            showQematKolMaxBottomSheet((selected) {
                              setState(() {
                                selectedMaxAmount.value = selected;
                                _maxAmountController.text = selected;
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
                            selectedMaxAmount.value,
                            style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY_LIGHT,
                              fontSize: 12.sp,
                              color: Color.fromRGBO(99, 99, 99, 1),
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

    if (selectedMinAmount.value != 'انتخاب کنید') {
      selectedItems.add(selectedMinAmount.value);
    }
    if (selectedMaxAmount.value != 'انتخاب کنید') {
      selectedItems.add(selectedMaxAmount.value);
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
      _headerText.value = 'اجاره روزانه';
      _isChecked.value = false;
    }
  }
}
