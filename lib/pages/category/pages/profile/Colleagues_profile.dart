import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/widget_Colleagues_profile/widget_Task_management_Colleagues.dart';
import 'package:flutter_application_1/pages/category/pages/profile/widget_Colleagues_profile/widget_management_ad.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_svg/svg.dart';

class ColleaguesProfile extends StatefulWidget {
  const ColleaguesProfile({super.key});

  @override
  State<ColleaguesProfile> createState() => _ColleaguesProfileState();
}

class _ColleaguesProfileState extends State<ColleaguesProfile> {
  bool _isContainerVisible = false; // حالت برای نمایش یا عدم نمایش کانتینر

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
                              'assets/images/Colleagues_icon_profile.svg',
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
                                  'همکاران',
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
                                  'مدیریت و ارتباط با همکاران',
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
              Column(
                children: [
                  GestureDetector(
                    // برای تشخیص لمس
                    onTap: () {
                      setState(() {
                        _isContainerVisible =
                            !_isContainerVisible; // نمایش کانتینر
                      });
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 343,
                          height: 100,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 0),
                                  blurRadius: 3,
                                  color: Color.fromRGBO(0, 0, 0, 0.15))
                            ],
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20.0, bottom: 10),
                                        child: SvgPicture.asset(
                                            'assets/images/vitrinaxans.svg'),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            right: 30.0, bottom: 10),
                                        child: Text(
                                          'ویترین',
                                          style: TextStyle(
                                              fontFamily: MAIN_FONT_FAMILY,
                                              fontSize: 12),
                                        ),
                                      ),
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20.0, right: 10),
                                            child: SvgPicture.asset(
                                              "assets/images/consultant_list_moshaver.svg",
                                              width: 69,
                                              height: 63,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 97.0, top: 23),
                                            child: Image.asset(
                                              'assets/images/Ellipse 222.png',
                                              width: 50,
                                              height: 50,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 60.0, left: 22),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/locationaxans.svg',
                                      width: 20,
                                      height: 20,
                                    ),
                                    const SizedBox(
                                      width: 35,
                                    ),
                                    const Text(
                                      'تــهـران',
                                      style: TextStyle(
                                          fontFamily: MAIN_FONT_FAMILY,
                                          fontSize: 11),
                                    ),
                                  ],
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
              const SizedBox(height: 10),
              if (_isContainerVisible) hamkar(),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 343,
                        height: 100,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 3,
                                color: Color.fromRGBO(0, 0, 0, 0.15))
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, bottom: 10),
                                      child: SvgPicture.asset(
                                          'assets/images/vitrinaxans.svg'),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          right: 30.0, bottom: 10),
                                      child: Text(
                                        'ویترین',
                                        style: TextStyle(
                                            fontFamily: MAIN_FONT_FAMILY,
                                            fontSize: 12),
                                      ),
                                    ),
                                    Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20.0, right: 10),
                                          child: SvgPicture.asset(
                                            "assets/images/consultant_list_moshaver.svg",
                                            width: 69,
                                            height: 63,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 97.0, top: 23),
                                          child: Image.asset(
                                            'assets/images/Ellipse 222.png',
                                            width: 50,
                                            height: 50,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 60.0, left: 22),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/locationaxans.svg',
                                    width: 20,
                                    height: 20,
                                  ),
                                  const SizedBox(
                                    width: 35,
                                  ),
                                  const Text(
                                    'تــهـران',
                                    style: TextStyle(
                                        fontFamily: MAIN_FONT_FAMILY,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 343,
                        height: 100,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 3,
                                color: Color.fromRGBO(0, 0, 0, 0.15))
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, bottom: 10),
                                      child: SvgPicture.asset(
                                          'assets/images/vitrinaxans.svg'),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          right: 30.0, bottom: 10),
                                      child: Text(
                                        'ویترین',
                                        style: TextStyle(
                                            fontFamily: MAIN_FONT_FAMILY,
                                            fontSize: 12),
                                      ),
                                    ),
                                    Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20.0, right: 10),
                                          child: SvgPicture.asset(
                                            "assets/images/consultant_list_moshaver.svg",
                                            width: 69,
                                            height: 63,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 97.0, top: 23),
                                          child: Image.asset(
                                            'assets/images/Ellipse 222.png',
                                            width: 50,
                                            height: 50,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 60.0, left: 22),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/locationaxans.svg',
                                    width: 20,
                                    height: 20,
                                  ),
                                  const SizedBox(
                                    width: 35,
                                  ),
                                  const Text(
                                    'تــهـران',
                                    style: TextStyle(
                                        fontFamily: MAIN_FONT_FAMILY,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 343,
                        height: 100,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 3,
                                color: Color.fromRGBO(0, 0, 0, 0.15))
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, bottom: 10),
                                      child: SvgPicture.asset(
                                          'assets/images/vitrinaxans.svg'),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          right: 30.0, bottom: 10),
                                      child: Text(
                                        'ویترین',
                                        style: TextStyle(
                                            fontFamily: MAIN_FONT_FAMILY,
                                            fontSize: 12),
                                      ),
                                    ),
                                    Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20.0, right: 10),
                                          child: SvgPicture.asset(
                                            "assets/images/consultant_list_moshaver.svg",
                                            width: 69,
                                            height: 63,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 97.0, top: 23),
                                          child: Image.asset(
                                            'assets/images/Ellipse 222.png',
                                            width: 50,
                                            height: 50,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 60.0, left: 22),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/locationaxans.svg',
                                    width: 20,
                                    height: 20,
                                  ),
                                  const SizedBox(
                                    width: 35,
                                  ),
                                  const Text(
                                    'تــهـران',
                                    style: TextStyle(
                                        fontFamily: MAIN_FONT_FAMILY,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 343,
                        height: 100,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 3,
                                color: Color.fromRGBO(0, 0, 0, 0.15))
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, bottom: 10),
                                      child: SvgPicture.asset(
                                          'assets/images/vitrinaxans.svg'),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          right: 30.0, bottom: 10),
                                      child: Text(
                                        'ویترین',
                                        style: TextStyle(
                                            fontFamily: MAIN_FONT_FAMILY,
                                            fontSize: 12),
                                      ),
                                    ),
                                    Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20.0, right: 10),
                                          child: SvgPicture.asset(
                                            "assets/images/consultant_list_moshaver.svg",
                                            width: 69,
                                            height: 63,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 97.0, top: 23),
                                          child: Image.asset(
                                            'assets/images/Ellipse 222.png',
                                            width: 50,
                                            height: 50,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 60.0, left: 22),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/locationaxans.svg',
                                    width: 20,
                                    height: 20,
                                  ),
                                  const SizedBox(
                                    width: 35,
                                  ),
                                  const Text(
                                    'تــهـران',
                                    style: TextStyle(
                                        fontFamily: MAIN_FONT_FAMILY,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget hamkar() {
  return SingleChildScrollView(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: SingleChildScrollView(
            child: Container(
              width: 343,
              height: 390,
              decoration: ShapeDecoration(
                gradient:
                    const LinearGradient(colors: GRADIANT_COLOR_Colleagues),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 3.0,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    WidgetTaskManagementColleagues(),
                    const SizedBox(
                      height: 10,
                    ),
                    WidgetManagementAd(),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      indent: 25,
                      endIndent: 25,
                      color: Color.fromRGBO(226, 226, 226, 1),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 151,
                      height: 30,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFF9C4040)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x7F9C4040),
                            blurRadius: 7,
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'لغو همکاری',
                            style: TextStyle(
                              color: Color(0xFF626262),
                              fontSize: 12,
                              fontFamily: MAIN_FONT_FAMILY,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      indent: 25,
                      endIndent: 25,
                      color: Color.fromRGBO(226, 226, 226, 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(children: [
                        Container(
                          width: 371,
                          height: 50,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: const Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'امتیاز',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 14,
                                        fontFamily: 'Aban Bold',
                                        fontWeight: FontWeight.w400,
                                        height: 0.10,
                                      ),
                                    ),
                                    SizedBox(height: 30),
                                    Text(
                                      '4.7',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 14,
                                        fontFamily: 'Aban Bold',
                                        fontWeight: FontWeight.w400,
                                        height: 0.10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                child: const Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'تعداد آگهی',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 14,
                                        fontFamily: 'Aban Bold',
                                        fontWeight: FontWeight.w400,
                                        height: 0.10,
                                      ),
                                    ),
                                    SizedBox(height: 30),
                                    Text(
                                      '125',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 14,
                                        fontFamily: 'Aban Bold',
                                        fontWeight: FontWeight.w400,
                                        height: 0.10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                child: const Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'میزان رضایت مندی',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 14,
                                        fontFamily: 'Aban Bold',
                                        fontWeight: FontWeight.w400,
                                        height: 0.10,
                                      ),
                                    ),
                                    SizedBox(height: 30),
                                    Text(
                                      '% 92',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 14,
                                        fontFamily: 'Aban Bold',
                                        fontWeight: FontWeight.w400,
                                        height: 0.10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                child: const Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'محدوده فعالیت',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 14,
                                        fontFamily: 'Aban Bold',
                                        fontWeight: FontWeight.w400,
                                        height: 0.10,
                                      ),
                                    ),
                                    SizedBox(height: 30),
                                    Text(
                                      'سراسر کشور',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 14,
                                        fontFamily: 'Aban Bold',
                                        fontWeight: FontWeight.w400,
                                        height: 0.10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(colors: GRADIANT_call),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Container(
                              width: 96,
                              height: 46,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 13, vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x26000000),
                                    blurRadius: 3,
                                    offset: Offset(0, 0),
                                  )
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    'تماس',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF626262),
                                      fontSize: 12,
                                      fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    'assets/images/Call_icon_profile.svg',
                                    width: 17,
                                    height: 18,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              gradient:
                                  LinearGradient(colors: GRADIANT_message),
                              borderRadius: BorderRadius.circular(16)),
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Container(
                              width: 96,
                              height: 46,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 13, vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x26000000),
                                    blurRadius: 3,
                                    offset: Offset(0, 0),
                                  )
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    'پیام',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF626262),
                                      fontSize: 12,
                                      fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    'assets/images/Message_icon_profile.svg',
                                    width: 17,
                                    height: 18,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(colors: GRADIANT_vitrin),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Container(
                              width: 96,
                              height: 46,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 13, vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x26000000),
                                    blurRadius: 3,
                                    offset: Offset(0, 0),
                                  )
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    'ویترین',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF626262),
                                      fontSize: 12,
                                      fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    'assets/images/Vitrin_off_icon.svg',
                                    width: 17,
                                    height: 18,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
