import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class WidgetTheMainSlogan extends StatefulWidget {
  @override
  _WidgetTheMainSloganState createState() => _WidgetTheMainSloganState();
}

class _WidgetTheMainSloganState extends State<WidgetTheMainSlogan> {
  final RxBool _About_me_1 = false.obs; // وضعیت باز یا بسته بودن باکس
  final RxBool _isTyping = false.obs; // وضعیت تایپ کردن
  final TextEditingController _textController =
      TextEditingController(); // کنترلر برای TextField
  final RxString _aboutMeText =
      'شعار اصلی'.obs; // متن نمایش داده شده در جای "درباره من"
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
      () => Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Container(
          width: double.infinity,
          height: _About_me_1.value
              ? 150
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
                              'شعار اصلی',
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
                            'شعار اصلی',
                            style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY,
                              color: Color.fromRGBO(117, 117, 117, 1),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 17),
                    child:
                        SvgPicture.asset('assets/images/news_icon_profile.svg'),
                  ),
                ],
              ),
              if (_About_me_1.value) buildTheMainSlogan(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTheMainSlogan(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextField(
          style: const TextStyle(
            fontFamily: MAIN_FONT_FAMILY_LIGHT,
          ),
          focusNode: FocusNode(),
          maxLines: 1,
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
      ),
    );
  }
}
