import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';

class WidgetPhoneNumberAxans extends StatelessWidget {
  const WidgetPhoneNumberAxans({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                fontSize: 13,
                fontFamily: MAIN_FONT_FAMILY, // تغییر به فونت مورد نظر
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 340,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.0,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFE2E2E2),
                  ),
                ),
              ),
            ),
            Container(
              width: 137,
              child: const TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  isDense: true,
                  border: InputBorder.none,
                  hintText: 'وارد کنید',
                  hintStyle: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF626262),
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                ),
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF626262),
                  fontFamily: MAIN_FONT_FAMILY,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
