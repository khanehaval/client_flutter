import 'package:flutter/material.dart';
import 'package:flutter_application_1/register/register.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      globalBackgroundColor: Colors.white,
      // scrollPhysics: BouncingScrollPhysics(),
      pages: [
        PageViewModel(
          titleWidget: Column(
            children: [
              Image.asset(
                'assets/images/Page 1.png',
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Text(
                    'اینجا کلی امکانات جدید و جذاب داریم، آگهی، مشاور، آژانس همه روی نقشه منتظر شما هستند',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          ),
          body: "",
          image: Image.asset(
            'assets/images/Vector.png',
            height: 500,
            width: 500,
          ),
        ),
        PageViewModel(
          titleWidget: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'دیگه لازم نیست از این بنگاه به اون بنگاه بری و ملکتون رو فایل کنین، ما تمامی ابزارهای خدمات ملک رو اینجا جمع کردیم ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          body: "",
          image: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              Image.asset(
                'assets/images/Group 2.png',
                height: 210,
                width: 350,
              ),
            ],
          ),
        ),
        PageViewModel(
          titleWidget: Column(
            children: [
              Image.asset(
                'assets/images/4.png',
                height: 290,
                width: 400,
              ),
              SizedBox(
                height: 30,
                width: 100,
              ),
              Text(
                'دیگه لازم نیست ساعت ها تو ترافیک دنبال مشاور خوب و بنگاه بگردی، ما همه رو اینجا جمع کردیم ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          body: "",
          image: Image.asset(
            'assets/images/3.png',
            fit: BoxFit.cover,
            height: double.maxFinite,
            width: 600,
          ),
        ),
      ],
      onDone: () {
        Get.to(() => Register());
      },
      onSkip: () {
        Get.to(() => Register());
      },
      showSkipButton: true,
      skip: Text(
        "skip",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Color(0xFF6C63FF),
        ),
      ),
      next: Icon(
        Icons.arrow_forward,
        color: Color(0xFF6C63FF),
      ),
      done: Text(
        "Done",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Color(0xFF6C63FF),
        ),
      ),
      dotsDecorator: DotsDecorator(
        activeSize: Size(20.0, 10.0),
        color: Colors.black26,
        activeColor: Color(0xFF65EDC2),
        spacing: EdgeInsets.symmetric(horizontal: 3.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    ));
  }
}
