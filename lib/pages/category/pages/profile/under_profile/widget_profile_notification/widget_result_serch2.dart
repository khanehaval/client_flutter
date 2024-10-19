import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_inner_shadow/flutter_inner_shadow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WidgetResultSerch2 extends StatefulWidget {
  WidgetResultSerch2({super.key});

  @override
  _WidgetResultSerch2State createState() => _WidgetResultSerch2State();
}

class _WidgetResultSerch2State extends State<WidgetResultSerch2> {
  bool _isContainerVisible = false; // To toggle container visibility
  bool _isIconSelected = false; // To track if the icon is selected

  void _toggleContainerVisibility() {
    setState(() {
      _isContainerVisible = !_isContainerVisible;
      _isIconSelected = !_isIconSelected; // Toggle icon selection state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Divider(
          indent: 40,
          endIndent: 45,
          color: Color.fromRGBO(183, 183, 183, 1),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20.0, right: 10),
          child: Row(
            children: [
              // Your text widgets here
              Expanded(
                child: Text(
                  '18.000.000',
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
                  '2',
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
              // Icons Row
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
                  GestureDetector(
                    onTap: _toggleContainerVisibility, // Detect tap on icon
                    child: SvgPicture.asset(
                      _isIconSelected
                          ? 'assets/images/see_icon_rington_green.svg' // Green icon if selected
                          : 'assets/images/see_icon_rington.svg', // Default icon
                      width: 18,
                      height: 18,
                    ),
                  )
                ],
              ),
              // Your other Row with status
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
                          '2',
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
        ),
        const SizedBox(height: 20),
        // The container that shows up on icon click
        if (_isContainerVisible) // Conditionally show container
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20),
            child: Container(
              width: double.infinity,
              height: 141,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: Get.width / 4,
                            height: 13,
                            child: Row(
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 0.50,
                                          color: Color(0xFFA6A6A6)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: const Text(
                                    'سیستان و بلوچستان',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF636363),
                                      fontSize: 8,
                                      fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 25,
                            height: 13,
                            child: Row(
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 0.50,
                                          color: Color(0xFFA6A6A6)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: const Text(
                                    'ویلا',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF636363),
                                      fontSize: 8,
                                      fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SvgPicture.asset(
                            "assets/images/total price.svg",
                            width: 40,
                            height: 18,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Row(
                          children: [
                            Container(
                              width: Get.width / 9,
                              height: 13,
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 0.50,
                                            color: Color(0xFFA6A6A6)),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    child: const Text(
                                      '2 اتاق',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF636363),
                                        fontSize: 8,
                                        fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: Get.width / 9,
                              height: 15,
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 0.50,
                                            color: Color(0xFFA6A6A6)),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    child: const Text(
                                      '300 متر',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF636363),
                                        fontSize: 8,
                                        fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            const Text(
                              '12.000.000.000',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: MAIN_FONT_FAMILY),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Stack(
                        // Allows content to go outside the container
                        children: [
                          Row(
                            children: [
                              InnerShadow(
                                shadows: [
                                  Shadow(
                                    color: Colors.black.withOpacity(0.15),
                                    blurRadius: 3,
                                    offset: const Offset(2, 2),
                                  ),
                                ],
                                child: Container(
                                  width: Get.width / 1.9,
                                  height: 54,
                                  decoration: ShapeDecoration(
                                    gradient: const LinearGradient(
                                      begin: Alignment(0.99, 0.10),
                                      end: Alignment(-0.99, -0.1),
                                      colors: [
                                        Color(0xFFF8F8F8),
                                        Color.fromARGB(255, 255, 253, 253),
                                      ],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                        width: 1,
                                        color: Color(0xFFE8E8E8),
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: SvgPicture.asset(
                                          'assets/images/delete.svg',
                                          width: 15,
                                          height: 15,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      const Text(
                                        'درخواست شـده',
                                        style: TextStyle(
                                            fontFamily: 'Aban Bold',
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 0 - 2,
                            right: 1,
                            child: SvgPicture.asset(
                              'assets/images/Icon_serch_notification.svg',
                              width: 57,
                              height: 52,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Ellipse 519.png',
                          width: 110,
                          height: 110,
                        ),
                      ]),
                ],
              ),
            ),
          ),
        const SizedBox(
          height: 10,
        ),
        if (_isContainerVisible) // Conditionally show container

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              height: 141,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: Get.width / 4,
                            height: 13,
                            child: Row(
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 0.50,
                                          color: Color(0xFFA6A6A6)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: const Text(
                                    'سیستان و بلوچستان',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF636363),
                                      fontSize: 8,
                                      fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 25,
                            height: 13,
                            child: Row(
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 0.50,
                                          color: Color(0xFFA6A6A6)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: const Text(
                                    'ویلا',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF636363),
                                      fontSize: 8,
                                      fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SvgPicture.asset(
                            "assets/images/total price.svg",
                            width: 40,
                            height: 18,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Row(
                          children: [
                            Container(
                              width: Get.width / 9,
                              height: 13,
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 0.50,
                                            color: Color(0xFFA6A6A6)),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    child: const Text(
                                      '2 اتاق',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF636363),
                                        fontSize: 8,
                                        fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: Get.width / 9,
                              height: 15,
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 0.50,
                                            color: Color(0xFFA6A6A6)),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    child: const Text(
                                      '300 متر',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF636363),
                                        fontSize: 8,
                                        fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            const Text(
                              '12.000.000.000',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: MAIN_FONT_FAMILY),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Stack(
                        // Allows content to go outside the container
                        children: [
                          Row(
                            children: [
                              InnerShadow(
                                shadows: [
                                  Shadow(
                                    color: Colors.black.withOpacity(0.15),
                                    blurRadius: 3,
                                    offset: const Offset(2, 2),
                                  ),
                                ],
                                child: Container(
                                  width: Get.width / 1.9,
                                  height: 54,
                                  decoration: ShapeDecoration(
                                    gradient: const LinearGradient(
                                      begin: Alignment(0.99, 0.10),
                                      end: Alignment(-0.99, -0.1),
                                      colors: [
                                        Color(0xFFF8F8F8),
                                        Color.fromARGB(255, 255, 253, 253),
                                      ],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                        width: 1,
                                        color: Color(0xFFE8E8E8),
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: SvgPicture.asset(
                                          'assets/images/delete.svg',
                                          width: 15,
                                          height: 15,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      const Text(
                                        'نشــان شــده',
                                        style: TextStyle(
                                            fontFamily: 'Aban Bold',
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 0 - 2,
                            right: 1,
                            child: SvgPicture.asset(
                              'assets/images/Icon_serch_notification.svg',
                              width: 57,
                              height: 52,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Ellipse 519.png',
                          width: 110,
                          height: 110,
                        ),
                      ])
                ],
              ),
            ),
          ),
      ],
    );
  }
}
