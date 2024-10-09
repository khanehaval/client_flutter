import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';

class WidgetrUploadPhotoId extends StatelessWidget {
  const WidgetrUploadPhotoId({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                          padding: const EdgeInsets.only(top: 8.0, right: 30),
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
    );
  }
}
