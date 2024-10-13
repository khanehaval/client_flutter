import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class WidgetRow extends StatelessWidget {
  const WidgetRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11), color: Colors.grey),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 3,
                          color: Color.fromRGBO(0, 0, 0, 0.15))
                    ],
                    color: Colors.white),
                width: Get.width / 8,
                height: 31,
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'تا تاریخ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(166, 166, 166, 1),
                        fontSize: 10,
                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11), color: Colors.grey),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 3,
                          color: Color.fromRGBO(0, 0, 0, 0.15))
                    ],
                    color: Colors.white),
                width: Get.width / 8,
                height: 31,
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'از تاریخ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(166, 166, 166, 1),
                        fontSize: 10,
                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11), color: Colors.grey),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                width: Get.width / 6.5,
                height: 31,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/arrow_down.svg',
                      width: 7,
                      height: 7,
                    ),
                    const Text(
                      'وضعیت ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 9,
                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11), color: Colors.grey),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                width: Get.width / 5.5,
                height: 31,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/arrow_down.svg',
                      width: 7,
                      height: 7,
                    ),
                    const Text(
                      'نوع ملک',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 10,
                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11), color: Colors.grey),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                width: Get.width / 5.5,
                height: 31,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/arrow_down.svg',
                      width: 7,
                      height: 7,
                    ),
                    const Text(
                      'نوع آگهی',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 10,
                        fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
