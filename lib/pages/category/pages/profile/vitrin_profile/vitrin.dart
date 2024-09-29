import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_svg/svg.dart';

class Vitrin extends StatelessWidget {
  const Vitrin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar2(0),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Container(
                      width: 160,
                      height: 100,
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
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 110.0,
                            ),
                            child: SvgPicture.asset(
                              'assets/images/vitrin_profile_icon.svg',
                              width: 24,
                              height: 24,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'ویترین',
                                  style: TextStyle(
                                    color: Color(0xFF626262),
                                    fontSize: 18,
                                    fontFamily: 'Aban Light',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'در ویترین دیده شوید',
                                  style: TextStyle(
                                    color: Color(0xFFA5A5A5),
                                    fontSize: 9,
                                    fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                endIndent: 25,
                indent: 25,
                color: Color.fromRGBO(226, 226, 226, 1),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 372,
                  height: 337,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 23, vertical: 22),
                  clipBehavior: Clip.antiAlias,
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
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const SizedBox(height: 15),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                    'assets/images/Vitrin_off_icon.svg'),
                                const SizedBox(height: 10),
                                const Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                          text: 'آژانس املاک',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontFamily: 'Aban Bold',
                                          )),
                                      TextSpan(
                                        text: ' خانه اول',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'تعداد آگهی : 125',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        'تعداد مشاورین فعال : 23',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        'تعداد درخواست : 49',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Column(
                                        children: [
                                          const Text(
                                            '70 درصد تکمیل شده',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Color(0xFFCF2E2E),
                                              fontSize: 10,
                                              fontFamily: MAIN_FONT_FAMILY,
                                            ),
                                          ),
                                          Container(
                                            width: 112,
                                            height: 9,
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                side: const BorderSide(
                                                    width: 0.50,
                                                    color: Color(0xFFB7B7B7)),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            child: Container(
                                              width: 50,
                                              height: 5,
                                              decoration: ShapeDecoration(
                                                gradient: const LinearGradient(
                                                  begin: Alignment(1.00, 0.00),
                                                  end: Alignment(-1, 0),
                                                  colors: [
                                                    Color(0xFF4C8CED),
                                                    Color(0xFF36D859)
                                                  ],
                                                ),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 145,
                                height: 32,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFF4C8CED)),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  shadows: const [
                                    BoxShadow(
                                      color: Color(0x7F36D859),
                                      blurRadius: 5,
                                      offset: Offset(0, 1),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: const Text(
                                  'ویرایش ویترین',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF636363),
                                    fontSize: 12,
                                    fontFamily: MAIN_FONT_FAMILY,
                                    fontWeight: FontWeight.w700,
                                    height: 2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
