import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: Stack(children: [
                Image.asset(
                  'assets/images/BG 1.png',
                  height: 450,
                  width: MediaQuery.of(context).size.width / 1.0,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 50),
                  child: SvgPicture.asset(
                    'assets/images/property3.svg',
                  ),
                )
              ]),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 170.0, left: 45, right: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'مشاورین متخصص',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
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
                'دیگه لازم نیست ساعت ها تو ترافیک دنبال مشاور خوب و بنگاه بگردی، ما همه رو اینجا جمع کردیم... ',
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
      ],
    );
  }
}
