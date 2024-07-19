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
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 30),
                    child: SvgPicture.asset(
                      'assets/images/Group 2.svg',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 110.0, left: 40, right: 10),
                child: Column(
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
            ],
          ),
        ),
      ],
    );
  }
}