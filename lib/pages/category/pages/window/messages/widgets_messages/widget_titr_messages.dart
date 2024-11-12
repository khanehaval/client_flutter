import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WidgetTitrMessages extends StatelessWidget {
  const WidgetTitrMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: Get.width / 3.4,
          height: 74,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 3,
                offset: Offset(0, 0),
                spreadRadius: 0,
              )
            ],
          ),
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('1402',
                          style: TextStyle(
                              fontSize: 14, fontFamily: MAIN_FONT_FAMILY)),
                      Text(
                        'مرداد',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: MAIN_FONT_FAMILY,
                            color: Color.fromRGBO(255, 122, 0, 1)),
                      ),
                      Text(
                        '25',
                        style: TextStyle(
                            fontSize: 14, fontFamily: MAIN_FONT_FAMILY),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset(
                        'assets/images/Message_profile_home.svg',
                        width: 20,
                        height: 20,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          width: Get.width / 1.8,
          height: 74,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 3,
                offset: Offset(0, 0),
                spreadRadius: 0,
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  Container(
                    width: 58,
                    height: 50,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: GRADIANT_COLOR1),
                        shape: BoxShape.circle),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        height: 50,
                        width: 58,
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/logo-fa-photoshop.png',
                            width: 50,
                            height: 50,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 45.0, top: 15),
                    child: SvgPicture.asset(
                      'assets/images/edit_icon_profile.svg',
                      width: 50,
                      height: 20,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/Score_axansbartar.png',
                      width: 70,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.verified,
                          color: Colors.blue,
                        ),
                        Text(
                          "خانه اول",
                          style: TextStyle(
                              fontSize: 14, fontFamily: MAIN_FONT_FAMILY),
                        ),
                      ],
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
