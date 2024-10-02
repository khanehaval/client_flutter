import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class WidgetBackGroundVitrin extends StatefulWidget {
  @override
  _WidgetBackGroundVitrinState createState() => _WidgetBackGroundVitrinState();
}

class _WidgetBackGroundVitrinState extends State<WidgetBackGroundVitrin> {
  final RxBool _About_me_1 = false.obs; // وضعیت باز یا بسته بودن باکس
  final RxBool _isTyping = false.obs; // وضعیت تایپ کردن
  final TextEditingController _textController =
      TextEditingController(); // کنترلر برای TextField
  final RxString _aboutMeText =
      'تصویر پس زمینه'.obs; // متن نمایش داده شده در جای "درباره من"
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
            ? 300
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
                            'تصویر پس زمینه',
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
                          'تصویر پس زمینه',
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
                  child: SvgPicture.asset('assets/images/background_photo.svg'),
                ),
              ],
            ),
            if (_About_me_1.value)
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  buildBackGroundVitrin(context),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget buildBackGroundVitrin(BuildContext context) {
    return Container(
      width: 300,
      height: 140,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFB7B7B7)),
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x11000000),
            blurRadius: 3.40,
            offset: Offset(-1, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          DottedBorder(
            borderType: BorderType.RRect,
            color: Colors.black26,
            strokeWidth: 2,
            radius: const Radius.circular(35),
            child: const SizedBox(
              height: 31, // سایز متفاوت برای عکس اصلی
              width: 80, // سایز متفاوت برای عکس اصلی
              child: Center(
                child: Icon(Icons.add, size: 30, color: Colors.black26),
              ),
            ),
          ),
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'تصویر پروفایل خود را انتخاب کنید\n',
                  style: TextStyle(
                    color: Color(0xFF626262),
                    fontSize: 10,
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                ),
                TextSpan(
                  text: 'فرمت JPEG - حداکثر 5MB ',
                  style: TextStyle(
                    color: Color(0xFFA5A5A5),
                    fontSize: 8,
                    fontFamily: MAIN_FONT_FAMILY_LIGHT,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
