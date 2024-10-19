import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';

class WidgetResultSerch extends StatelessWidget {
  const WidgetResultSerch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20.0, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'قیمت (تومان)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 9,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'متراژ از - تا',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 9,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'شهر / محله',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 9,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'نوع ملک',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 9,
                        fontFamily: MAIN_FONT_FAMILY,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'ردیف',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 9,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(
          indent: 25,
          endIndent: 30,
          color: Color.fromRGBO(183, 183, 183, 1),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20.0, right: 10),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  '12.000.000',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF303030),
                    fontSize: 8,
                    fontFamily: MAIN_FONT_FAMILY_UltraLight,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  '80 - 120',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF303030),
                    fontSize: 8,
                    fontFamily: MAIN_FONT_FAMILY_UltraLight,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  'تهران / جنت آباد',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF303030),
                    fontSize: 8,
                    fontFamily: MAIN_FONT_FAMILY_UltraLight,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  'آپارتمان',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF303030),
                    fontSize: 8,
                    fontFamily: MAIN_FONT_FAMILY_UltraLight,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  '1',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF303030),
                    fontSize: 8,
                    fontFamily: MAIN_FONT_FAMILY_UltraLight,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/delete_icon_rington.svg',
                    width: 18,
                    height: 18,
                  ),
                  const SizedBox(width: 30),
                  SvgPicture.asset(
                    'assets/images/edit.svg',
                    width: 18,
                    height: 18,
                  ),
                  const SizedBox(width: 30),
                  SvgPicture.asset(
                    'assets/images/see_icon_rington.svg',
                    width: 18,
                    height: 18,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'مورد پیدا شده',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF626262),
                      fontSize: 12,
                      fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const ShapeDecoration(
                      color: Color(0xFF00BD61),
                      shape: OvalBorder(),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '0',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontFamily: MAIN_FONT_FAMILY,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    ': وضعیت',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF626262),
                      fontSize: 12,
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
