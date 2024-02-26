import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/register/register.dart';
import 'package:get/get.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  final _sliderIndex = 0.obs;

  List<Widget> _sliders() => [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/Vector.png',
            ),
            Image.asset(
              'assets/images/slider_1.png',
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'اینجا کلی امکانات جدید و جذاب داریم، آگهی، مشاور، آژانس همه روی نقشه منتظر شما هستند...',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
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
              height: 80,
            ),
            Image.asset(
              'assets/images/Group 2.png',
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'دیگه لازم نیست از این بنگاه به اون بنگاه بری و ملکتون رو فایل کنین، ما تمامی ابزارهای خدمات ملک رو اینجا جمع کردیم ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
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
                Image.asset(
                  'assets/images/3.png',
                ),
                Image.asset(
                  'assets/images/4.png',
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'دیگه لازم نیست ساعت ها تو ترافیک دنبال مشاور خوب و بنگاه بگردی، ما همه رو اینجا جمع کردیم... ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
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
      padding: const EdgeInsets.only(bottom: 20),
      child: IconButton(
          onPressed: () {
            if (index == 2) {
              Get.off(() => const Register());
            } else {
              _sliderIndex.value = index + 1;
            }
          },
          icon: const Icon(
            Icons.navigate_next,
            size: 43,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.topRight,
      children: [
        Obx(() => _sliders()[_sliderIndex.value]),
        Padding(
          padding: const EdgeInsets.only(right: 8, top: 22),
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
    )

        //     IntroductionScreen(
        //   globalBackgroundColor: Colors.white,
        //   showBackButton: false,
        //   showDoneButton: false,
        //   overrideNext: const Center(
        //     child: Icon(Icons.navigate_next),
        //   ),
        //   pages: [
        //     PageViewModel(
        //       titleWidget: Column(
        //         children: [],
        //       ),
        //       body: "",
        //       image: SizedBox(
        //         height: 305,
        //         child: Image.asset(
        //           'assets/images/Vector.png',
        //           height: 400,
        //           width: 400,
        //         ),
        //       ),
        //     ),
        //     PageViewModel(
        //       titleWidget: Column(
        //         children: [
        //           Image.asset(
        //             'assets/images/Group 2.png',
        //             height: 193,
        //             width: 300,
        //           ),
        //           Text(
        //             'دیگه لازم نیست از این بنگاه به اون بنگاه بری و ملکتون رو فایل کنین، ما تمامی ابزارهای خدمات ملک رو اینجا جمع کردیم ',
        //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        //             textAlign: TextAlign.center,
        //           ),
        //         ],
        //       ),
        //       body: "",
        //       image: Image.asset(
        //         'assets/images/intro_screen_2',
        //         height: 193,
        //         width: 300,
        //       ),
        //     ),
        //     PageViewModel(
        //       titleWidget: Column(
        //         children: [
        //           Image.asset(
        //             'assets/images/4.png',
        //             height: 290,
        //             width: 400,
        //           ),
        //           SizedBox(
        //             height: 30,
        //             width: 100,
        //           ),
        //           Text(
        //             'دیگه لازم نیست ساعت ها تو ترافیک دنبال مشاور خوب و بنگاه بگردی، ما همه رو اینجا جمع کردیم ',
        //             style: TextStyle(
        //               fontWeight: FontWeight.bold,
        //               fontSize: 22,
        //             ),
        //             textAlign: TextAlign.center,
        //           ),
        //         ],
        //       ),
        //       body: "",
        //       image: Image.asset(
        //         'assets/images/3.png',
        //         fit: BoxFit.cover,
        //         height: double.maxFinite,
        //         width: 600,
        //       ),
        //     ),
        //   ],
        //   onDone: () {
        //     Get.to(() => Register());
        //   },
        //   onSkip: () {
        //     Get.to(() => Register());
        //   },
        //   showSkipButton: true,
        //   skip: Text(
        //     "skip",
        //     style: TextStyle(
        //       fontWeight: FontWeight.bold,
        //       fontSize: 18,
        //       color: Color(0xFF6C63FF),
        //     ),
        //   ),
        //   // next: Icon(
        //   //   Icons.arrow_forward,
        //   //   color: Color(0xFF6C63FF),
        //   // ),
        //   // done: Text(
        //   //   "Done",
        //   //   style: TextStyle(
        //   //     fontWeight: FontWeight.bold,
        //   //     fontSize: 18,
        //   //     color: Color(0xFF6C63FF),
        //   //   ),
        //   // ),
        //   dotsDecorator: DotsDecorator(
        //     activeSize: Size(20.0, 10.0),
        //     color: Colors.black26,
        //     activeColor: Color(0xFF65EDC2),
        //     spacing: EdgeInsets.symmetric(horizontal: 3.0),
        //     activeShape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(25.0),
        //     ),
        //   ),
        // )
        );
  }
}
