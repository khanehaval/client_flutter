import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class WidgetUsersConsultants extends StatefulWidget {
  @override
  _WidgetUsersConsultantsState createState() => _WidgetUsersConsultantsState();
}

class _WidgetUsersConsultantsState extends State<WidgetUsersConsultants> {
  final RxBool _About_me_1 = false.obs; // وضعیت باز یا بسته بودن باکس
  final RxBool _isTyping = false.obs; // وضعیت تایپ کردن
  final TextEditingController _textController =
      TextEditingController(); // کنترلر برای TextField
  final RxString _aboutMeText =
      'مشاوران'.obs; // متن نمایش داده شده در جای "درباره من"
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
              ? 500
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
                                    ? 'assets/images/=gold.svg'
                                    : 'assets/images/Arrow_list_agency.svg',
                                width: _About_me_1.value
                                    ? 30
                                    : 11, // سایز بزرگتر برای edit and ok
                                height: _About_me_1.value
                                    ? 10
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
                              'نام آژانس',
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
                            'مشاوران',
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
                    padding: const EdgeInsets.only(right: 15),
                    child:
                        SvgPicture.asset('assets/images/user-counstlants.svg'),
                  ),
                ],
              ),
              if (_About_me_1.value)
                Column(
                  children: [
                    buildMahaleh(context),
                    buildMahaleh2(context),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: Get.width / 1.3,
                      height: 60,
                      child: DottedBorder(
                        borderType: BorderType.RRect,
                        color: const Color.fromRGBO(166, 166, 166, 1),
                        strokeWidth: 0.5,
                        radius: const Radius.circular(10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'اضافه کردن مشاور',
                              style: TextStyle(
                                  fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Center(
                              child: Icon(
                                Icons.add_circle_outline,
                                size: 30,
                                color: Color.fromRGBO(41, 111, 226, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMahaleh(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Transform(
              transform: Matrix4.identity()
                ..translate(20.0, 135.0)
                ..rotateZ(-1.57),
              child: Container(
                width: 100,
                height: 45,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFF2F2F2)),
                    borderRadius: BorderRadius.circular(35),
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
                  children: [
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              'assets/images/Frame refresh.svg',
                            ),
                            const SizedBox(width: 30),
                            SvgPicture.asset(
                              'assets/images/new_remove_profile.svg',
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 2,
                                    offset: Offset(0, 1),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 250,
              height: 85,
              margin: const EdgeInsets.symmetric(
                  horizontal: 20), // فاصله از کناره‌ها
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 3,
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                  )
                ],
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Stack(
                alignment: Alignment.center, // تراز کانتینر به مرکز
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, bottom: 10),
                            child: SvgPicture.asset(
                                'assets/images/vitrinaxans.svg'),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 5.0, bottom: 10),
                            child: Text(
                              'ویترین',
                              style: TextStyle(
                                fontFamily: MAIN_FONT_FAMILY,
                                fontSize: 10,
                              ),
                            ),
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10.0, right: 10),
                                child: SvgPicture.asset(
                                  "assets/images/consultant_list_moshaver.svg",
                                  width: 55,
                                  height: 55,
                                ),
                              ),
                              Positioned(
                                left:
                                    84, // تنظیم موقعیت برای نزدیکی بیشتر به داخل باکس
                                top: 12, // کمی بالاتر از حالت قبلی
                                child: Image.asset(
                                  'assets/images/Ellipse 222.png',
                                  width: 45,
                                  height: 45,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 15, // فاصله از پایین
                    left: 25, // فاصله از چپ
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/locationaxans.svg',
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Text(
                          'تـهـران',
                          style: TextStyle(
                            fontFamily: MAIN_FONT_FAMILY,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget buildMahaleh2(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Transform(
              transform: Matrix4.identity()
                ..translate(20.0, 135.0)
                ..rotateZ(-1.57),
              child: Container(
                width: 100,
                height: 45,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFF2F2F2)),
                    borderRadius: BorderRadius.circular(35),
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
                  children: [
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              'assets/images/Frame refresh.svg',
                            ),
                            const SizedBox(width: 30),
                            SvgPicture.asset(
                              'assets/images/new_remove_profile.svg',
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 2,
                                    offset: Offset(0, 1),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 250,
              height: 85,
              margin: const EdgeInsets.symmetric(
                  horizontal: 20), // فاصله از کناره‌ها
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 3,
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                  )
                ],
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Stack(
                alignment: Alignment.center, // تراز کانتینر به مرکز
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, bottom: 10),
                            child: SvgPicture.asset(
                                'assets/images/vitrinaxans.svg'),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 5.0, bottom: 10),
                            child: Text(
                              'ویترین',
                              style: TextStyle(
                                fontFamily: MAIN_FONT_FAMILY,
                                fontSize: 10,
                              ),
                            ),
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10.0, right: 10),
                                child: SvgPicture.asset(
                                  "assets/images/consultant_list_moshaver.svg",
                                  width: 55,
                                  height: 55,
                                ),
                              ),
                              Positioned(
                                left:
                                    84, // تنظیم موقعیت برای نزدیکی بیشتر به داخل باکس
                                top: 12, // کمی بالاتر از حالت قبلی
                                child: Image.asset(
                                  'assets/images/Ellipse 222.png',
                                  width: 45,
                                  height: 45,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 15, // فاصله از پایین
                    left: 25, // فاصله از چپ
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/locationaxans.svg',
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Text(
                          'تـهـران',
                          style: TextStyle(
                            fontFamily: MAIN_FONT_FAMILY,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
