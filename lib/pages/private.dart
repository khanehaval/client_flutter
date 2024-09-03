import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/Advertisements.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/app_bar.dart';
import 'package:flutter_application_1/repo/account_repo.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';

class Private extends StatelessWidget {
  Private({super.key});
  final _nametextfield = TextEditingController();
  final _lastnametextfield = TextEditingController();
  final _nationalCode = TextEditingController();
  final _usernametextfield = TextEditingController();
  final _accountRepo = GetIt.I.get<AccountRepo>();
  final _buttonIsPressed = false.obs;

  final show = true.obs;
  final imagePath = ''.obs;

  Future<void> pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      imagePath.value = pickedFile.path;
    }
  }

  Future<void> _personal() async {
    if (_nametextfield.text.isEmpty ||
        _lastnametextfield.text.isEmpty ||
        _usernametextfield.text.isEmpty ||
        imagePath.value.isEmpty ||
        _nationalCode.text.isEmpty) {
      Fluttertoast.showToast(
        msg: "لطفا همه فیلدها را پر کنید",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return;
    }

    _buttonIsPressed.value = true;
    final success = await _accountRepo.personal(
        firstName: _nametextfield.text,
        lastName: _lastnametextfield.text,
        userName: _usernametextfield.text,
        nationalCardImg: imagePath.value,
        nationalCode: _nationalCode.text);
    _buttonIsPressed.value = false;
    if (success) {
      Fluttertoast.showToast(
        msg: "اطلاعات با موفقیت ارسال شد",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      Get.to(() => Advertisements());
    } else {
      Fluttertoast.showToast(
        msg: "خطا در ارسال اطلاعات",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }

  void deleteImage() {
    imagePath.value = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/images/logo-farsi.svg',
                    width: MediaQuery.of(context).size.width - 220,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "پنل شخصی",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: MAIN_FONT_FAMILY,
                          color: Color.fromRGBO(
                            48,
                            48,
                            48,
                            1,
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 48,
                        width: _getTextFieldWidth(context),
                        child: TextField(
                          controller: _lastnametextfield,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: '* نام خانوادگی ',
                            hintStyle: const TextStyle(
                              fontSize: 13,
                              color: Color(0xFFA6A6A6),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(99, 99, 99, 1),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(99, 99, 99, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 48,
                        width: _getTextFieldWidth(context),
                        child: TextField(
                          controller: _nametextfield,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: ' *نام ',
                            hintStyle: const TextStyle(
                              color: Color(0xFFA6A6A6),
                              fontSize: 13,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(99, 99, 99, 1),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(99, 99, 99, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 48,
                        width: _getTextFieldWidth(context),
                        child: Obx(
                          () => Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                colors: GRADIANT_COLOR1,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1.2),
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: GRADIANT_COLOR,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        imagePath.isEmpty ? Colors.white : null,
                                  ),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          imagePath.isEmpty
                                              ? CupertinoIcons.add_circled
                                              : CupertinoIcons.clear_circled,
                                        ),
                                        onPressed: () {
                                          if (imagePath.isEmpty) {
                                            pickImage();
                                          } else {
                                            deleteImage();
                                          }
                                        },
                                      ),
                                      if (imagePath.isEmpty)
                                        const Padding(
                                          padding: EdgeInsets.only(left: 12.0),
                                          child: Text(
                                            '* تصویر کارت ملی',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFFA6A6A6),
                                            ),
                                          ),
                                        )
                                      else
                                        Text(_getImageName()),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 48,
                        width: _getTextFieldWidth(context),
                        child: TextField(
                          controller: _nationalCode,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: '* کد ملی ',
                            hintStyle: const TextStyle(
                              color: Color(0xFFA6A6A6),
                              fontSize: 13,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(99, 99, 99, 1),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(99, 99, 99, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 360,
                    height: 41,
                    child: TextField(
                      controller: _usernametextfield,
                      scrollPadding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                      ),
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: ' * نام کاربری  ( به انگلیسی) ',
                        hintStyle: const TextStyle(
                          color: Color(0xFFA5A5A5),
                          fontSize: 12,
                          fontFamily: 'Iran Sans',
                          fontWeight: FontWeight.w400,
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
                ],
              ),
            ),
          ),
          Obx(
            () => show.value
                ? Padding(
                    padding: const EdgeInsets.all(20),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: 160,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: _personal,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.zero,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Ink(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.25),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: const Offset(0, 1)),
                                ],
                                gradient: GetGradient(),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                child: const Text(
                                  'تایید',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: MAIN_FONT_FAMILY,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }

  double _getTextFieldWidth(BuildContext context) =>
      (MediaQuery.of(context).size.width / 2.05) * 0.9;

  String _getImageName() {
    var s = imagePath.value.split("/").last;
    if (s.length > 10) {
      var i = s.length - 10;
      s = s.substring(i, s.length);
    }
    return s;
  }
}

LinearGradient GetGradient() => const LinearGradient(
      colors: [
        Color.fromARGB(255, 95, 173, 237),
        Color.fromARGB(126, 118, 238, 146),
      ],
    );
