import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class WidgetAboutVitrin extends StatefulWidget {
  @override
  _AboutMeWidgetState createState() => _AboutMeWidgetState();
}

class _AboutMeWidgetState extends State<WidgetAboutVitrin> {
  final RxBool _isExpanded = false.obs; // وضعیت باز یا بسته بودن باکس
  final RxBool _isTyping = false.obs; // وضعیت تایپ کردن
  final TextEditingController _textController =
      TextEditingController(); // کنترلر برای TextField
  final RxString _typedText = 'درباره من'.obs; // متن نمایش داده شده
  final RxBool _isChecked = false.obs; // وضعیت نشان دادن آیکون چک
  final RxInt _charCount = 0.obs; // تعداد کاراکترهای تایپ شده
  final int _maxChars = 180; // حداکثر تعداد کاراکتر

  @override
  void initState() {
    super.initState();
    // Listener برای به‌روزرسانی شمارش کاراکترها هنگام تغییر متن
    _textController.addListener(() {
      _charCount.value = _textController.text.length;
      _isTyping.value = _charCount.value > 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          width: double.infinity,
          height: _isExpanded.value ? 260 : 50, // تغییر ارتفاع باکس
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
                    icon: _isChecked.value
                        ? SvgPicture.asset(
                            'assets/images/edit and ok.svg', // آیکون ویرایش
                          )
                        : (_isTyping.value
                            ? SvgPicture.asset(
                                'assets/images/check_icon.svg') // آیکون چک
                            : SvgPicture.asset(
                                _isExpanded.value
                                    ? 'assets/images/=gold.svg'
                                    : 'assets/images/Arrow_list_agency.svg',
                                width: _isExpanded.value ? 25 : 11,
                                height: _isExpanded.value ? 10 : 14,
                              )),
                    onPressed: () {
                      if (_isTyping.value) {
                        _typedText.value = _textController.text;
                        _isTyping.value = false;
                        _isChecked.value = true;
                        _isExpanded.value = false;
                      } else {
                        _isExpanded.value = !_isExpanded.value;
                        _isChecked.value = false;
                      }
                    },
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (_isChecked.value) ...[
                          Container(
                            constraints: const BoxConstraints(maxWidth: 180),
                            child: Text(
                              _typedText.value,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontFamily: MAIN_FONT_FAMILY,
                                color: Color.fromRGBO(99, 99, 99, 1),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ] else ...[
                          // فقط در صورت باز بودن باکس شمارنده نمایش داده شود
                          if (_isExpanded.value) ...[
                            Row(
                              children: [
                                Obx(
                                  () => Text(
                                    '($_charCount/$_maxChars)', // شمارنده کاراکتر
                                    style: const TextStyle(
                                      fontFamily: MAIN_FONT_FAMILY,
                                      color: Color.fromRGBO(117, 117, 117, 1),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    width: 5), // فاصله بین شمارنده و متن
                                const Text(
                                  'درباره من',
                                  style: TextStyle(
                                    fontFamily: MAIN_FONT_FAMILY,
                                    color: Color.fromRGBO(117, 117, 117, 1),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ] else ...[
                            const Text(
                              'درباره من',
                              style: TextStyle(
                                fontFamily: MAIN_FONT_FAMILY,
                                color: Color.fromRGBO(117, 117, 117, 1),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ],
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: SvgPicture.asset(
                        'assets/images/user-square_vitrin.svg'),
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
          controller: _textController,
          maxLength: _maxChars, // محدودیت به ۱۸۰ کاراکتر
          maxLines: 5,
          decoration: InputDecoration(
            hintText: 'تایپ کنید',
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
            counterText: "", // حذف شمارنده پیش‌فرض زیر TextField
          ),
        ),
      ),
    );
  }
}
