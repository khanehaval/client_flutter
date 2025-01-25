import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/widget_Colleagues_profile/widget_SwitchItemsLocation_Colleagues.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';

class WidgetTaskManagementColleagues extends StatefulWidget {
  @override
  _WidgetTaskManagementColleaguesState createState() =>
      _WidgetTaskManagementColleaguesState();
}

class _WidgetTaskManagementColleaguesState
    extends State<WidgetTaskManagementColleagues> {
  final RxBool _isExpanded = false.obs;
  final RxString selectedText = ''.obs; // متن انتخاب‌شده‌ها
  final RxBool _isChecked = false.obs;
  final RxBool _isDeleted = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(226, 226, 226, 1),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: SingleChildScrollView(
            child: Container(
              width: Get.width / 1.3,
              height: _isExpanded.value ? 355 : 50,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(253, 253, 253, 1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  buildHeader(),
                  if (_isExpanded.value) buildMahaleh(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

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
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Text(
            selectedText.value.isNotEmpty
                ? selectedText.value // نمایش متن انتخاب‌شده‌ها
                : 'مدیریت وظیفه',
            textAlign: TextAlign.right,
            style: const TextStyle(
              color: Color(0xFF303030),
              fontSize: 12,
              fontFamily: MAIN_FONT_FAMILY,
            ),
          ),
        ),
      ],
    );
  }

  void _resetState() {
    _isChecked.value = false;
    _isDeleted.value = false;
    selectedText.value = '';
    _isExpanded.value = false;
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
      return 15;
    } else if (_isChecked.value) {
      return 15;
    } else if (_isExpanded.value) {
      return 10;
    }
    return 15;
  }

  Widget buildMahaleh(BuildContext context) {
    return WidgetSwitchitemslocationColleagues(
      onSelected: (selectedItems) {
        if (selectedItems.isNotEmpty) {
          // اگر تعداد گزینه‌ها بیشتر از ۲ تا بود، ... به ابتدای متن اضافه می‌شود
          if (selectedItems.length > 2) {
            selectedText.value =
                "...، " + selectedItems.sublist(0, 2).join("، ");
          } else {
            selectedText.value = selectedItems.join("، ");
          }
          _isChecked.value = true;
          _isDeleted.value = false;
          _isExpanded.value = true;
        } else {
          selectedText.value = ''; // اگر هیچ گزینه‌ای انتخاب نشده باشد
          _isChecked.value = false;
          _isDeleted.value = false;
          _isExpanded.value = false;
        }
      },
      items: const [
        "مشاور خرید و فروش",
        "مشاور رهن و اجاره",
        "مشاور مشارکت در ساخت",
      ],
    );
  }
}
