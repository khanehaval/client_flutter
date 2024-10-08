import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/widget_Colleagues_profile/Widget_Switchitems_location_management_ad.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class WidgetExpertiseAndSkill extends StatefulWidget {
  @override
  _WidgetExpertiseAndSkillState createState() =>
      _WidgetExpertiseAndSkillState();
}

class _WidgetExpertiseAndSkillState extends State<WidgetExpertiseAndSkill> {
  final RxBool _About_me_1 = false.obs; // وضعیت باز یا بسته بودن باکس
  final RxBool _isTyping = false.obs; // وضعیت تایپ کردن
  final RxString selectedText = ''.obs; // متن انتخاب شده
  final RxBool _isDeleted = false.obs; // وضعیت نشان دادن آیکون delete
  final TextEditingController _textController =
      TextEditingController(); // کنترلر برای TextField
  final RxString _aboutMeText =
      'تخصص و مهارت'.obs; // متن نمایش داده شده در جای "درباره من"
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
    return Obx(() => Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Container(
            width: double.infinity,
            height: _About_me_1.value
                ? 350
                : 50, // تغییر ارتفاع باکس بر اساس باز یا بسته بودن
            decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.start, // چسباندن آیتم‌ها به بالا
              crossAxisAlignment:
                  CrossAxisAlignment.start, // چسباندن آیتم‌ها به چپ
              mainAxisSize: MainAxisSize.min, // تنظیم ارتفاع ستون بر اساس محتوا
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
                              _aboutMeText
                                  .value, // نمایش متن وارد شده توسط کاربر
                              style: const TextStyle(
                                fontFamily: MAIN_FONT_FAMILY,
                                color: Color.fromRGBO(99, 99, 99,
                                    1), // رنگ سیاه برای متن وارد شده
                                fontSize: 12,
                              ),
                            ),
                          ],
                          // متن "تخصص و مهارت" در سمت راست در حالت تایید
                          if (_isChecked.value) ...[
                            const Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Text(
                                'تخصص و مهارت',
                                style: TextStyle(
                                  fontFamily: MAIN_FONT_FAMILY,
                                  color: Color.fromRGBO(
                                      99, 99, 99, 1), // رنگ متن "درباره من"
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ] else ...[
                            // نمایش متن "تخصص و مهارت" در وسط در حالت پیش‌فرض
                            const Text(
                              'تخصص و مهارت',
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
                      child: SvgPicture.asset(
                          'assets/images/Experience_profile_vitrin.svg'),
                    ),
                  ],
                ),
                if (_About_me_1.value)
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      buildExpertiseAndSkill(context),
                    ],
                  ),
              ],
            ),
          ),
        ));
  }

  Widget buildExpertiseAndSkill(BuildContext context) {
    return WidgetSwitchitemsLocationManagementAd(
      onSelected: (selectedItems) {
        if (selectedItems.isNotEmpty) {
          selectedText.value = selectedItems.first; // ذخیره متن انتخاب شده
          _isChecked.value = true; // نمایش آیکون چک
          _isDeleted.value = false; // اطمینان از عدم نمایش delete در این حالت
        } else {}
      },
      items: const [
        "مشارکت در ساخت",
        "خرید و فروش",
        "خرید و فروش پروژه های انبوه",
        "فروش اقساطی",
      ],
    );
  }
}
