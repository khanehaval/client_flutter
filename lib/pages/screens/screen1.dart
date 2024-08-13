import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/register/register.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: Get.height / 1.7,
                      width: 412,
                      child: Image.asset(
                        'assets/images/BG 3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 4),
                      child: SvgPicture.asset(
                        'assets/images/Page 1.svg',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 170.0, left: 55, right: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "جستجو در نقشه",
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 18,
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
                          fontSize: 16,
                          fontFamily: 'Iran Sans'),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ]);
  }
}
