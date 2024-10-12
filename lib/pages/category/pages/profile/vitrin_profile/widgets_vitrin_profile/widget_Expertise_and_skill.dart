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
  final RxBool _isArrowDown = true.obs; // شروع با آیکون فلش پایین
  final RxBool _isEditable = false.obs; // وضعیت ویرایش

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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: double.infinity,
            height: _About_me_1.value ? 380 : 50, // تغییر ارتفاع باکس
            decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // چسباندن آیتم‌ها به بالا
              crossAxisAlignment:
                  CrossAxisAlignment.start, // چسباندن آیتم‌ها به چپ
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // مدیریت آیکون‌ها: فلش پایین، فلش بالا، چک، ویرایش
                    IconButton(
                      icon: _isChecked.value
                          ? (_isEditable.value
                              ? SvgPicture.asset(
                                  'assets/images/edit and ok.svg', // آیکون ویرایش
                                  width: 24, // سایز آیکون
                                  height: 24, // سایز آیکون
                                )
                              : SvgPicture.asset(
                                  'assets/images/check_icon.svg', // آیکون چک
                                  width: 24, // سایز آیکون
                                  height: 24, // سایز آیکون
                                ))
                          : (_isArrowDown.value
                              ? SvgPicture.asset(
                                  'assets/images/Arrow_list_agency.svg',
                                  width: 15, // سایز آیکون فلش پایین
                                  height: 15,
                                )
                              : SvgPicture.asset(
                                  'assets/images/=.svg', // آیکون فلش بالا
                                  width: 15, // سایز آیکون فلش بالا
                                  height: 15,
                                )),
                      onPressed: () {
                        if (_isTyping.value) {
                          // وقتی متن وارد شده است
                          _aboutMeText.value = _textController.text;
                          _isTyping.value = false; // ریست وضعیت تایپ
                          _isChecked.value = true; // نمایش آیکون چک
                          _About_me_1.value = false; // بستن باکس
                          _isEditable.value = true; // فعال کردن حالت ویرایش
                        } else {
                          if (selectedText.value.isNotEmpty) {
                            // وقتی آیتمی انتخاب شده باشد
                            _aboutMeText.value =
                                selectedText.value; // ذخیره متن انتخابی
                            _isChecked.value = true; // نمایش آیکون چک
                            _About_me_1.value = false; // بستن باکس
                            _isEditable.value = true; // فعال کردن حالت ویرایش
                          } else {
                            _isArrowDown.value =
                                !_isArrowDown.value; // تغییر وضعیت آیکون فلش
                            _About_me_1.value =
                                !_About_me_1.value; // باز یا بسته کردن باکس
                            _isChecked.value = false; // ریست آیکون چک
                          }
                        }
                      },
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: _isChecked.value
                            ? MainAxisAlignment.spaceAround
                            : MainAxisAlignment.center,
                        children: [
                          if (_isChecked.value) ...[
                            Text(
                              selectedText.value.isNotEmpty
                                  ? selectedText.value
                                  : _aboutMeText.value,
                              style: const TextStyle(
                                fontFamily: MAIN_FONT_FAMILY,
                                color: Color.fromRGBO(15, 15, 15,
                                    1), // رنگ سیاه برای متن وارد شده
                                fontSize: 11,
                              ),
                            ),
                            const Text(
                              'تخصص و مهارت',
                              style: TextStyle(
                                fontFamily: MAIN_FONT_FAMILY,
                                color: Color.fromRGBO(99, 99, 99, 1),
                                fontSize: 11,
                              ),
                            ),
                          ] else ...[
                            const Text(
                              'تخصص و مهارت',
                              style: TextStyle(
                                fontFamily: MAIN_FONT_FAMILY,
                                color: Color.fromRGBO(117, 117, 117, 1),
                                fontSize: 11,
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
                if (_About_me_1.value) ...[
                  const SizedBox(height: 10),
                  buildExpertiseAndSkill(context),
                ],
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
