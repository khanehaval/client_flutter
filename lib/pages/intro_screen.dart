import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/register/register.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class IntroScreen extends StatelessWidget {
  final _sliderIndex = 0.obs;
  int index = 0;
  IntroScreen({super.key});
  List<Widget> _sliders(BuildContext context) => [
        GestureDetector(
          onHorizontalDragStart: (details) {
            if (index > 1) {
              Get.off(
                () => const Register(),
              );
            } else {
              _sliderIndex.value = index + 1;
            }
          },
          child: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            height: 473,
                            width: 412,
                            child: Image.asset(
                              'assets/images/Rectangle1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 400, right: 320),
                            child: IconButton(
                                icon: SvgPicture.asset(
                                    'assets/images/Vector-47.svg'),
                                onPressed: () =>
                                    Get.to(() => const Register())),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 70, left: 4),
                            child: SvgPicture.asset(
                              'assets/images/Page 1.svg',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "جستجو در نقشه:",
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 21,
                          fontFamily: MAIN_FONT_FAMILY,
                        ),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'اینجا کلی امکانات جدید و جذاب داریم  آگهی، مشاور، آژانس همه روی نقشه منتظر شما هستند...',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            fontFamily: 'Iran Sans'),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.justify,
                      )
                    ],
                  ),
                ),
                _nextRow(0)
              ],
            ),
          ]),
        ),
        GestureDetector(
          onHorizontalDragStart: (details) {
            if (index > 2) {
              Get.off(() => const Register());
            } else {
              _sliderIndex.value = index + 1;
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/Rectangle 457.svg',
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 30),
                          child: SvgPicture.asset(
                            'assets/images/Group 2.svg',
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: FadeInDown(
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'امکانات ویژه',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                fontFamily: MAIN_FONT_FAMILY,
                              ),
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'دیگه لازم نیست از این بنگاه به\n اون بنگاه بری و ملکتون رو فایل\n کنین، ما تمامی ابزارهای خدمات\n ملک رو اینجا جمع کردیم ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  fontFamily: 'Iran Sans'),
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              _nextRow(1)
            ],
          ),
        ),
        GestureDetector(
          onHorizontalDragStart: (details) {
            if (index > 3) {
              Get.off(() => const Register());
            } else {
              _sliderIndex.value = index + 1;
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Stack(children: [
                    SvgPicture.asset(
                      'assets/images/Rectangle 458.svg',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 80, left: 50),
                      child: SvgPicture.asset(
                        'assets/images/property3.svg',
                      ),
                    )
                  ]),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: FadeInDown(
                  duration: const Duration(milliseconds: 350),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'مشاورین متخصص',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: MAIN_FONT_FAMILY,
                        ),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'دیگه لازم نیست ساعت ها تو ترافیک\n دنبال مشاور خوب و بنگاه بگردی، ما\n همه رو اینجا جمع کردیم... ',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            fontFamily: 'Iran Sans'),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
              _start(2)
            ],
          ),
        )
      ];

  Widget _nextRow(int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 23, left: 40, right: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [0, 1, 2]
                .map((e) => Icon(Icons.circle,
                    size: 11,
                    color: index == e
                        ? Colors.green
                        : const Color.fromRGBO(183, 183, 183, 100)))
                .toList(),
          ),
          GestureDetector(
            onTap: () {
              if (index == 2) {
                Get.off(
                  () => const Register(),
                );
              } else {
                _sliderIndex.value = index + 1;
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: GetGradient(),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 5, bottom: 5, left: 12, right: 12),
                child: Row(
                  children: [
                    const Text(
                      "بعدی",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/images/arrow_right.png',
                      width: 17,
                      height: 17,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _start(int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 23, left: 40, right: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [0, 1, 2]
                .map((e) => Icon(Icons.circle,
                    size: 11,
                    color: index == e
                        ? Colors.green
                        : const Color.fromRGBO(183, 183, 183, 100)))
                .toList(),
          ),
          GestureDetector(
            onTap: () {
              if (index == 2) {
                Get.off(
                  () => const Register(),
                );
              } else {
                _sliderIndex.value = index + 1;
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: GetGradient(),
              ),
              child: const Padding(
                padding:
                    EdgeInsets.only(top: 5, bottom: 5, left: 25, right: 25),
                child: Row(
                  children: [
                    Text(
                      "شروع",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.topRight,
      children: [
        Obx(() => _sliders(context)[_sliderIndex.value]),
        Obx(() => _sliderIndex.value == 0
            ? const SizedBox.shrink()
            : Padding(
                padding: const EdgeInsets.only(right: 330, top: 40),
                child: IconButton(
                    icon: SvgPicture.asset('assets/images/Vector.svg'),
                    onPressed: () {
                      if (index > 2) {
                        _sliderIndex.value = index - 1;
                      }
                    }),
              ))
      ],
    ));
  }
}

double getPageWidth_2(BuildContext context) => getPageWidth();
LinearGradient GetGradient() => const LinearGradient(colors: [
      Color.fromRGBO(144, 199, 255, 1),
      Color.fromRGBO(144, 236, 218, 1),
      Color.fromRGBO(160, 241, 168, 1),
    ]);
