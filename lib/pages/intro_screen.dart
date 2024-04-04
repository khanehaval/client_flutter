import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/register/register.dart';
import 'package:get/get.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  final _sliderIndex = 0.obs;

  List<Widget> _sliders(BuildContext context) => [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                  child: Image.asset(
                    'assets/images/Vector.png',
                  ),
                ),
                Image.asset(
                  'assets/images/slider_1.png',
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Text(
                'اینجا کلی امکانات جدید و جذاب داریم، آگهی، مشاور، آژانس همه روی نقشه منتظر شما هستند...',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  fontFamily: MAIN_FONT_FAMILY,
                ),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.justify,
              ),
            ),
            _nextButton(0)
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/images/Group 2.png',
              height: 200,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'دیگه لازم نیست از این بنگاه به اون بنگاه بری و ملکتون رو فایل کنین، ما تمامی ابزارهای خدمات ملک رو اینجا جمع کردیم ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  fontFamily: MAIN_FONT_FAMILY,
                ),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.justify,
              ),
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  'assets/images/intro_screen_2.png',
                ),
                _nextButton(1)
              ],
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).padding.top),
                  child: Image.asset(
                    'assets/images/3.png',
                  ),
                ),
                Image.asset(
                  'assets/images/4.png',
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 27),
              child: Text(
                'دیگه لازم نیست ساعت ها تو ترافیک دنبال مشاور خوب و بنگاه بگردی، ما همه رو اینجا جمع کردیم... ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  fontFamily: MAIN_FONT_FAMILY,
                ),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.justify,
              ),
            ),
            _nextButton(2)
          ],
        )
      ];

  Widget _nextButton(int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 23),
      child: IconButton(
          onPressed: () {
            if (index == 2) {
              Get.off(() => const Register());
            } else {
              _sliderIndex.value = index + 1;
            }
          },
          icon: Image.asset(
            'assets/images/arrow_right.png',
            width: 30,
            height: 30,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.topRight,
      children: [
        Obx(() => _sliders(context)[_sliderIndex.value]),
        Padding(
          padding: const EdgeInsets.only(right: 8, top: 40),
          child: IconButton(
              onPressed: () {
                Get.off(() => const Register());
              },
              icon: const Icon(
                Icons.clear,
                size: 35,
              )),
        ),
      ],
    ));
  }
}

double getPageWidth_2(BuildContext context) =>
    MediaQuery.of(context).size.width * 0.4;
