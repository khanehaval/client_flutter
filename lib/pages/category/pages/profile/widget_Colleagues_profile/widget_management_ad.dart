import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/widget_Colleagues_profile/Widget_Switchitems_location_management_ad.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class WidgetManagementAd extends StatefulWidget {
  @override
  _WidgetManagementAdState createState() => _WidgetManagementAdState();
}

class _WidgetManagementAdState extends State<WidgetManagementAd> {
  final RxBool _isExpanded = false.obs; // وضعیت باز یا بسته بودن باکس
  final TextEditingController _textController =
      TextEditingController(); // کنترلر برای TextField
  final RxString selectedText = ''.obs; // متن انتخاب شده
  final RxBool _isChecked = false.obs; // وضعیت نشان دادن آیکون چک
  final RxBool _isDeleted = false.obs; // وضعیت نشان دادن آیکون delete

  @override
  void initState() {
    super.initState();
    _textController.addListener(() {
      if (_textController.text.isNotEmpty) {
        selectedText.value = _textController.text; // متن انتخاب شده
      } else {
        selectedText.value = ''; // در صورتی که متن خالی باشد
      }
    });
  }

  @override
  void dispose() {
    _textController.dispose(); // Dispose controller
    super.dispose();
  }

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
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Text(
              selectedText.value.isNotEmpty
                  ? selectedText.value // نمایش متن انتخاب شده
                  : 'مدیریت آگهی',
              textAlign: TextAlign.right,
              overflow: TextOverflow.ellipsis, // اضافه کردن این ویژگی
              style: const TextStyle(
                color: Color(0xFF303030),
                fontSize: 12,
                fontFamily: MAIN_FONT_FAMILY,
              ),
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
    return WidgetSwitchitemsLocationManagementAd(
      onSelected: (selectedItems) {
        if (selectedItems.isNotEmpty) {
          // اگر تعداد گزینه‌ها بیشتر از ۲ تا بود، ... به ابتدای متن اضافه می‌شود
          if (selectedItems.length > 2) {
            selectedText.value =
                "...، " + selectedItems.sublist(0, 2).join("، ");
          } else {
            selectedText.value = selectedItems.join("، ");
          }
          _isChecked.value = true; // نمایش آیکون چک
          _isDeleted.value = false; // اطمینان از عدم نمایش delete در این حالت
        } else {
          _resetState(); // اگر هیچ آیتمی انتخاب نشد، بازگشت به حالت اولیه
        }
      },
      items: const [
        "آپارتمان / 80 متر / 2 اتاق / تهران",
        "ویلا / 160 متر / 2 تاق / چالوس",
        "زمین / 500 متر / شهریار",
      ],
    );
  }
}
