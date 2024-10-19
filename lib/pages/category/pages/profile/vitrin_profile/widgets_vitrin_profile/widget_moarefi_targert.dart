import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class WidgetMoarefiTargert extends StatefulWidget {
  @override
  _WidgetMoarefiTargertState createState() => _WidgetMoarefiTargertState();
}

class _WidgetMoarefiTargertState extends State<WidgetMoarefiTargert> {
  final RxBool _isExpanded = false.obs; // وضعیت باز یا بسته بودن باکس
  final RxBool _isTyping = false.obs; // وضعیت تایپ کردن
  final TextEditingController _textController =
      TextEditingController(); // کنترلر برای TextField
  final RxString _typedText = ''.obs; // متن وارد شده
  final RxBool _isChecked = false.obs; // وضعیت نشان دادن آیکون چک

  @override
  void initState() {
    super.initState();

    // لیسنر برای تشخیص شروع تایپ
    _textController.addListener(() {
      _isTyping.value = _textController.text.isNotEmpty;
      _typedText.value = _textController.text; // بروزرسانی متن تایپ شده
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Container(
          width: double.infinity,
          height: _isExpanded.value ? 280 : 50,
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
                  // آیکون‌ها: چک، ویرایش، فلش پایین یا بالا
                  IconButton(
                    icon: _isChecked.value
                        ? SvgPicture.asset(
                            'assets/images/edit and ok.svg') // آیکون ویرایش
                        : (_isTyping.value
                            ? SvgPicture.asset(
                                'assets/images/check_icon.svg') // آیکون چک
                            : (_isExpanded.value
                                ? SvgPicture.asset(
                                    'assets/images/=gold.svg') // آیکون =
                                : SvgPicture.asset(
                                    'assets/images/Arrow_list_agency.svg', // آیکون فلش پایین
                                    width: 11,
                                    height: 14,
                                  ))),
                    onPressed: () {
                      if (_isTyping.value) {
                        // وقتی کاربر تایپ کرده و روی چک کلیک کرده
                        _isTyping.value = false;
                        _isChecked.value = true;
                      } else {
                        _isExpanded.value =
                            !_isExpanded.value; // تغییر وضعیت باز یا بسته
                        _isChecked.value = false;
                      }
                    },
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (_isExpanded.value) ...[
                          // نمایش متن "درباره من" و شمارش کاراکتر
                          Container(
                            constraints:
                                const BoxConstraints(maxWidth: 180), // عرض باکس
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // شمارش کاراکتر
                                Text(
                                  '(${_typedText.value.length}/180)',
                                  style: const TextStyle(
                                    fontFamily: MAIN_FONT_FAMILY,
                                    color: Color.fromRGBO(99, 99, 99, 1),
                                    fontSize: 12,
                                  ),
                                ),
                                const Text(
                                  'درباره من',
                                  style: TextStyle(
                                    fontFamily: MAIN_FONT_FAMILY,
                                    color: Color.fromRGBO(99, 99, 99, 1),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ] else ...[
                          // نمایش متن پیش‌فرض در حالت جمع شده
                          Container(
                            constraints: const BoxConstraints(maxWidth: 180),
                            child: const Text(
                              'معرفی و اهداف',
                              style: TextStyle(
                                fontFamily: MAIN_FONT_FAMILY,
                                color: Color.fromRGBO(117, 117, 117, 1),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: SvgPicture.asset('assets/images/crown_vitrin.svg'),
                  ),
                ],
              ),
              if (_isExpanded.value) buildTextField(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextField(
          style: const TextStyle(
            fontFamily: MAIN_FONT_FAMILY_MEDIUM,
          ),
          controller: _textController,
          maxLines: 6,
          decoration: InputDecoration(
            hintText: 'متن خود را وارد کنید',
            hintStyle: const TextStyle(
              color: Color.fromRGBO(99, 99, 99, 1),
              fontSize: 13,
              fontFamily: MAIN_FONT_FAMILY_MEDIUM,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color.fromRGBO(23, 102, 175, 1),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color.fromRGBO(23, 102, 175, 1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
