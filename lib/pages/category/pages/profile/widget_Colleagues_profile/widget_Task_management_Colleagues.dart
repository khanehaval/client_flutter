import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/widget_Colleagues_profile/widget_SwitchItemsLocation_Colleagues.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/switchItem_location.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class WidgetTaskManagementColleagues extends StatefulWidget {
  @override
  _WidgetTaskManagementColleaguesState createState() =>
      _WidgetTaskManagementColleaguesState();
}

class _WidgetTaskManagementColleaguesState
    extends State<WidgetTaskManagementColleagues> {
  final RxBool _About_me_1 = false.obs; // وضعیت باز یا بسته بودن باکس
  final RxBool _isTyping = false.obs; // وضعیت تایپ کردن
  final TextEditingController _textController =
      TextEditingController(); // کنترلر برای TextField
  final RxBool _isChecked = false.obs; // وضعیت نشان دادن آیکون چک
  final RxString selectedText = ''.obs; // متن انتخاب شده
  final RxBool _isDeleted = false.obs; // وضعیت نشان دادن آیکون delete

  @override
  void initState() {
    super.initState();
    _textController.addListener(() {
      _isTyping.value = _textController.text.isNotEmpty;
    });
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
              height: _About_me_1.value ? 355 : 50,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(253, 253, 253, 1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: SvgPicture.asset(
                          _getIconAsset(), // دریافت آیکون مناسب
                          width: 20,
                          height: _About_me_1.value ? 25 : 15,
                        ),
                        onPressed: () {
                          if (!_isChecked.value && !_isDeleted.value) {
                            // وقتی روی آیکون فلش پایین کلیک شد
                            _isChecked.value = true; // نمایش آیکون چک
                            _About_me_1.value = true; // باز کردن باکس
                          } else if (_isChecked.value && !_isDeleted.value) {
                            // وقتی آیکون چک زده شد
                            _isDeleted.value = true; // نمایش آیکون delete
                            _About_me_1.value = false; // بستن باکس
                          } else if (_isDeleted.value) {
                            // وقتی آیکون delete زده شد
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
                      )
                    ],
                  ),
                  if (_About_me_1.value) ...[
                    buildMahaleh(context),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _resetState() {
    // بازگشت به حالت اولیه
    _isChecked.value = false; // آیکون چک را غیرفعال می‌کند
    _isDeleted.value = false; // آیکون حذف را غیرفعال می‌کند
    selectedText.value = ''; // متن انتخاب شده را پاک می‌کند
    _About_me_1.value = false; // باکس را می‌بندد
  }

  String _getIconAsset() {
    // تغییر آیکون بر اساس وضعیت
    if (_isDeleted.value) {
      return 'assets/images/delete.svg'; // آیکون delete بعد از زدن چک
    } else if (_isChecked.value) {
      return 'assets/images/ok_Colleagues.svg'; // آیکون چک بعد از باز شدن باکس
    }
    return 'assets/images/down.svg'; // آیکون فلش پایین در حالت عادی
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
