import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

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
  final RxString _selectedImagePath = ''.obs; // مسیر تصویر انتخاب‌شده

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
              ? 240
              : 50, // تغییر ارتفاع باکس بر اساس باز یا بسته بودن
          decoration: BoxDecoration(
            color: const Color.fromRGBO(250, 250, 250, 1),
            border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              buildHeader(),
              if (_About_me_1.value)
                Column(
                  children: [
                    const SizedBox(height: 20),
                    buildPhotoProfileVitrin(context),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }

  // ساخت هدر
  Widget buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
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
                      color:
                          Color.fromRGBO(99, 99, 99, 1), // رنگ متن "درباره من"
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
          child: SvgPicture.asset('assets/images/user_vitrin.svg'),
        ),
      ],
    );
  }

  Widget buildPhotoProfileVitrin(BuildContext context) {
    return Container(
      width: Get.width / 1.30,
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
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () async {
                await _pickAndCropImage(); // انتخاب و برش تصویر
              },
              child: Obx(
                () => _selectedImagePath.value.isEmpty
                    ? DottedBorder(
                        borderType: BorderType.RRect,
                        color: Colors.black26,
                        strokeWidth: 2,
                        radius: const Radius.circular(35),
                        child: const SizedBox(
                          height: 31,
                          width: 80,
                          child: Center(
                            child: Icon(Icons.add,
                                size: 30, color: Colors.black26),
                          ),
                        ),
                      )
                    : Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromRGBO(243, 243, 243, 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Container(
                                width: 110,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  borderRadius:
                                      BorderRadius.circular(20), // رادیوس 20
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black
                                          .withOpacity(0.1), // رنگ سایه
                                      blurRadius: 5, // شدت محو شدن سایه
                                      offset: Offset(0, 2), // موقعیت سایه
                                    ),
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/Frame refresh.svg',
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        // وقتی روی آیکون حذف کلیک شود، مسیر تصویر به رشته خالی تغییر می‌کند
                                        _selectedImagePath.value = '';
                                      },
                                      child: SvgPicture.asset(
                                        'assets/images/new_remove_profile.svg',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(
                              width: 10), // فاصله بین کانتینر زرد و تصویر
                          ClipOval(
                            child: Image.file(
                              File(_selectedImagePath.value),
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
              ),
            ),
            const SizedBox(width: 30), // فاصله بین تصویر و متن
            // نمایش متن فقط اگر تصویری انتخاب نشده باشد
            Obx(
              () => _selectedImagePath.value.isEmpty
                  ? const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'تصویر پس زمینه خود را انتخاب کنید\n',
                            style: TextStyle(
                              color: Color(0xFF626262),
                              fontSize: 10,
                              fontFamily: 'MAIN_FONT_FAMILY',
                            ),
                          ),
                          TextSpan(
                            text: 'فرمت JPEG - حداکثر 5MB',
                            style: TextStyle(
                              color: Color(0xFFA5A5A5),
                              fontSize: 8,
                              fontFamily: 'MAIN_FONT_FAMILY_LIGHT',
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    )
                  : Container(), // اگر تصویر انتخاب شده باشد، هیچ متنی نمایش داده نمی‌شود
            ),
          ],
        ),
      ),
    );
  }

  // متد انتخاب و برش تصویر
  Future<void> _pickAndCropImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      final croppedFile = await ImageCropper().cropImage(
        sourcePath: pickedFile.path,
        aspectRatioPresets: [
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9,
        ],
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: 'ادیت تصویر',
            toolbarColor: Colors.blue,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false,
          ),
          IOSUiSettings(
            title: 'ادیت تصویر',
          ),
        ],
      );

      if (croppedFile != null) {
        _selectedImagePath.value = croppedFile.path; // به روز رسانی مسیر تصویر
      }
    }
  }
}
