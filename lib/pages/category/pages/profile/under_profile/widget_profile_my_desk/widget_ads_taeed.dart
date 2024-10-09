import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get.dart';

class WidgetAdsTaeed extends StatelessWidget {
  const WidgetAdsTaeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: Get.width / 2.5,
          height: 55,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 3,
                offset: Offset(0, 0),
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '25',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 12,
                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'آگهی های منتشر شده',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 12,
                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: Get.width / 2.5,
          height: 55,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 3,
                offset: Offset(0, 0),
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '5',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 12,
                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'آگهی های در انتظار تائید',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 12,
                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                      ),
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
