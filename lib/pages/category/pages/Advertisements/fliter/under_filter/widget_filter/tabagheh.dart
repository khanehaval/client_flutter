import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';

Widget tabagheh() {
  return Container(
    height: 50,
    width: 330,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 205, 203, 203),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromRGBO(
                183,
                183,
                183,
                1,
              )),
          child: Container(
            width: 264,
            height: 35,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x11000000),
                  blurRadius: 7,
                  offset: Offset(0, 5),
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/images/arrow_down.svg",
                    width: 10,
                    height: 10,
                    color: const Color.fromRGBO(
                      48,
                      48,
                      48,
                      1,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Text(
                    'انتخاب کنید',
                    style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY,
                        fontSize: 12,
                        color: Color.fromRGBO(166, 166, 166, 1)),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Text(
          "حداقل",
          style: TextStyle(
            fontFamily: MAIN_FONT_FAMILY,
            fontSize: 11,
            color: Color.fromRGBO(99, 99, 99, 1),
          ),
        ),
      ],
    ),
  );
}

Widget tabagheh2() {
  return Container(
    height: 50,
    width: 330,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 205, 203, 203),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromRGBO(
                183,
                183,
                183,
                1,
              )),
          child: Container(
            width: 264,
            height: 35,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x11000000),
                  blurRadius: 7,
                  offset: Offset(0, 5),
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/images/arrow_down.svg",
                    width: 10,
                    height: 10,
                    color: const Color.fromRGBO(
                      48,
                      48,
                      48,
                      1,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Text(
                    'انتخاب کنید',
                    style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY,
                        fontSize: 12,
                        color: Color.fromRGBO(166, 166, 166, 1)),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Text(
          "حداکثر",
          style: TextStyle(
            fontFamily: MAIN_FONT_FAMILY,
            fontSize: 11,
            color: Color.fromRGBO(99, 99, 99, 1),
          ),
        ),
      ],
    ),
  );
}
