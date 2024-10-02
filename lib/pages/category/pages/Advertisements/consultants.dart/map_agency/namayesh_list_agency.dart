import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/namayesh_agahi.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class NamayeshListAgency extends StatelessWidget {
  const NamayeshListAgency({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar1(),
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/images/agency_namayeh_agahi.png",
                    height: Get.height / 1.3,
                    width: 412,
                    fit: BoxFit.cover,
                  ),
                  ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(),
                      child: Center(
                        child: Container(
                          width: 302,
                          height: Get.height / 1.6,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromRGBO(254, 254, 254, 1),
                                Color.fromRGBO(255, 255, 255, 0),
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(
                                  0,
                                  0,
                                  0,
                                  0.1,
                                ),
                                offset: Offset(0, 2),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: Image.asset(
                        'assets/images/Score_axansbartar.png',
                        width: 143,
                        height: 60,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Center(
                      child: Container(
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurRadius: 10,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 115.0),
                      child: SvgPicture.asset(
                        'assets/images/logo-farsi.svg',
                        width: MediaQuery.of(context).size.width - 275,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 260.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/Group 776.svg',
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'خانه اول',
                          style: TextStyle(
                              color: Color.fromRGBO(48, 48, 48, 1),
                              fontSize: 18,
                              fontFamily: 'Aban Bold'),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'آژانس املاک',
                          style: TextStyle(
                              color: Color.fromRGBO(48, 48, 48, 1),
                              fontSize: 18,
                              fontFamily: 'Aban Bold'),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 302.0, left: 220),
                      child: Align(
                        child: SvgPicture.asset('assets/images/Experience.svg'),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 308.0, right: 50),
                    child: Center(
                      child: Text(
                        ' خرید و فروش پروژه های بزرگ و اقتصادی',
                        style: TextStyle(
                            fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 400.0,
                    ),
                    child: Center(
                      child: Container(
                        width: 302,
                        height: 35,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(
                                  0, 114, 114, 114), // محو شدن از شفافیت
                              Colors.white, // وسط سفید
                              Color.fromARGB(
                                  0, 217, 216, 216), // محو شدن به شفافیت
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'بـا مـا صـاحبخـانه شـویـد',
                            style: TextStyle(
                              fontFamily: 'Aban Bold',
                              fontSize: 23,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          DraggableScrollableSheet(
              initialChildSize: 0.30,
              minChildSize: 0.30,
              maxChildSize: 0.80,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return SingleChildScrollView(
                    controller: scrollController,
                    child: Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: GRADIANT_COLOR),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 1.2),
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: SvgPicture.asset(
                                      'assets/images/swipe up.svg'),
                                ),
                                const SizedBox(height: 15),
                                Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text(
                                        'درخواست همکاری',
                                        style: TextStyle(
                                            fontFamily: 'Aban Bold',
                                            fontSize: 12),
                                      ),
                                      SvgPicture.asset(
                                        'assets/images/req.svg',
                                        width: 20,
                                        height: 20,
                                      ),
                                      const Text(
                                        'ارســال پــیــام',
                                        style: TextStyle(
                                            fontFamily: 'Aban Bold',
                                            fontSize: 12),
                                      ),
                                      SvgPicture.asset(
                                        'assets/images/Message_blue.svg',
                                        width: 20,
                                        height: 20,
                                      ),
                                      const Text(
                                        'تـمـاس بـا مـا',
                                        style: TextStyle(
                                            fontFamily: 'Aban Bold',
                                            fontSize: 12),
                                      ),
                                      SvgPicture.asset(
                                        'assets/images/Call_green.svg',
                                        width: 20,
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  'خانه اول به عنوان اولین سایت فروش اینترنتی املاک امکان فروش گسترده بهترین و مطمئن ترین فروش های ویژه املاک را که توسط شرکت های بزرگ ساختمانی و انبوه سازان توانمند را فراهم می کند.',
                                  style: TextStyle(
                                    fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                  ),
                                  textAlign: TextAlign.justify,
                                  textDirection: TextDirection.rtl,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                // const Text(
                                //   'هدف اصلی خانه اول عرضه پروژه های بزرگ و کاملا اقتصادی در موقیت های بسیار عالی و با تکنولوژی بالا در سراسر کشور توسط انبوه سازان صنعتی ساختمان راه اندازی شده است. از این طریق متقاضیان واقعی مسکن می توانند با بررسی اطلاعات جامع و کامل پروژه ها نسبت به انتخاب و خرید بی واسطه با فروشندگان اقدام نمایند و در موعد مقرر واحدهای مسکونی خود را تحویل بگیرند. امیدواریم این اقدام منجر به حذف واسطه های غیرضروری بین انبوه سازان صنعتی مسکن و متقاضیان واقعی آن در سراسر ایران اسلامی مان باشد.',
                                //   style: TextStyle(
                                //     fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                //   ),
                                //   textAlign: TextAlign.justify,
                                //   textDirection: TextDirection.rtl,
                                // ),
                                const SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(children: [
                                    Container(
                                      width: 371,
                                      height: 50,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: const Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
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
                                          const SizedBox(width: 25),
                                          Container(
                                            child: const Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
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
                                                  '% 89',
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
                                          const SizedBox(width: 25),
                                          Container(
                                            child: const Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
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
                                          const SizedBox(width: 25),
                                          Container(
                                            child: const Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
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
                                        ],
                                      ),
                                    ),
                                  ]),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        const Text(
                                          'مشاهده نظرات',
                                          style: TextStyle(
                                            color: Color(0xFF303030),
                                            fontSize: 14,
                                            fontFamily: 'Aban Bold',
                                          ),
                                        ),
                                        Container(
                                          width: 73,
                                          height: 30,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0x26000000),
                                                blurRadius: 3,
                                              )
                                            ],
                                          ),
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                'پاسخگو',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF303030),
                                                  fontSize: 14,
                                                  fontFamily: 'Aban Bold',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 73,
                                          height: 30,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0x26000000),
                                                blurRadius: 3,
                                              )
                                            ],
                                          ),
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'تنوع آگهی',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF303030),
                                                  fontSize: 14,
                                                  fontFamily: 'Aban Bold',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 73,
                                          height: 30,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0x26000000),
                                                blurRadius: 3,
                                              )
                                            ],
                                          ),
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'کادر مجرب',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF303030),
                                                  fontSize: 14,
                                                  fontFamily: 'Aban Bold',
                                                  fontWeight: FontWeight.w400,
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
                                  height: 30,
                                ),
                                const Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Expanded(
                                          child: Divider(
                                            indent: 5,
                                            endIndent: 5,
                                            color: Colors.black54,
                                            thickness: 1, // ضخامت دیوایدر
                                          ),
                                        ),
                                        Text(
                                          'مشخصات آژانس',
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                            color: Color(0xFF303030),
                                            fontSize: 14,
                                            fontFamily: MAIN_FONT_FAMILY,
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('صادق قلی زاده',
                                        style: TextStyle(
                                            fontFamily:
                                                MAIN_FONT_FAMILY_UltraLight)),
                                    Expanded(
                                      child: Divider(
                                        indent: 10,
                                        endIndent: 5,
                                        color: Color.fromRGBO(226, 226, 226, 1),
                                        thickness: 1,
                                      ),
                                    ),
                                    Text(
                                      'مدیر آژانس',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 14,
                                        fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('جلال آل احمد، پلاک 417',
                                        style: TextStyle(
                                            fontFamily:
                                                MAIN_FONT_FAMILY_UltraLight)),
                                    Expanded(
                                      child: Divider(
                                        indent: 20,
                                        endIndent: 5,
                                        color: Color.fromRGBO(226, 226, 226, 1),
                                        thickness: 1,
                                      ),
                                    ),
                                    Text(
                                      'آدرس',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 14,
                                        fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(' 157945621 ق ',
                                        style: TextStyle(
                                            fontFamily:
                                                MAIN_FONT_FAMILY_UltraLight)),
                                    Expanded(
                                      child: Divider(
                                        indent: 20,
                                        endIndent: 5,
                                        color: Color.fromRGBO(226, 226, 226, 1),
                                        thickness: 1, // ضخامت دیوایدر
                                      ),
                                    ),
                                    Text(
                                      ' شماره مجوز',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 14,
                                        fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('انجام شده',
                                        style: TextStyle(
                                            fontFamily:
                                                MAIN_FONT_FAMILY_UltraLight)),
                                    Expanded(
                                      child: Divider(
                                        indent: 20,
                                        endIndent: 5,
                                        color: Color.fromRGBO(226, 226, 226, 1),
                                        thickness: 1, // ضخامت دیوایدر
                                      ),
                                    ),
                                    Text(
                                      'تائید هویت',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 14,
                                        fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(' 3 سال',
                                        style: TextStyle(
                                            fontFamily:
                                                MAIN_FONT_FAMILY_UltraLight)),
                                    Expanded(
                                      child: Divider(
                                        indent: 20,
                                        endIndent: 5,
                                        color: Color.fromRGBO(226, 226, 226, 1),
                                        thickness: 1, // ضخامت دیوایدر
                                      ),
                                    ),
                                    Text(
                                      'مدت فعالیت در خانه اول',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        color: Color(0xFF303030),
                                        fontSize: 14,
                                        fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                const Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Expanded(
                                          child: Divider(
                                            indent: 5,
                                            endIndent: 5,
                                            color: Color.fromRGBO(
                                                166, 166, 166, 1),
                                            thickness: 1, // ضخامت دیوایدر
                                          ),
                                        ),
                                        Text(
                                          'مشاورین برتر آژانس',
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                            color: Color(0xFF303030),
                                            fontSize: 14,
                                            fontFamily: MAIN_FONT_FAMILY,
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Column(children: [
                                  Container(
                                    width: 390,
                                    height: 100,
                                    child: Stack(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Get.to(
                                                () => const NamayeshAgahi1());
                                          },
                                          child: Container(
                                            width: 390,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              boxShadow: const [
                                                BoxShadow(
                                                  offset: Offset(0, 0),
                                                  blurRadius: 3,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.15),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.white,
                                            ),
                                            child: Stack(
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 20.0,
                                                                  bottom: 10),
                                                          child: SvgPicture.asset(
                                                              'assets/images/vitrinaxans.svg'),
                                                        ),
                                                        const Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 30.0,
                                                                  bottom: 10),
                                                          child: Text(
                                                            'ویترین',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    MAIN_FONT_FAMILY,
                                                                fontSize: 12),
                                                          ),
                                                        ),
                                                        Stack(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      top: 20.0,
                                                                      right:
                                                                          10),
                                                              child: SvgPicture
                                                                  .asset(
                                                                "assets/images/Agancy & consultant.svg",
                                                                width: 69,
                                                                height: 63,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      left:
                                                                          85.0,
                                                                      top: 30),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/logo-farsi.svg',
                                                                width: 30,
                                                                height: 30,
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
                                                      const EdgeInsets.only(
                                                          top: 60.0, left: 22),
                                                  child: Row(
                                                    children: [
                                                      SvgPicture.asset(
                                                        'assets/images/locationaxans.svg',
                                                        width: 20,
                                                        height: 20,
                                                      ),
                                                      const SizedBox(
                                                        width: 45,
                                                      ),
                                                      const Text(
                                                        'تــهـران',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                MAIN_FONT_FAMILY,
                                                            fontSize: 11),
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
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: 390,
                                    height: 100,
                                    child: Stack(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Get.to(
                                                () => const NamayeshAgahi1());
                                          },
                                          child: Container(
                                            width: 390,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              boxShadow: const [
                                                BoxShadow(
                                                  offset: Offset(0, 0),
                                                  blurRadius: 3,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.15),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.white,
                                            ),
                                            child: Stack(
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 20.0,
                                                                  bottom: 10),
                                                          child: SvgPicture.asset(
                                                              'assets/images/vitrinaxans.svg'),
                                                        ),
                                                        const Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 30.0,
                                                                  bottom: 10),
                                                          child: Text(
                                                            'ویترین',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    MAIN_FONT_FAMILY,
                                                                fontSize: 12),
                                                          ),
                                                        ),
                                                        Stack(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      top: 20.0,
                                                                      right:
                                                                          10),
                                                              child: SvgPicture
                                                                  .asset(
                                                                "assets/images/Agancy & consultant.svg",
                                                                width: 69,
                                                                height: 63,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      left:
                                                                          85.0,
                                                                      top: 30),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/logo-farsi.svg',
                                                                width: 30,
                                                                height: 30,
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
                                                      const EdgeInsets.only(
                                                          top: 60.0, left: 22),
                                                  child: Row(
                                                    children: [
                                                      SvgPicture.asset(
                                                        'assets/images/locationaxans.svg',
                                                        width: 20,
                                                        height: 20,
                                                      ),
                                                      const SizedBox(
                                                        width: 45,
                                                      ),
                                                      const Text(
                                                        'تــهـران',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                MAIN_FONT_FAMILY,
                                                            fontSize: 11),
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
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: 390,
                                    height: 100,
                                    child: Stack(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Get.to(
                                                () => const NamayeshAgahi1());
                                          },
                                          child: Container(
                                            width: 390,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              boxShadow: const [
                                                BoxShadow(
                                                  offset: Offset(0, 0),
                                                  blurRadius: 3,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.15),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.white,
                                            ),
                                            child: Stack(
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 20.0,
                                                                  bottom: 10),
                                                          child: SvgPicture.asset(
                                                              'assets/images/vitrinaxans.svg'),
                                                        ),
                                                        const Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 30.0,
                                                                  bottom: 10),
                                                          child: Text(
                                                            'ویترین',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    MAIN_FONT_FAMILY,
                                                                fontSize: 12),
                                                          ),
                                                        ),
                                                        Stack(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      top: 20.0,
                                                                      right:
                                                                          10),
                                                              child: SvgPicture
                                                                  .asset(
                                                                "assets/images/Agancy & consultant.svg",
                                                                width: 69,
                                                                height: 63,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      left:
                                                                          85.0,
                                                                      top: 30),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/logo-farsi.svg',
                                                                width: 30,
                                                                height: 30,
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
                                                      const EdgeInsets.only(
                                                          top: 60.0, left: 22),
                                                  child: Row(
                                                    children: [
                                                      SvgPicture.asset(
                                                        'assets/images/locationaxans.svg',
                                                        width: 20,
                                                        height: 20,
                                                      ),
                                                      const SizedBox(
                                                        width: 45,
                                                      ),
                                                      const Text(
                                                        'تــهـران',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                MAIN_FONT_FAMILY,
                                                            fontSize: 11),
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
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Expanded(
                                            child: Divider(
                                              indent: 5,
                                              endIndent: 5,
                                              color: Color.fromRGBO(
                                                  166, 166, 166, 1),
                                              thickness: 1,
                                            ),
                                          ),
                                          Text(
                                            'مشاورین برتر آژانس',
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                              color: Color(0xFF303030),
                                              fontSize: 14,
                                              fontFamily: MAIN_FONT_FAMILY,
                                            ),
                                          ),
                                          SizedBox(width: 8),
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
                                            width: 390,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              boxShadow: const [
                                                BoxShadow(
                                                    offset: Offset(0, 0),
                                                    blurRadius: 3,
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 0.15))
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.white,
                                            ),
                                            child: Stack(
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 20.0,
                                                                  bottom: 10),
                                                          child: SvgPicture.asset(
                                                              'assets/images/vitrinaxans.svg'),
                                                        ),
                                                        const Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 30.0,
                                                                  bottom: 10),
                                                          child: Text(
                                                            'ویترین',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    MAIN_FONT_FAMILY,
                                                                fontSize: 12),
                                                          ),
                                                        ),
                                                        Stack(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      top: 20.0,
                                                                      right:
                                                                          10),
                                                              child: SvgPicture
                                                                  .asset(
                                                                "assets/images/consultant_list_moshaver.svg",
                                                                width: 69,
                                                                height: 63,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      left:
                                                                          97.0,
                                                                      top: 23),
                                                              child:
                                                                  Image.asset(
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
                                                      const EdgeInsets.only(
                                                          top: 60.0, left: 22),
                                                  child: Row(
                                                    children: [
                                                      SvgPicture.asset(
                                                        'assets/images/locationaxans.svg',
                                                        width: 20,
                                                        height: 20,
                                                      ),
                                                      const SizedBox(
                                                        width: 45,
                                                      ),
                                                      const Text(
                                                        'تــهـران',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                MAIN_FONT_FAMILY,
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
                                            width: 390,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              boxShadow: const [
                                                BoxShadow(
                                                    offset: Offset(0, 0),
                                                    blurRadius: 3,
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 0.15))
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.white,
                                            ),
                                            child: Stack(
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 20.0,
                                                                  bottom: 10),
                                                          child: SvgPicture.asset(
                                                              'assets/images/vitrinaxans.svg'),
                                                        ),
                                                        const Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 30.0,
                                                                  bottom: 10),
                                                          child: Text(
                                                            'ویترین',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    MAIN_FONT_FAMILY,
                                                                fontSize: 12),
                                                          ),
                                                        ),
                                                        Stack(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      top: 20.0,
                                                                      right:
                                                                          10),
                                                              child: SvgPicture
                                                                  .asset(
                                                                "assets/images/consultant_list_moshaver.svg",
                                                                width: 69,
                                                                height: 63,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      left:
                                                                          97.0,
                                                                      top: 23),
                                                              child:
                                                                  Image.asset(
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
                                                      const EdgeInsets.only(
                                                          top: 60.0, left: 22),
                                                  child: Row(
                                                    children: [
                                                      SvgPicture.asset(
                                                        'assets/images/locationaxans.svg',
                                                        width: 20,
                                                        height: 20,
                                                      ),
                                                      const SizedBox(
                                                        width: 45,
                                                      ),
                                                      const Text(
                                                        'تــهـران',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                MAIN_FONT_FAMILY,
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
                                            width: 390,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              boxShadow: const [
                                                BoxShadow(
                                                    offset: Offset(0, 0),
                                                    blurRadius: 3,
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 0.15))
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.white,
                                            ),
                                            child: Stack(
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 20.0,
                                                                  bottom: 10),
                                                          child: SvgPicture.asset(
                                                              'assets/images/vitrinaxans.svg'),
                                                        ),
                                                        const Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 30.0,
                                                                  bottom: 10),
                                                          child: Text(
                                                            'ویترین',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    MAIN_FONT_FAMILY,
                                                                fontSize: 12),
                                                          ),
                                                        ),
                                                        Stack(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      top: 20.0,
                                                                      right:
                                                                          10),
                                                              child: SvgPicture
                                                                  .asset(
                                                                "assets/images/consultant_list_moshaver.svg",
                                                                width: 69,
                                                                height: 63,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      left:
                                                                          97.0,
                                                                      top: 23),
                                                              child:
                                                                  Image.asset(
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
                                                      const EdgeInsets.only(
                                                          top: 60.0, left: 22),
                                                  child: Row(
                                                    children: [
                                                      SvgPicture.asset(
                                                        'assets/images/locationaxans.svg',
                                                        width: 20,
                                                        height: 20,
                                                      ),
                                                      const SizedBox(
                                                        width: 45,
                                                      ),
                                                      const Text(
                                                        'تــهـران',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                MAIN_FONT_FAMILY,
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
                                    height: 30,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        child: Divider(
                                          indent: 5,
                                          endIndent: 5,
                                          color:
                                              Color.fromRGBO(166, 166, 166, 1),
                                          thickness: 1,
                                        ),
                                      ),
                                      Text(
                                        'آگهی های ویژه',
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          color: Color(0xFF303030),
                                          fontSize: 14,
                                          fontFamily: MAIN_FONT_FAMILY,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    reverse: true,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              width: 300,
                                              height: 260,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                gradient: const LinearGradient(
                                                    colors: GRADIANT_COLOR3),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(1.0),
                                                child: Container(
                                                  width: 350,
                                                  height: 400,
                                                  decoration:
                                                      const BoxDecoration(
                                                          color: Colors
                                                              .transparent),
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          color: Colors.white,
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(4.0),
                                                          child: Column(
                                                            children: [
                                                              Stack(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 300,
                                                                    child: Image
                                                                        .asset(
                                                                      "assets/images/pic.png",
                                                                      fit: BoxFit
                                                                          .fitWidth,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          right:
                                                                              10.0,
                                                                          top:
                                                                              10),
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        "assets/images/Score.svg",
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                          .all(
                                                                          8.0),
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        "assets/images/Pic Number.svg",
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top:
                                                                            115,
                                                                        right:
                                                                            10),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        "assets/images/save.svg",
                                                                        width:
                                                                            15,
                                                                        height:
                                                                            15,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top:
                                                                            115,
                                                                        right:
                                                                            30),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        "assets/images/loc and cam.svg",
                                                                        width:
                                                                            15,
                                                                        height:
                                                                            15,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top:
                                                                            110,
                                                                        left:
                                                                            10),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomLeft,
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        "assets/images/announcement.svg",
                                                                        width:
                                                                            20,
                                                                        height:
                                                                            20,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  SizedBox(
                                                                    height: 35,
                                                                    width: 35,
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              20.0),
                                                                      child: SvgPicture
                                                                          .asset(
                                                                              "assets/images/total price.svg"),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(
                                                                      width:
                                                                          20),
                                                                  const Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top:
                                                                            20.0,
                                                                        right:
                                                                            10),
                                                                    child: Text(
                                                                      "...ویلا 100 متری در زمین 250 متری",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            10,
                                                                        fontFamily:
                                                                            MAIN_FONT_FAMILY,
                                                                        color: Color.fromRGBO(
                                                                            99,
                                                                            99,
                                                                            99,
                                                                            1),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              const SizedBox(
                                                                  height: 5),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  SvgPicture
                                                                      .asset(
                                                                    "assets/images/price.svg",
                                                                    height: 20,
                                                                    width: 20,
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top:
                                                                            10.0,
                                                                        right:
                                                                            10),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      "assets/images/property1.svg",
                                                                      height:
                                                                          15,
                                                                      width: 1,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      "assets/images/Sqm.svg",
                                                                      width: 25,
                                                                      height:
                                                                          25,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
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
                                          width: 20,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              width: 300,
                                              height: 260,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                gradient: const LinearGradient(
                                                    colors: GRADIANT_COLOR3),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(1.0),
                                                child: Container(
                                                  width: 350,
                                                  height: 400,
                                                  decoration:
                                                      const BoxDecoration(
                                                          color: Colors
                                                              .transparent),
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          color: Colors.white,
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(4.0),
                                                          child: Column(
                                                            children: [
                                                              Stack(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 300,
                                                                    child: Image
                                                                        .asset(
                                                                      "assets/images/pic.png",
                                                                      fit: BoxFit
                                                                          .fitWidth,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          right:
                                                                              10.0,
                                                                          top:
                                                                              10),
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        "assets/images/Score.svg",
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                          .all(
                                                                          8.0),
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        "assets/images/Pic Number.svg",
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top:
                                                                            115,
                                                                        right:
                                                                            10),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        "assets/images/save.svg",
                                                                        width:
                                                                            15,
                                                                        height:
                                                                            15,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top:
                                                                            115,
                                                                        right:
                                                                            30),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        "assets/images/loc and cam.svg",
                                                                        width:
                                                                            15,
                                                                        height:
                                                                            15,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top:
                                                                            110,
                                                                        left:
                                                                            10),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomLeft,
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        "assets/images/announcement.svg",
                                                                        width:
                                                                            20,
                                                                        height:
                                                                            20,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  SizedBox(
                                                                    height: 35,
                                                                    width: 35,
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              20.0),
                                                                      child: SvgPicture
                                                                          .asset(
                                                                              "assets/images/total price.svg"),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(
                                                                      width:
                                                                          20),
                                                                  const Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top:
                                                                            20.0,
                                                                        right:
                                                                            10),
                                                                    child: Text(
                                                                      "...ویلا 100 متری در زمین 250 متری",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            10,
                                                                        fontFamily:
                                                                            MAIN_FONT_FAMILY,
                                                                        color: Color.fromRGBO(
                                                                            99,
                                                                            99,
                                                                            99,
                                                                            1),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              const SizedBox(
                                                                  height: 5),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  SvgPicture
                                                                      .asset(
                                                                    "assets/images/price.svg",
                                                                    height: 20,
                                                                    width: 20,
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top:
                                                                            10.0,
                                                                        right:
                                                                            10),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      "assets/images/property1.svg",
                                                                      height:
                                                                          15,
                                                                      width: 1,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      "assets/images/Sqm.svg",
                                                                      width: 25,
                                                                      height:
                                                                          25,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
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
                                  const Text(
                                    'مشاوره و استعلام قیمت',
                                    style: TextStyle(
                                        fontFamily: MAIN_FONT_FAMILY,
                                        fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  const Text(
                                    'مشتاق شنیدن صدای شما هستیم. برای مشاوره و طرح سوالات خود کافیست با ما تماس بگیرید.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF626262),
                                      fontSize: 16,
                                      fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: GRADIANT_COLOR1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1.2),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        width: 205,
                                        height: 54,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Text(
                                              'تماس برای مشاوره',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: MAIN_FONT_FAMILY,
                                                fontWeight: FontWeight.w700,
                                                height: 0,
                                              ),
                                            ),
                                            const SizedBox(width: 15),
                                            SvgPicture.asset(
                                              'assets/images/Support.svg',
                                              width: 25,
                                              height: 25,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        child: Divider(
                                          indent: 5,
                                          endIndent: 5,
                                          color:
                                              Color.fromRGBO(166, 166, 166, 1),
                                          thickness: 1,
                                        ),
                                      ),
                                      Text(
                                        'همه مشاورین',
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          color: Color(0xFF303030),
                                          fontSize: 14,
                                          fontFamily: MAIN_FONT_FAMILY,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    reverse: true,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 250,
                                          width: 165,
                                          decoration: BoxDecoration(
                                              boxShadow: const [
                                                BoxShadow(
                                                    offset: Offset(0, 0),
                                                    blurRadius: 3,
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 0.15))
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: const Color.fromARGB(
                                                  255, 255, 255, 255)),
                                          child: Column(
                                            children: [
                                              const SizedBox(
                                                height: 20,
                                                width: 150,
                                              ),
                                              Column(
                                                children: [
                                                  Stack(
                                                    children: [
                                                      SvgPicture.asset(
                                                          'assets/images/aghahi_agency.svg'),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          left: 18.0,
                                                        ),
                                                        child: Image.asset(
                                                          'assets/images/agahi_moshaver.png',
                                                          width: 71,
                                                          height: 70,
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 250,
                                          width: 165,
                                          decoration: BoxDecoration(
                                              boxShadow: const [
                                                BoxShadow(
                                                    offset: Offset(0, 0),
                                                    blurRadius: 3,
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 0.15))
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: const Color.fromARGB(
                                                  255, 255, 255, 255)),
                                          child: Column(
                                            children: [
                                              const SizedBox(
                                                height: 20,
                                                width: 150,
                                              ),
                                              Column(
                                                children: [
                                                  Stack(
                                                    children: [
                                                      SvgPicture.asset(
                                                          'assets/images/aghahi_agency.svg'),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          left: 18.0,
                                                        ),
                                                        child: Image.asset(
                                                          'assets/images/agahi_moshaver.png',
                                                          width: 71,
                                                          height: 70,
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: Container(
                                              height: 250,
                                              width: 165,
                                              decoration: BoxDecoration(
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      offset: Offset(0, 0),
                                                      blurRadius: 3,
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.15),
                                                    ),
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  color: const Color.fromARGB(
                                                      255, 255, 255, 255)),
                                              child: Column(
                                                children: [
                                                  const SizedBox(
                                                    height: 20,
                                                    width: 150,
                                                  ),
                                                  Column(
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/images/aghahi_agency.svg'),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              left: 18.0,
                                                            ),
                                                            child: Image.asset(
                                                              'assets/images/agahi_moshaver.png',
                                                              width: 71,
                                                              height: 70,
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        child: Divider(
                                          indent: 5,
                                          endIndent: 5,
                                          color:
                                              Color.fromRGBO(166, 166, 166, 1),
                                          thickness: 1,
                                        ),
                                      ),
                                      Text(
                                        'همه آگهی ها',
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          color: Color(0xFF303030),
                                          fontSize: 14,
                                          fontFamily: MAIN_FONT_FAMILY,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
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
                                                width: 1,
                                                color: Color(0xFFA5A5A5)),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          shadows: const [
                                            BoxShadow(
                                              color: Color(0x26000000),
                                              blurRadius: 4,
                                            )
                                          ],
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                                'assets/images/Arrow_list_agency.svg'),
                                            const SizedBox(width: 20),
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
                                      Container(
                                        width: 100,
                                        height: 41,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 6),
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                                width: 1,
                                                color: Color(0xFFA5A5A5)),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          shadows: const [
                                            BoxShadow(
                                              color: Color(0x26000000),
                                              blurRadius: 4,
                                            )
                                          ],
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                                'assets/images/Arrow_list_agency.svg'),
                                            const SizedBox(width: 20),
                                            const Text(
                                              'شهر',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                color: Color(0xFF636363),
                                                fontSize: 12,
                                                fontFamily: MAIN_FONT_FAMILY,
                                                height: 0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 120,
                                        height: 41,
                                        child: TextField(
                                          textAlign: TextAlign.end,
                                          decoration: InputDecoration(
                                            hintText: 'جستجو',
                                            hintStyle: const TextStyle(
                                              fontFamily: MAIN_FONT_FAMILY,
                                              fontSize: 12,
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                color: Color.fromRGBO(
                                                    23, 102, 175, 1),
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                color: Color.fromRGBO(
                                                    23, 102, 175, 1),
                                              ),
                                            ),
                                            prefixIcon: const Padding(
                                              padding:
                                                  EdgeInsetsDirectional.only(
                                                      start: 10.0),
                                              child: Icon(Icons.search),
                                            ),
                                            contentPadding: const EdgeInsets
                                                .only(
                                                bottom: 50,
                                                right:
                                                    10), // افزایش فاصله پایین برای بالا بردن متن
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                                const SizedBox(
                                  height: 20,
                                ),
                                SingleChildScrollView(
                                  reverse: true,
                                  scrollDirection: Axis.horizontal,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
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
                                                  width: 1,
                                                  color: Color(0xFFA5A5A5)),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0x26000000),
                                                blurRadius: 4,
                                              )
                                            ],
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/Arrow_list_agency.svg'),
                                              const SizedBox(width: 5),
                                              const Text(
                                                'مرتب سازی',
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
                                                  width: 1,
                                                  color: Color(0xFFA5A5A5)),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0x26000000),
                                                blurRadius: 4,
                                              )
                                            ],
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/Arrow_list_agency.svg'),
                                              const SizedBox(width: 15),
                                              const Text(
                                                'قیمت',
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
                                                  width: 1,
                                                  color: Color(0xFFA5A5A5)),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0x26000000),
                                                blurRadius: 4,
                                              )
                                            ],
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
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
                                                  width: 1,
                                                  color: Color(0xFFA5A5A5)),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0x26000000),
                                                blurRadius: 4,
                                              )
                                            ],
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/Arrow_list_agency.svg'),
                                              const SizedBox(width: 10),
                                              const Text(
                                                'نوع آگهی',
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
                                const SizedBox(
                                  height: 30,
                                ),

                                Column(
                                  children: [
                                    Container(
                                      width: 350,
                                      height: 290,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        gradient: const LinearGradient(
                                            colors: GRADIANT_COLOR3),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(1.0),
                                        child: Container(
                                          height: 400,
                                          decoration: const BoxDecoration(
                                              color: Colors.transparent),
                                          child: Stack(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Colors.white,
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  child: Column(
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          SizedBox(
                                                            width: 362,
                                                            child: Image.asset(
                                                              "assets/images/pic.png",
                                                              fit: BoxFit
                                                                  .fitWidth,
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      right:
                                                                          10.0,
                                                                      top: 10),
                                                              child: SvgPicture
                                                                  .asset(
                                                                "assets/images/Score.svg",
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                "assets/images/Pic Number.svg",
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 115,
                                                                    right: 10),
                                                            child: Align(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              child: SvgPicture
                                                                  .asset(
                                                                "assets/images/save.svg",
                                                                width: 15,
                                                                height: 15,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 115,
                                                                    right: 30),
                                                            child: Align(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              child: SvgPicture
                                                                  .asset(
                                                                "assets/images/loc and cam.svg",
                                                                width: 15,
                                                                height: 15,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 110,
                                                                    left: 10),
                                                            child: Align(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              child: SvgPicture
                                                                  .asset(
                                                                "assets/images/announcement.svg",
                                                                width: 20,
                                                                height: 20,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          SizedBox(
                                                            height: 35,
                                                            width: 35,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      top:
                                                                          20.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                      "assets/images/total price.svg"),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              width: 20),
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 20.0,
                                                                    right: 10),
                                                            child: Text(
                                                              "...ویلا 100 متری در زمین 250 متری",
                                                              style: TextStyle(
                                                                fontSize: 10,
                                                                fontFamily:
                                                                    MAIN_FONT_FAMILY,
                                                                color: Color
                                                                    .fromRGBO(
                                                                        99,
                                                                        99,
                                                                        99,
                                                                        1),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(height: 5),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          SvgPicture.asset(
                                                            "assets/images/price.svg",
                                                            height: 20,
                                                            width: 20,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 10.0,
                                                                    right: 10),
                                                            child: SvgPicture
                                                                .asset(
                                                              "assets/images/property1.svg",
                                                              height: 15,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: SvgPicture
                                                                .asset(
                                                              "assets/images/Sqm.svg",
                                                              width: 25,
                                                              height: 25,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
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
                                  height: 20,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 350,
                                      height: 290,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        gradient: const LinearGradient(
                                            colors: GRADIANT_COLOR3),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(1.0),
                                        child: Container(
                                          height: 400,
                                          decoration: const BoxDecoration(
                                              color: Colors.transparent),
                                          child: Stack(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Colors.white,
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  child: Column(
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          SizedBox(
                                                            width: 362,
                                                            child: Image.asset(
                                                              "assets/images/pic.png",
                                                              fit: BoxFit
                                                                  .fitWidth,
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      right:
                                                                          10.0,
                                                                      top: 10),
                                                              child: SvgPicture
                                                                  .asset(
                                                                "assets/images/Score.svg",
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                "assets/images/Pic Number.svg",
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 115,
                                                                    right: 10),
                                                            child: Align(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              child: SvgPicture
                                                                  .asset(
                                                                "assets/images/save.svg",
                                                                width: 15,
                                                                height: 15,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 115,
                                                                    right: 30),
                                                            child: Align(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              child: SvgPicture
                                                                  .asset(
                                                                "assets/images/loc and cam.svg",
                                                                width: 15,
                                                                height: 15,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 110,
                                                                    left: 10),
                                                            child: Align(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              child: SvgPicture
                                                                  .asset(
                                                                "assets/images/announcement.svg",
                                                                width: 20,
                                                                height: 20,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          SizedBox(
                                                            height: 35,
                                                            width: 35,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      top:
                                                                          20.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                      "assets/images/total price.svg"),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              width: 20),
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 20.0,
                                                                    right: 10),
                                                            child: Text(
                                                              "...ویلا 100 متری در زمین 250 متری",
                                                              style: TextStyle(
                                                                fontSize: 10,
                                                                fontFamily:
                                                                    MAIN_FONT_FAMILY,
                                                                color: Color
                                                                    .fromRGBO(
                                                                        99,
                                                                        99,
                                                                        99,
                                                                        1),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(height: 5),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          SvgPicture.asset(
                                                            "assets/images/price.svg",
                                                            height: 20,
                                                            width: 20,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 10.0,
                                                                    right: 10),
                                                            child: SvgPicture
                                                                .asset(
                                                              "assets/images/property1.svg",
                                                              height: 15,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: SvgPicture
                                                                .asset(
                                                              "assets/images/Sqm.svg",
                                                              width: 25,
                                                              height: 25,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                            ),
                          ),
                        )));
              }),
        ],
      ),
    );
  }
}
