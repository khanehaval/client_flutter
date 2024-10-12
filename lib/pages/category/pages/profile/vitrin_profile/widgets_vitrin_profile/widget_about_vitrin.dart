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
                  // آیکون چک یا ویرایش
                  IconButton(
                    icon: _isChecked.value
                        ? SvgPicture.asset(
                            'assets/images/edit and ok.svg', // آیکون ویرایش
                          ) // آیکون چک
                        : (_isTyping.value
                            ? SvgPicture.asset(
                                'assets/images/check_icon.svg') // آیکون چک
                            : SvgPicture.asset(
                                _isExpanded.value
                                    ? 'assets/images/=.svg'
                                    : 'assets/images/Arrow_list_agency.svg',
                                width: _isExpanded.value ? 25 : 11,
                                height: _isExpanded.value ? 10 : 14,
                              )),
                    onPressed: () {
                      if (_isTyping.value) {
                        // ذخیره متن تایپ شده
                        _typedText.value = _textController.text;
                        _isTyping.value = false; // ریست وضعیت تایپ
                        _isChecked.value = true; // نمایش آیکون چک
                        _isExpanded.value = false; // بستن باکس
                      } else {
                        // باز یا بسته کردن باکس
                        _isExpanded.value = !_isExpanded.value;
                        _isChecked.value = false; // ریست آیکون چک
                      }
                    },
                  ),
                  // متن
                  Expanded(
                    child: Row(
                      mainAxisAlignment: _isChecked.value
                          ? MainAxisAlignment.center
                          : MainAxisAlignment.center,
                      children: [
                        if (_isChecked.value) ...[
                          // نمایش متن تایپ شده
                          Container(
                            constraints:
                                BoxConstraints(maxWidth: 150), // عرض باکس
                            child: Text(
                              _typedText.value, // نمایش متن وارد شده
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
                          // نمایش متن "درباره من" در حالت پیش‌فرض
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
          style: const TextStyle(
            fontFamily: MAIN_FONT_FAMILY_LIGHT,
          ),
          controller: _textController,
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
          ),
        ),
      ),
    );
  }
}
