import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class WidgetInformationAxans extends StatefulWidget {
  @override
  _WidgetInformationAxansState createState() => _WidgetInformationAxansState();
}

class _WidgetInformationAxansState extends State<WidgetInformationAxans> {
  final _About_me_1 = false.obs; // وضعیت باز یا بسته بودن باکس
  final RxBool _isTyping = false.obs; // وضعیت تایپ کردن
  final TextEditingController _textController =
      TextEditingController(); // کنترلر برای TextField
  final RxString _aboutMeText =
      'اطلاعات آژانس'.obs; // متن نمایش داده شده در جای "درباره من"
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
          height: _About_me_1.isTrue
              ? 720
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
                              'اطلاعات آژانس',
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
                            'اطلاعات آژانس',
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
                    padding: const EdgeInsets.only(right: 16),
                    child: SvgPicture.asset('assets/images/personalcard.svg'),
                  ),
                ],
              ),
              if (_About_me_1.isTrue)
                Column(children: [
                  informationAxans(context),
                ])
            ],
          ),
        ),
      ),
    );
  }

  Widget informationAxans(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Container(
            width: double.infinity,
            height: 85,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 3,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'نام و نام خانوادگی صاحب جواز',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color.fromRGBO(48, 48, 48, 1),
                    fontSize: 12,
                    fontFamily: MAIN_FONT_FAMILY, // تغییر به فونت مورد نظر
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: 340,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.5,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFE2E2E2),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: 137,
                  child: const TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                      isDense: true,
                      border: InputBorder.none,
                      hintText: 'وارد کنید',
                      hintStyle: TextStyle(
                        fontSize: 11,
                        color: Color(0xFF626262),
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xFF626262),
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Container(
            width: double.infinity,
            height: 85,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5), // یکپارچه کردن گوشه‌ها
              boxShadow: const [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 3,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        'آپلود تصویر جواز کسب',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(48, 48, 48, 1),
                          fontSize: 11,
                          fontFamily: MAIN_FONT_FAMILY,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Expanded(
                        child: TextField(
                          readOnly: true,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            hintText: 'انتخاب کنید',
                            hintStyle: const TextStyle(
                                fontSize: 10,
                                color: Color(0xFF626262),
                                fontFamily: MAIN_FONT_FAMILY,
                                height: 6),
                            prefixIcon: Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 30),
                              child: SvgPicture.asset(
                                'assets/images/Del.svg',
                                width: 20,
                              ),
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 11,
                            color: Color(0xFF626262),
                            fontFamily: MAIN_FONT_FAMILY,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'کد ملی',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color.fromRGBO(48, 48, 48, 1),
                          fontSize: 12,
                          fontFamily: MAIN_FONT_FAMILY,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Divider(
                        color: Color(0xFFE2E2E2),
                        height: 1,
                        thickness: 1,
                        indent: 50,
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: 137,
                        child: const TextField(
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            hintText: 'وارد کنید',
                            hintStyle: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF626262),
                              fontFamily: MAIN_FONT_FAMILY,
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xFF626262),
                            fontFamily: MAIN_FONT_FAMILY,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Container(
            width: double.infinity,
            height: 85,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 3,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'آدرس محل آژانس',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color.fromRGBO(48, 48, 48, 1),
                    fontSize: 12,
                    fontFamily: MAIN_FONT_FAMILY, // تغییر به فونت مورد نظر
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: 340,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.5,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFE2E2E2),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: 137,
                  child: const TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                      isDense: true,
                      border: InputBorder.none,
                      hintText: 'وارد کنید',
                      hintStyle: TextStyle(
                        fontSize: 11,
                        color: Color(0xFF626262),
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xFF626262),
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Container(
            width: double.infinity,
            height: 85,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 3,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'کد پستی',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color.fromRGBO(48, 48, 48, 1),
                    fontSize: 12,
                    fontFamily: MAIN_FONT_FAMILY, // تغییر به فونت مورد نظر
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: 340,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.5,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFE2E2E2),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: 137,
                  child: const TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                      isDense: true,
                      border: InputBorder.none,
                      hintText: 'وارد کنید',
                      hintStyle: TextStyle(
                        fontSize: 11,
                        color: Color(0xFF626262),
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xFF626262),
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Container(
            width: double.infinity,
            height: 85,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 3,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'شماره تلفن همراه آژانس',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color.fromRGBO(48, 48, 48, 1),
                    fontSize: 12,
                    fontFamily: MAIN_FONT_FAMILY, // تغییر به فونت مورد نظر
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: 340,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.5,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFE2E2E2),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: 137,
                  child: const TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                      isDense: true,
                      border: InputBorder.none,
                      hintText: 'وارد کنید',
                      hintStyle: TextStyle(
                        fontSize: 11,
                        color: Color(0xFF626262),
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xFF626262),
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: Get.width / 2.7,
              height: 80,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 3,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'محدوده فعالیت',
                          style: TextStyle(
                            color: Color.fromRGBO(48, 48, 48, 1),
                            fontSize: 12,
                            fontFamily: MAIN_FONT_FAMILY,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(
                        'assets/images/mahdodeh_activeted_profile.svg',
                        width: 24,
                        height: 24,
                      ),
                      const Text(
                        'انتخاب محدوده',
                        style: TextStyle(
                          color: Color(0xFFA5A5A5),
                          fontSize: 10,
                          fontFamily: MAIN_FONT_FAMILY,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: Get.width / 2.7,
              height: 80,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 3,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'شهر محل فعالیت',
                          style: TextStyle(
                            color: Color.fromRGBO(48, 48, 48, 1),
                            fontSize: 12,
                            fontFamily: MAIN_FONT_FAMILY,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(
                        'assets/images/location_profile.svg',
                        width: 24,
                        height: 24,
                      ),
                      const Text(
                        'انتخاب شهر',
                        style: TextStyle(
                          color: Color(0xFFA5A5A5),
                          fontSize: 10,
                          fontFamily: MAIN_FONT_FAMILY,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
