import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
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
    return Obx(
      () => Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Container(
          width: double.infinity,
          height: _isExpanded.value
              ? 280
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
                  // آیکون ها: چک، ویرایش، فلش پایین یا بالا
                  IconButton(
                    icon: _isChecked.value
                        ? SvgPicture.asset(
                            'assets/images/edit and ok.svg') // آیکون ویرایش
                        : (_isTyping
                                .value // نمایش آیکون چک وقتی در حال تایپ است
                            ? SvgPicture.asset(
                                'assets/images/check_icon.svg') // آیکون چک
                            : (_isExpanded.value
                                ? SvgPicture.asset(
                                    'assets/images/=.svg') // آیکون =
                                : SvgPicture.asset(
                                    'assets/images/Arrow_list_agency.svg', // آیکون فلش پایین
                                    width: 11,
                                    height: 14,
                                  ))),
                    onPressed: () {
                      if (_isTyping.value) {
                        // وقتی کاربر تایپ کرده و روی چک کلیک کرده
                        _typedText.value = _textController.text;
                        _isTyping.value = false;
                        _isChecked.value = true;
                        _isExpanded.value = false;
                        _isEditable.value = true; // فعال کردن حالت ویرایش
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
                          // نمایش متن با برش در صورت نیاز
                          Container(
                            constraints:
                                const BoxConstraints(maxWidth: 180), // عرض باکس
                            child: Text(
                              _typedText.value, // متن وارد شده
                              maxLines: 1, // حداکثر یک خط
                              overflow: TextOverflow
                                  .ellipsis, // نمایش ... در صورت اضافه بودن متن
                              style: const TextStyle(
                                fontFamily: MAIN_FONT_FAMILY,
                                color: Color.fromRGBO(99, 99, 99, 1),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ] else ...[
                          const Text(
                            'معرفی و اهداف',
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
            fontFamily: 'MAIN_FONT_FAMILY_LIGHT',
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
