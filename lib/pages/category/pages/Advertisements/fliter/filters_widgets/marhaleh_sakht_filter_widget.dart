import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_build_step.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MarhalehSakhtFilterWidget extends StatelessWidget {
  MarhalehSakhtFilterWidget({super.key});
  final _buildStepController = TextEditingController();

  final RxBool _show_item_mahaleh_1 = false.obs;
  final RxString _selectedOption = "انتخاب کنید".obs; // Track selected option
  final RxBool _isChecked = false.obs;
  final RxBool _isDeleted = false.obs;
  final RxString _headerText = "مرحله ساخت".obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: _show_item_mahaleh_1.isTrue ? 130.h : 50,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(250, 250, 250, 1),
          border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
          borderRadius: BorderRadius.circular(15),
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
                    _toggleDropdown();
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 20),
                  child: GestureDetector(
                    onTap: () {
                      if (_headerText.value != "مرحله ساخت") {
                        _show_item_mahaleh_1.value = true;
                      }
                    },
                    child: Text(
                      _headerText.value,
                      style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY,
                        color: const Color.fromRGBO(48, 48, 48, 1),
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            if (_show_item_mahaleh_1.isTrue) buildDropdownSelector(context),
          ],
        ),
      ),
    );
  }

  /// Dropdown Selector Widget
  Widget buildDropdownSelector(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: const Color.fromARGB(183, 183, 183, 183),
      ),
      child: Padding(
        padding: const EdgeInsets.all(1.1),
        child: Container(
          width: 295.w,
          height: 35.h,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  // Open the BuildStep widget and pass a callback to update the selected option
                  BuildStep((selectedOption) {
                    _selectedOption.value =
                        selectedOption; // Update selected option
                    _updateHeaderText(); // Update header text
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
                child: Obx(
                  () => Text(
                    _selectedOption.value,
                    style: TextStyle(
                      fontFamily: MAIN_FONT_FAMILY_LIGHT,
                      fontSize: 12.sp,
                      color: const Color.fromRGBO(166, 166, 166, 1),
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

  void _toggleDropdown() {
    if (!_isChecked.value && !_isDeleted.value) {
      _show_item_mahaleh_1.value = !_show_item_mahaleh_1.value;
    } else if (_isChecked.value && !_isDeleted.value) {
      _isDeleted.value = true;
      _isChecked.value = false;
      _show_item_mahaleh_1.value = false;
    } else if (_isDeleted.value) {
      _resetState();
    }
  }

  void _updateHeaderText() {
    if (_selectedOption.value != "انتخاب کنید") {
      _headerText.value = _selectedOption.value;
      _isChecked.value = true;
      _isDeleted.value = false;
    } else {
      _headerText.value = "مرحله ساخت";
      _isChecked.value = false;
    }
  }

  /// Reset widget state
  void _resetState() {
    _show_item_mahaleh_1.value = false;
    _isChecked.value = false;
    _isDeleted.value = false;
    _selectedOption.value = "انتخاب کنید";
    _headerText.value = "مرحله ساخت";
  }

  /// Get the appropriate icon for the widget state
  String _getIconAsset() {
    if (_isDeleted.value) {
      return 'assets/images/delete.svg';
    } else if (_isChecked.value) {
      return 'assets/images/check_green.svg';
    } else if (_show_item_mahaleh_1.isTrue) {
      return 'assets/images/=.svg';
    }
    return 'assets/images/down.svg';
  }

  /// Get the appropriate icon size
  double _getIconSize() {
    if (_isDeleted.value) {
      return 15.w;
    } else if (_isChecked.value) {
      return 17.w;
    } else if (_show_item_mahaleh_1.isTrue) {
      return 10.w;
    }
    return 15.w;
  }
}
