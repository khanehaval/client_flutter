import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/date.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class WidgetFothornameBirthday extends StatefulWidget {
  WidgetFothornameBirthday({super.key});

  @override
  State<WidgetFothornameBirthday> createState() =>
      _WidgetFothornameBirthdayState();
}

class _WidgetFothornameBirthdayState extends State<WidgetFothornameBirthday> {
  final TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: Get.width / 2.4,
          height: 85,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
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
            children: [
              const Row(
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'تاریخ تولد  ',
                          style: TextStyle(
                            color: Color.fromRGBO(48, 48, 48, 1),
                            fontSize: 11,
                            fontFamily: MAIN_FONT_FAMILY,
                          ),
                        ),
                        TextSpan(
                          text: 'مثال (1368/01/01)',
                          style: TextStyle(
                            color: Color(0xFFA5A5A5),
                            fontSize: 8,
                            fontFamily: MAIN_FONT_FAMILY,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Container(
                width: 137,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFE2E2E2),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                  child: Container(
                      width: 140,
                      child: TextField(
                        controller:
                            _dateController, // Assign the controller to the TextField
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          isDense: true,
                          border: InputBorder.none,
                          hintText: 'وارد کنید',
                          hintStyle: const TextStyle(
                            fontSize: 12,
                            color: Color(0xFF626262),
                            fontFamily: MAIN_FONT_FAMILY,
                          ),
                          prefixIcon: Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 5.0, right: 30),
                              child: GestureDetector(
                                onTap: () {
                                  // Call the persianDataPicker when the calendar icon is tapped
                                  persianDataPicker((selectedDate) {
                                    setState(() {
                                      // Update the TextField with the selected date
                                      _dateController.text = selectedDate;
                                    });
                                  });
                                },
                                child: SvgPicture.asset(
                                  'assets/images/calender_birthday.svg',
                                  width: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 11,
                          color: Color(0xFF626262),
                          fontFamily: MAIN_FONT_FAMILY,
                        ),
                      )))
            ],
          ),
        ),
        Container(
          width: Get.width / 2.4,
          height: 85,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
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
                'نام پدر',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color.fromRGBO(48, 48, 48, 1),
                  fontSize: 13,
                  fontFamily: MAIN_FONT_FAMILY, // تغییر به فونت مورد نظر
                ),
              ),
              const SizedBox(height: 6),
              Container(
                width: 137,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0,
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
      ],
    );
  }
}