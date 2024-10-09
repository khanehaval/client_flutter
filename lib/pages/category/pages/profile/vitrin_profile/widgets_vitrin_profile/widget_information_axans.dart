import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/widgets_vitrin_profile/widget_information_axans/widget_address_axans.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/widgets_vitrin_profile/widget_information_axans/widget_city_mahale.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/widgets_vitrin_profile/widget_information_axans/widget_code_posti.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/widgets_vitrin_profile/widget_information_axans/widget_name_family.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/widgets_vitrin_profile/widget_information_axans/widget_phone_number_axans.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/widgets_vitrin_profile/widget_information_axans/widgetr_upload_photo_id.dart';
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
    return const Column(
      children: [
        SizedBox(
          height: 20,
        ),
        WidgetNameFamily(),
        SizedBox(
          height: 20,
        ),
        WidgetrUploadPhotoId(),
        SizedBox(
          height: 20,
        ),
        WidgetAddressAxans(),
        SizedBox(
          height: 20,
        ),
        WidgetCodePosti(),
        SizedBox(
          height: 20,
        ),
        WidgetPhoneNumberAxans(),
        SizedBox(
          height: 20,
        ),
        WidgetCityMahale(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
