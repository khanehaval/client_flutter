import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/register/register.dart';
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
              Get.off(() => const Register());
            } else {
              _sliderIndex.value = index + 1;
            }
          },
          child: Column(
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
                            'assets/images/Group 2376.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "جستجو در نقشه:",
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 18,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'اینجا کلی امکانات جدید و جذاب \nداریم، آگهی، مشاور، آژانس همه\n روی نقشه منتظر شما هستند...',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontFamily: 'Iran Sans'),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              _nextRow(0)
            ],
          ),
        ),
        GestureDetector(
          onHorizontalDragStart: (details) {
            if (index > 2) {
              Get.off(() => const Register());
            } else {
              _sliderIndex.value = index + 2;
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
                        Image.asset(
                          'assets/images/Group 2375.png',
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'امکانات ویژه',
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
                            'دیگه لازم نیست از این بنگاه به\n اون بنگاه بری و ملکتون رو فایل\n کنین، ما تمامی ابزارهای خدمات\n ملک رو اینجا جمع کردیم ',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                fontFamily: 'Iran Sans'),
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.justify,
                          ),
                        ],
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
            } else {
              Get.off(() => const Register());
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).padding.top),
                    child: Image.asset(
                      'assets/images/Group 2374.png',
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 27),
                child: Column(
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
              _nextRow(2)
            ],
          ),
        )
      ];

  Widget _nextRow(int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 23, left: 50, right: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [0, 1, 2]
                .map((e) => Icon(
                      Icons.circle,
                      size: 11,
                      color: index == e ? Colors.green : Colors.black38,
                    ))
                .toList(),
          ),
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              if (index == 2) {
                Get.off(() => const Register());
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
                      width: 18,
                      height: 18,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.topRight,
      children: [
        Obx(() => _sliders(context)[_sliderIndex.value]),
        Obx(
          () => _sliderIndex.value == 0
              ? const SizedBox.shrink()
              : Padding(
                  padding: const EdgeInsets.only(right: 330, top: 40),
                  child: IconButton(
                      onPressed: () {
                        Get.off(() => const Register());
                      },
                      icon: SvgPicture.asset(
                        'assets/images/Vector-47.svg',
                      )),
                ),
        )
      ],
    ));
  }
}

double getPageWidth_2(BuildContext context) => getPageWidth();
LinearGradient GetGradient() => const LinearGradient(colors: [
      Color.fromARGB(255, 95, 173, 237),
      Color.fromARGB(126, 118, 238, 146),
    ]);
