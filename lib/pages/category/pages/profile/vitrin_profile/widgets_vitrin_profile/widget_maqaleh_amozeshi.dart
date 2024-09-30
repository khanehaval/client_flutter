import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class WidgetMaqalehAmozeshi extends StatefulWidget {
  @override
  _WidgetMaqalehAmozeshiState createState() => _WidgetMaqalehAmozeshiState();
}

class _WidgetMaqalehAmozeshiState extends State<WidgetMaqalehAmozeshi> {
  final RxBool _About_me_1 = false.obs; // وضعیت باز یا بسته بودن باکس
  final RxBool _isTyping = false.obs; // وضعیت تایپ کردن
  final TextEditingController _textController =
      TextEditingController(); // کنترلر برای TextField
  final RxString _aboutMeText =
      'مقاله آموزشی  (2/3)'.obs; // متن نمایش داده شده در جای "درباره من"
  final RxBool _isChecked = false.obs; // وضعیت نشان دادن آیکون چک

  @override
  void initState() {
    super.initState();

    // لیسنر برای تشخیص شروع تایپ
    _textController.addListener(() {
      _isTyping.value = _textController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        width: 343,
        height: _About_me_1.value
            ? 130
            : 50, // تغییر ارتفاع باکس بر اساس باز یا بسته بودن
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
                // آیکون چک
                IconButton(
                  icon: _isChecked.value
                      ? SvgPicture.asset(
                          'assets/images/check_icon.svg', // آیکون تیک
                        )
                      : (_isTyping.value
                          ? SvgPicture.asset(
                              'assets/images/check_icon.svg', // آیکون تیک وقتی تایپ شده
                            )
                          : SvgPicture.asset(
                              _About_me_1.value
                                  ? 'assets/images/edit and ok.svg'
                                  : 'assets/images/Arrow_list_agency.svg',
                              width: _About_me_1.value
                                  ? 30
                                  : 11, // سایز بزرگتر برای edit and ok
                              height: _About_me_1.value
                                  ? 25
                                  : 14, // سایز بزرگتر برای edit and ok
                            )),
                  onPressed: () {
                    if (_isTyping.value) {
                      // وقتی کاربر روی آیکون چک کلیک کرد و تایپ کرده بود، متن را ذخیره کن
                      _aboutMeText.value = _textController.text;
                      _isTyping.value = false; // ریست وضعیت تایپ
                      _isChecked.value = true; // نمایش آیکون چک
                      _About_me_1.value = false; // بستن باکس
                    } else {
                      // باز یا بسته کردن باکس
                      _About_me_1.value = !_About_me_1.value;
                      _isChecked.value = false; // ریست آیکون چک
                    }
                  },
                ),
                // چیدمان متن
                Expanded(
                  child: Row(
                    mainAxisAlignment: _isChecked.value
                        ? MainAxisAlignment.spaceBetween
                        : MainAxisAlignment.center,
                    children: [
                      // نمایش متن تایپ شده در سمت چپ در حالت تایید
                      if (_isChecked.value) ...[
                        Text(
                          _aboutMeText.value, // نمایش متن وارد شده توسط کاربر
                          style: const TextStyle(
                            fontFamily: MAIN_FONT_FAMILY,
                            color: Color.fromRGBO(
                                99, 99, 99, 1), // رنگ سیاه برای متن وارد شده
                            fontSize: 12,
                          ),
                        ),
                      ],
                      // متن "درباره من" در سمت راست در حالت تایید
                      if (_isChecked.value) ...[
                        const Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Text(
                            'مقاله آموزشی  (2/3)',
                            style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY,
                              color: Color.fromRGBO(
                                  99, 99, 99, 1), // رنگ متن "درباره من"
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ] else ...[
                        // نمایش متن "درباره من" در وسط در حالت پیش‌فرض
                        const Text(
                          'مقاله آموزشی  (2/3)',
                          style: TextStyle(
                            fontFamily: MAIN_FONT_FAMILY,
                            color: Color.fromRGBO(166, 166, 166, 1),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: SvgPicture.asset('assets/images/book.svg'),
                ),
              ],
            ),
            if (_About_me_1.value) buildMahaleh(context),
          ],
        ),
      ),
    );
  }

  Widget buildMahaleh(BuildContext context) {
    return Container(
      height: 41,
      width: MediaQuery.of(context).size.width / 1.23,
      child: TextField(
        style: const TextStyle(
          fontFamily: MAIN_FONT_FAMILY_MEDIUM,
          color: Color.fromRGBO(99, 99, 99, 1),
        ),
        controller: _textController,
        textAlign: TextAlign.right,
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
        ),
      ),
    );
  }
}
