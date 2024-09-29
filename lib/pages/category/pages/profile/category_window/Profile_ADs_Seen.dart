import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';

class ProfileAdsSeen extends StatelessWidget {
  const ProfileAdsSeen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const Divider(
        endIndent: 20,
        indent: 25,
      ),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: 200,
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
                        width: 90,
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
                                      width: 0.50, color: Color(0xFFA6A6A6)),
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
                      const SizedBox(
                        width: 5,
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
                                      width: 0.50, color: Color(0xFFA6A6A6)),
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
                          width: 40,
                          height: 13,
                          child: Row(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.50, color: Color(0xFFA6A6A6)),
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
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 40,
                          height: 15,
                          child: Row(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.50, color: Color(0xFFA6A6A6)),
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
                          Container(
                            width: 202,
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
                                  padding: const EdgeInsets.only(left: 10.0),
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
                                  'دیـده شــده',
                                  style: TextStyle(
                                      fontFamily: 'Aban Bold', fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 15 - 0,
                        right: -0,
                        child: SvgPicture.asset(
                          'assets/images/see_kam_rang.svg',
                          width: 54,
                          height: 38,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: 200,
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
                        width: 90,
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
                                      width: 0.50, color: Color(0xFFA6A6A6)),
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
                      const SizedBox(
                        width: 5,
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
                                      width: 0.50, color: Color(0xFFA6A6A6)),
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
                          width: 40,
                          height: 13,
                          child: Row(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.50, color: Color(0xFFA6A6A6)),
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
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 40,
                          height: 15,
                          child: Row(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.50, color: Color(0xFFA6A6A6)),
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
                          Container(
                            width: 202,
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
                                  padding: const EdgeInsets.only(left: 10.0),
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
                                  'دیـده شــده',
                                  style: TextStyle(
                                      fontFamily: 'Aban Bold', fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 15 - 0,
                        right: -0,
                        child: SvgPicture.asset(
                          'assets/images/see_kam_rang.svg',
                          width: 54,
                          height: 38,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
    ]);
  }
}
