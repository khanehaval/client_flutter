import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/dao/user_dao.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/register/register.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  var userDao = GetIt.I.get<UserDao>();
  // userDao.save(user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: SizedBox(
        height: 915,
        width: 500,
        child: IntroductionScreen(
          globalBackgroundColor: Colors.white,

          // scrollPhysics: BouncingScrollPhysics(),
          pages: [
            PageViewModel(
              titleWidget: const Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        'اینجا کلی امکانات جدید و جذاب داریم، آگهی، مشاور، آژانس همه روی نقشه منتظر شما هستند',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          fontFamily: MAIN_FONT_FAMILY,
                        ),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ],
              ),
              body: "",
              image: Stack(children: [
                Image.asset(
                  'assets/images/Vector111 1.png',
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 212,
                  width: 220,
                  child: SvgPicture.asset(
                    'assets/images/Page 1.svg',
                  ),
                )
              ]),
            ),
            PageViewModel(
              titleWidget: Padding(
                padding:
                    EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      'دیگه لازم نیست از این بنگاه به اون بنگاه بری و ملکتون رو فایل کنین، ما تمامی ابزارهای خدمات ملک رو اینجا جمع کردیم ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              body: "",
              image: Column(
                children: [
                  Image.asset(
                    'assets/images/Vector11 1.png',
                    fit: BoxFit.cover,
                    height: 412,
                    width: 412,
                  ),
                ],
              ),
            ),
            PageViewModel(
              titleWidget: const Column(
                children: [
                  SizedBox(),
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
                'assets/images/Vector22.png',
                fit: BoxFit.cover,
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
          skip: const Text(
            "skip",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color(0xFF6C63FF),
            ),
          ),
          next: const Icon(
            Icons.arrow_forward,
            color: Color(0xFF6C63FF),
          ),
          done: const Text(
            "Done",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color(0xFF6C63FF),
            ),
          ),
          dotsDecorator: DotsDecorator(
            activeSize: const Size(20.0, 10.0),
            color: Colors.black26,
            activeColor: const Color(0xFF65EDC2),
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
        ),
      ),
    ));
  }
}
