import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_svg/svg.dart';

class ReqMelkProfile extends StatelessWidget {
  ReqMelkProfile({super.key});
  final searchController = TextEditingController();

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
                    width: 138,
                    height: 100,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 13),
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
                      children: [
                        const Text(
                          'تعداد اطلاع رسانی ها',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF3E3E3E),
                            fontSize: 14,
                            fontFamily: 'Aban Bold',
                          ),
                        ),
                        const Text(
                          '4',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                          ),
                        ),
                        Container(
                          width: 94,
                          height: 22,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFF9F9F9),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Color(0xFFAEAEAE),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '!',
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 12,
                                        fontFamily: MAIN_FONT_FAMILY,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'هنوز شروع نکردید',
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 11,
                                        fontFamily: 'Aban Bold',
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
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
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
                            'assets/images/home_icon_profile.svg',
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
                                'درخواست ملک',
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
                                'دنبال چه ملکی میگردی؟',
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
                padding: const EdgeInsets.symmetric(horizontal: 23.0),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    controller: searchController,
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      hintText: 'جستجو',
                      hintStyle: const TextStyle(
                          fontFamily: MAIN_FONT_FAMILY,
                          fontSize: 14,
                          height: 1.6),
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
                      prefixIcon: const Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 100,
                          height: 41,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFFA5A5A5)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 4,
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                  'assets/images/Arrow_list_agency.svg'),
                              const SizedBox(width: 5),
                              const Text(
                                'قیمت',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF636363),
                                  fontSize: 11,
                                  fontFamily: MAIN_FONT_FAMILY,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 100,
                          height: 41,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFFA5A5A5)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 4,
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                  'assets/images/Arrow_list_agency.svg'),
                              const SizedBox(width: 5),
                              const Text(
                                'متراژ',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF636363),
                                  fontSize: 11,
                                  fontFamily: MAIN_FONT_FAMILY,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 100,
                          height: 41,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFFA5A5A5)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 4,
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                  'assets/images/Arrow_list_agency.svg'),
                              const SizedBox(width: 15),
                              const Text(
                                'محله',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF636363),
                                  fontSize: 12,
                                  fontFamily: MAIN_FONT_FAMILY,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 100,
                          height: 41,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFFA5A5A5)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 4,
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                  'assets/images/Arrow_list_agency.svg'),
                              const SizedBox(width: 10),
                              const Text(
                                'شهر',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF636363),
                                  fontSize: 11.5,
                                  fontFamily: MAIN_FONT_FAMILY,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 100,
                          height: 41,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFFA5A5A5)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 4,
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                  'assets/images/Arrow_list_agency.svg'),
                              const SizedBox(width: 10),
                              const Text(
                                'نوع ملک',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF636363),
                                  fontSize: 11.5,
                                  fontFamily: MAIN_FONT_FAMILY,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 343,
                height: 100,
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFB7B7B7)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 26,
                            height: 21,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.50, color: Color(0xFF296FE2)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: SvgPicture.asset(
                                'assets/images/Call_icon_profile.svg',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 26,
                            height: 21,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.50, color: Color(0xFF00BD61)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: SvgPicture.asset(
                                'assets/images/Message_icon_profile.svg',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 3),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.20, color: Color(0xFF303030)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Text(
                                  '80 - 120',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF636363),
                                    fontSize: 10,
                                    fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 3),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.20, color: Color(0xFF303030)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'جنت آباد ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF636363),
                                        fontSize: 10,
                                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 3),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.20, color: Color(0xFF303030)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Column(
                                  children: [
                                    Text(
                                      'تهران',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF636363),
                                        fontSize: 10,
                                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 3),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.20, color: Color(0xFF303030)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Column(
                                  children: [
                                    Text(
                                      'آپارتمان',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF636363),
                                        fontSize: 10,
                                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 75,
                          height: 25,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.20, color: Color(0xFF303030)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SvgPicture.asset(
                                'assets/images/down.svg',
                                width: 10,
                                height: 10,
                              ),
                              const Text(
                                'توضیحات',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 10,
                                  fontFamily: MAIN_FONT_FAMILY,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 118,
                          height: 25,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.20, color: Color(0xFF303030)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ShaderMask(
                                shaderCallback: (bounds) =>
                                    const LinearGradient(
                                  colors: [
                                    Color(0xFF4C8CED),
                                    Color(0xFF36D859),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ).createShader(
                                  Rect.fromLTWH(
                                      0, 0, bounds.width, bounds.height),
                                ),
                                child: const Text(
                                  'قیمت تا 12 میلیارد تومان',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: MAIN_FONT_FAMILY,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 343,
                height: 100,
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFB7B7B7)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 26,
                            height: 21,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.50, color: Color(0xFF296FE2)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: SvgPicture.asset(
                                'assets/images/Call_icon_profile.svg',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 26,
                            height: 21,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.50, color: Color(0xFF00BD61)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: SvgPicture.asset(
                                'assets/images/Message_icon_profile.svg',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 3),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.20, color: Color(0xFF303030)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Text(
                                  '80 - 120',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF636363),
                                    fontSize: 10,
                                    fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 3),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.20, color: Color(0xFF303030)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'جنت آباد ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF636363),
                                        fontSize: 10,
                                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 3),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.20, color: Color(0xFF303030)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Column(
                                  children: [
                                    Text(
                                      'تهران',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF636363),
                                        fontSize: 10,
                                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 3),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.20, color: Color(0xFF303030)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Column(
                                  children: [
                                    Text(
                                      'آپارتمان',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF636363),
                                        fontSize: 10,
                                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 75,
                          height: 25,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.20, color: Color(0xFF303030)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SvgPicture.asset(
                                'assets/images/down.svg',
                                width: 10,
                                height: 10,
                              ),
                              const Text(
                                'توضیحات',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 10,
                                  fontFamily: MAIN_FONT_FAMILY,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 118,
                          height: 25,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.20, color: Color(0xFF303030)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ShaderMask(
                                shaderCallback: (bounds) =>
                                    const LinearGradient(
                                  colors: [
                                    Color(0xFF4C8CED),
                                    Color(0xFF36D859),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ).createShader(
                                  Rect.fromLTWH(
                                      0, 0, bounds.width, bounds.height),
                                ),
                                child: const Text(
                                  'قیمت تا 12 میلیارد تومان',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: MAIN_FONT_FAMILY,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 343,
                height: 100,
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFB7B7B7)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 26,
                            height: 21,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.50, color: Color(0xFF296FE2)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: SvgPicture.asset(
                                'assets/images/Call_icon_profile.svg',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 26,
                            height: 21,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.50, color: Color(0xFF00BD61)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: SvgPicture.asset(
                                'assets/images/Message_icon_profile.svg',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 3),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.20, color: Color(0xFF303030)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Text(
                                  '80 - 120',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF636363),
                                    fontSize: 10,
                                    fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 3),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.20, color: Color(0xFF303030)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'جنت آباد ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF636363),
                                        fontSize: 10,
                                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 3),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.20, color: Color(0xFF303030)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Column(
                                  children: [
                                    Text(
                                      'تهران',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF636363),
                                        fontSize: 10,
                                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 3),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.20, color: Color(0xFF303030)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Column(
                                  children: [
                                    Text(
                                      'آپارتمان',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF636363),
                                        fontSize: 10,
                                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 75,
                          height: 25,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.20, color: Color(0xFF303030)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SvgPicture.asset(
                                'assets/images/down.svg',
                                width: 10,
                                height: 10,
                              ),
                              const Text(
                                'توضیحات',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 10,
                                  fontFamily: MAIN_FONT_FAMILY,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 118,
                          height: 25,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.20, color: Color(0xFF303030)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ShaderMask(
                                shaderCallback: (bounds) =>
                                    const LinearGradient(
                                  colors: [
                                    Color(0xFF4C8CED),
                                    Color(0xFF36D859),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ).createShader(
                                  Rect.fromLTWH(
                                      0, 0, bounds.width, bounds.height),
                                ),
                                child: const Text(
                                  'قیمت تا 12 میلیارد تومان',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: MAIN_FONT_FAMILY,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 343,
                height: 100,
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFB7B7B7)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 26,
                            height: 21,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.50, color: Color(0xFF296FE2)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: SvgPicture.asset(
                                'assets/images/Call_icon_profile.svg',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 26,
                            height: 21,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.50, color: Color(0xFF00BD61)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: SvgPicture.asset(
                                'assets/images/Message_icon_profile.svg',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 3),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.20, color: Color(0xFF303030)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Text(
                                  '80 - 120',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF636363),
                                    fontSize: 10,
                                    fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 3),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.20, color: Color(0xFF303030)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'جنت آباد ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF636363),
                                        fontSize: 10,
                                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 3),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.20, color: Color(0xFF303030)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Column(
                                  children: [
                                    Text(
                                      'تهران',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF636363),
                                        fontSize: 10,
                                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 3),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.20, color: Color(0xFF303030)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Column(
                                  children: [
                                    Text(
                                      'آپارتمان',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF636363),
                                        fontSize: 10,
                                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 75,
                          height: 25,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.20, color: Color(0xFF303030)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SvgPicture.asset(
                                'assets/images/down.svg',
                                width: 10,
                                height: 10,
                              ),
                              const Text(
                                'توضیحات',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 10,
                                  fontFamily: MAIN_FONT_FAMILY,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 118,
                          height: 25,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.20, color: Color(0xFF303030)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ShaderMask(
                                shaderCallback: (bounds) =>
                                    const LinearGradient(
                                  colors: [
                                    Color(0xFF4C8CED),
                                    Color(0xFF36D859),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ).createShader(
                                  Rect.fromLTWH(
                                      0, 0, bounds.width, bounds.height),
                                ),
                                child: const Text(
                                  'قیمت تا 12 میلیارد تومان',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: MAIN_FONT_FAMILY,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
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
