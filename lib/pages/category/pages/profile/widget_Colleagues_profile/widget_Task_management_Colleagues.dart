import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/widget_Colleagues_profile/widget_SwitchItemsLocation_Colleagues.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class WidgetTaskManagementColleagues extends StatefulWidget {
  @override
  _WidgetTaskManagementColleaguesState createState() =>
      _WidgetTaskManagementColleaguesState();
}

class _WidgetTaskManagementColleaguesState
    extends State<WidgetTaskManagementColleagues> {
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
            // مدیریت وضعیت آیکون و باکس
            if (!_isChecked.value && !_isDeleted.value) {
              _isChecked.value = true; // نمایش آیکون چک
              _isExpanded.value = true; // باز کردن باکس
            } else if (_isChecked.value && !_isDeleted.value) {
              _isDeleted.value = true; // نمایش آیکون delete
              _isExpanded.value = false; // بستن باکس
            } else if (_isDeleted.value) {
              _resetState(); // بازگشت به حالت اولیه
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Text(
            selectedText.value.isNotEmpty
                ? selectedText.value // نمایش متن انتخاب شده
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
    // بازگشت به حالت اولیه
    _isChecked.value = false; // آیکون چک را غیرفعال می‌کند
    _isDeleted.value = false; // آیکون حذف را غیرفعال می‌کند
    selectedText.value = ''; // متن انتخاب شده را پاک می‌کند
    _isExpanded.value = false; // باکس را می‌بندد
  }

  String _getIconAsset() {
    // تغییر آیکون بر اساس وضعیت
    if (_isDeleted.value) {
      return 'assets/images/edit_and_ok.svg'; // آیکون ادیت بعد از زدن چک
    } else if (_isChecked.value && selectedText.value.isNotEmpty) {
      return 'assets/images/check_icon.svg'; // آیکون چک بعد از انتخاب آیتم
    } else if (_isChecked.value && selectedText.value.isEmpty) {
      return 'assets/images/=gold.svg'; // آیکون ویرایش زمانی که چک زده شده ولی متنی انتخاب نشده
    }
    return 'assets/images/Arrow_list_agency.svg'; // آیکون فلش پایین در حالت عادی
  }

  double _getIconSize() {
    // تعیین اندازه آیکون بر اساس وضعیت
    if (_isDeleted.value) {
      return 15; // اندازه بزرگتر برای آیکون delete
    }
    if (_isChecked.value) {
      return selectedText.value.isNotEmpty
          ? 15
          : 10; // اندازه برای چک یا ویرایش
    }
    return 15; // اندازه پیش فرض برای حالت عادی
  }

  Widget buildMahaleh(BuildContext context) {
    return WidgetSwitchitemslocationColleagues(
      onSelected: (selectedItems) {
        if (selectedItems.isNotEmpty) {
          selectedText.value = selectedItems.first; // ذخیره متن انتخاب شده
          _isChecked.value = true; // نمایش آیکون چک
          _isDeleted.value = false; // اطمینان از عدم نمایش delete در این حالت
        } else {
          _resetState(); // اگر هیچ آیتمی انتخاب نشد، بازگشت به حالت اولیه
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
