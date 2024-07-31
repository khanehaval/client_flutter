import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/images/BG 2.png',
                    height: 450,
                    width: MediaQuery.of(context).size.width / 1.0,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: SvgPicture.asset(
                      'assets/images/Group 2.svg',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 200.0),
                        child: Text(
                          'امکانات ویژه',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: MAIN_FONT_FAMILY,
                          ),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(bottom: 140.0, left: 40, right: 40),
                        child: Text(
                          'دیگه لازم نیست از این بنگاه به اون بنگاه بریو ملکتون رو فایل کنین، ما تمامی ابزارهای خدمات ملک رو اینجا جمع کردیم ',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontFamily: 'Iran Sans'),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
