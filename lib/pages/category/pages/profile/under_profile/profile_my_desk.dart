import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/widget/widget_JalaliHomePage%20.dart';
import 'package:flutter_application_1/pages/category/shared/widget_date_picker_persian.dart';
import 'package:flutter_svg/svg.dart';

class ProfileMyDesk extends StatelessWidget {
  const ProfileMyDesk({super.key});

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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 110,
                    height: 74,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
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
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('1402',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: MAIN_FONT_FAMILY)),
                                Text(
                                  'مرداد',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: MAIN_FONT_FAMILY,
                                      color: Color.fromRGBO(255, 122, 0, 1)),
                                ),
                                Text(
                                  '25',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: MAIN_FONT_FAMILY),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                          colors: GRADIANT_COLOR3),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: Container(
                                      width: 65,
                                      height: 23,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          const Text(
                                            'ثبت آگهی',
                                            style: TextStyle(
                                                fontFamily:
                                                    MAIN_FONT_FAMILY_MEDIUM,
                                                fontSize: 8),
                                          ),
                                          SvgPicture.asset(
                                              'assets/images/Group 571.svg'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                SvgPicture.asset(
                                  'assets/images/Message_profile_home.svg',
                                  width: 20,
                                  height: 20,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 220,
                    height: 74,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 58,
                              height: 50,
                              decoration: const BoxDecoration(
                                  gradient:
                                      LinearGradient(colors: GRADIANT_COLOR1),
                                  shape: BoxShape.circle),
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Container(
                                  height: 50,
                                  width: 58,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      'assets/images/logo-fa-photoshop.png',
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 45.0, top: 15),
                              child: SvgPicture.asset(
                                'assets/images/edit_icon_profile.svg',
                                width: 50,
                                height: 20,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Score_axansbartar.png',
                                width: 70,
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.verified,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    "خانه اول",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: MAIN_FONT_FAMILY),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 160,
                    height: 55,
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
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '25',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 12,
                                  fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                'آگهی های منتشر شده',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 12,
                                  fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 160,
                    height: 55,
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
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '5',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 12,
                                  fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                'آگهی های در انتظار تائید',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 12,
                                  fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 160,
                    height: 55,
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
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '85',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 12,
                                  fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'تعداد کل بازدید ها',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 12,
                                  fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 160,
                    height: 55,
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
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '2',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 12,
                                  fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                'آگهی های منتشر نشده',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 12,
                                  fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 160,
                    height: 55,
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
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '6',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 12,
                                  fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'تعداد کل محبوب ها',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 12,
                                  fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 160,
                    height: 55,
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
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '4',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 12,
                                  fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                'پیغام های دریافت شده',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 12,
                                  fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.grey),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        width: 60,
                        height: 31,
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'تا تاریخ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF303030),
                                fontSize: 11,
                                fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.grey),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        width: 60,
                        height: 31,
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'از تاریخ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF303030),
                                fontSize: 11,
                                fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.grey),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        width: 63,
                        height: 31,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/arrow_down.svg',
                              width: 8,
                              height: 8,
                            ),
                            const Text(
                              'وضعیت ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF303030),
                                fontSize: 11,
                                fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.grey),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        width: 63,
                        height: 31,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/arrow_down.svg',
                              width: 8,
                              height: 8,
                            ),
                            const Text(
                              'نوع ملک',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF303030),
                                fontSize: 11,
                                fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.grey),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        width: 63,
                        height: 31,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/arrow_down.svg',
                              width: 8,
                              height: 8,
                            ),
                            const Text(
                              'نوع آگهی',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF303030),
                                fontSize: 11,
                                fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Container(
                      width: 350,
                      height: 250,
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
                          )
                        ],
                      ),
                      child: SvgPicture.asset('assets/images/graph-All.svg')),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Container(
                            width: 110,
                            height: 118,
                            padding: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
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
                                Image.asset(
                                  'assets/images/hamkar.png',
                                  width: 50,
                                  height: 50,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    'علیرضا محرمی',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF303030),
                                      fontSize: 13,
                                      fontFamily: 'Aban Bold',
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'کارشناس خرید و فروش',
                                  style: TextStyle(
                                    color: Color.fromRGBO(183, 183, 183, 1),
                                    fontSize: 10,
                                    fontFamily: 'Aban Bold',
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 110,
                            height: 118,
                            padding: const EdgeInsets.all(10),
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
                                Image.asset(
                                  'assets/images/hamkar.png',
                                  width: 50,
                                  height: 50,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    'علیرضا محرمی',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF303030),
                                      fontSize: 13,
                                      fontFamily: 'Aban Bold',
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'کارشناس خرید و فروش',
                                  style: TextStyle(
                                    color: Color.fromRGBO(183, 183, 183, 1),
                                    fontSize: 10,
                                    fontFamily: 'Aban Bold',
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 110,
                            height: 118,
                            padding: const EdgeInsets.all(10),
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
                                Image.asset(
                                  'assets/images/hamkar.png',
                                  width: 50,
                                  height: 50,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    'علیرضا محرمی',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF303030),
                                      fontSize: 13,
                                      fontFamily: 'Aban Bold',
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'کارشناس خرید و فروش',
                                  style: TextStyle(
                                    color: Color.fromRGBO(183, 183, 183, 1),
                                    fontSize: 10,
                                    fontFamily: 'Aban Bold',
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Container(
                              width: 110,
                              height: 118,
                              padding: const EdgeInsets.all(10),
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
                                  SvgPicture.asset(
                                    'assets/images/hamkaran_profile.svg',
                                    width: 60,
                                    height: 60,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      'همکاران شما',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 18,
                                        fontFamily: 'Aban Bold',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Container(
                    width: 350,
                    height: 500,
              
                    child: const JalaliHomePage()
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Container(
                      width: 350,
                      height: 300,
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
                          )
                        ],
                      ),
                      child: SvgPicture.asset(
                        'assets/images/chart.svg',
                        fit: BoxFit.cover,
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      reverse: true,
                      child: Row(
                        children: [
                          Container(
                            width: 190,
                            height: 140,
                            padding: const EdgeInsets.all(10),
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment
                                      .center, // تراز عمودی در مرکز
                                  children: [
                                    SvgPicture.asset(
                                      "assets/images/total price.svg",
                                      width: 10,
                                      height: 10,
                                    ),
                                    const Text(
                                      '12.000.000.000',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily: MAIN_FONT_FAMILY),
                                    ),
                                    const SizedBox(height: 5),
                                    Container(
                                      width: 65,
                                      height: 13,
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
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            child: const Text(
                                              'خراسان شمالی',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFF636363),
                                                fontSize: 8,
                                                fontFamily:
                                                    MAIN_FONT_FAMILY_UltraLight,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, right: 10),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 13,
                                            child: Row(
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 8),
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      side: const BorderSide(
                                                          width: 0.50,
                                                          color: Color(
                                                              0xFFA6A6A6)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                  ),
                                                  child: const Text(
                                                    'ویلا',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0xFF636363),
                                                      fontSize: 8,
                                                      fontFamily:
                                                          MAIN_FONT_FAMILY_UltraLight,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 40,
                                            height: 15,
                                            child: Row(
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 5),
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      side: const BorderSide(
                                                          width: 0.50,
                                                          color: Color(
                                                              0xFFA6A6A6)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                  ),
                                                  child: const Text(
                                                    '500 متر',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0xFF636363),
                                                      fontSize: 8,
                                                      fontFamily:
                                                          MAIN_FONT_FAMILY_UltraLight,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Stack(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/images/Frame 2390.svg"),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 50.0),
                                          child: Image.asset(
                                            "assets/images/photo_profile.png",
                                            width: 30,
                                            height: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                // ستون سمت راست
                                Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .center, // تراز عمودی در مرکز
                                  children: [
                                    Image.asset(
                                      'assets/images/Ellipse 519.png',
                                      width: 60,
                                      height: 60,
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      ' آگهی : 14579423',
                                      style: TextStyle(
                                          fontSize: 7,
                                          color: Colors.black,
                                          fontFamily: MAIN_FONT_FAMILY),
                                    ),
                                    const Text(
                                      'تاریخ ثبت آگهی',
                                      style: TextStyle(
                                          fontSize: 8,
                                          color:
                                              Color.fromRGBO(166, 166, 166, 1),
                                          fontFamily: MAIN_FONT_FAMILY_MEDIUM),
                                    ),
                                    const Text(
                                      '1402 / 05 /20',
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Colors.black54,
                                          fontFamily: MAIN_FONT_FAMILY_MEDIUM),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 190,
                            height: 140,
                            padding: const EdgeInsets.all(10),
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment
                                      .center, // تراز عمودی در مرکز
                                  children: [
                                    SvgPicture.asset(
                                      "assets/images/total price.svg",
                                      width: 10,
                                      height: 10,
                                    ),
                                    const Text(
                                      '12.000.000.000',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily: MAIN_FONT_FAMILY),
                                    ),
                                    const SizedBox(height: 5),
                                    Container(
                                      width: 65,
                                      height: 13,
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
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            child: const Text(
                                              'خراسان شمالی',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFF636363),
                                                fontSize: 8,
                                                fontFamily:
                                                    MAIN_FONT_FAMILY_UltraLight,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, right: 10),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 13,
                                            child: Row(
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 8),
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      side: const BorderSide(
                                                          width: 0.50,
                                                          color: Color(
                                                              0xFFA6A6A6)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                  ),
                                                  child: const Text(
                                                    'ویلا',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0xFF636363),
                                                      fontSize: 8,
                                                      fontFamily:
                                                          MAIN_FONT_FAMILY_UltraLight,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 40,
                                            height: 15,
                                            child: Row(
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 5),
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      side: const BorderSide(
                                                          width: 0.50,
                                                          color: Color(
                                                              0xFFA6A6A6)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                  ),
                                                  child: const Text(
                                                    '500 متر',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0xFF636363),
                                                      fontSize: 8,
                                                      fontFamily:
                                                          MAIN_FONT_FAMILY_UltraLight,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Stack(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/images/Frame 2390.svg"),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 50.0),
                                          child: Image.asset(
                                            "assets/images/photo_profile.png",
                                            width: 30,
                                            height: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                // ستون سمت راست
                                Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .center, // تراز عمودی در مرکز
                                  children: [
                                    Image.asset(
                                      'assets/images/Ellipse 519.png',
                                      width: 60,
                                      height: 60,
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      ' آگهی : 14579423',
                                      style: TextStyle(
                                          fontSize: 7,
                                          color: Colors.black,
                                          fontFamily: MAIN_FONT_FAMILY),
                                    ),
                                    const Text(
                                      'تاریخ ثبت آگهی',
                                      style: TextStyle(
                                          fontSize: 8,
                                          color:
                                              Color.fromRGBO(166, 166, 166, 1),
                                          fontFamily: MAIN_FONT_FAMILY_MEDIUM),
                                    ),
                                    const Text(
                                      '1402 / 05 /20',
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Colors.black54,
                                          fontFamily: MAIN_FONT_FAMILY_MEDIUM),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 140,
                              height: 140,
                              padding: const EdgeInsets.all(10),
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
                                    height: 10,
                                  ),
                                  SvgPicture.asset(
                                    'assets/images/Group_home_profile.svg',
                                    width: 60,
                                    height: 60,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      'آگهی های جدید شما',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 16,
                                        fontFamily: 'Aban Bold',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
