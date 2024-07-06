import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';

Widget rahn() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: const Color.fromRGBO(
        183,
        183,
        183,
        1,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        height: 50,
        width: 310,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 50, 48, 48),
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
                width: 237,
                height: 35,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x7000000),
                      blurRadius: 2,
                      offset: Offset(-1, 3),
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
                        'انتخاب کنید (به تومان)',
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
                fontSize: 12,
                color: Color.fromRGBO(99, 99, 99, 1),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget rahn2() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: const Color.fromRGBO(
        183,
        183,
        183,
        1,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        height: 50,
        width: 310,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 225, 225, 225),
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
                width: 237,
                height: 35,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x7000000),
                      blurRadius: 2,
                      offset: Offset(-1, 3),
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
                        'انتخاب کنید (به تومان)',
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
                fontSize: 12,
                color: Color.fromRGBO(99, 99, 99, 1),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

//  Container(
//             height: 35,
//             width: 250,
//             decoration: BoxDecoration(
//                 color: const Color.fromRGBO(250, 250, 250, 1),
//                 border:
//                     Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
//                 borderRadius: BorderRadius.circular(15)),
//             child: Column(children: [
//               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//                 IconButton(
//                   icon: Padding(
//                     padding: const EdgeInsets.only(bottom: 10),
//                     child: SvgPicture.asset(
//                       "assets/images/arrow_down.svg",
//                     ),
//                   ),
//                   onPressed: () {},
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.only(bottom: 10),
//                   child: Text(
//                     'انتخاب کنید (به تومان)',
//                     style: TextStyle(
//                         color: Color.fromRGBO(166, 166, 166, 1),
//                         fontSize: 10,
//                         fontFamily: MAIN_FONT_FAMILY),
//                   ),
//                 ),
//               ]),
//             ])),
//         const Text(
//           "حداکثر",
//           style: TextStyle(
//             fontFamily: MAIN_FONT_FAMILY,
//             fontSize: 11,
//             color: Color.fromRGBO(99, 99, 99, 1),
//           ),
//         )
//       ])