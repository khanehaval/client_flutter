import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';

Widget rahn() {
  return Container(
    height: 50,
    width: 330,
    decoration: BoxDecoration(
      color: const Color.fromRGBO(183, 183, 183, 1),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          color: Colors.white,
          height: 30,
          width: 250,
          child: TextFormField(
              readOnly: true,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                  hintText: 'انتخاب کنید (به تومان)',
                  hintStyle: const TextStyle(
                      color: Color.fromRGBO(166, 166, 166, 1),
                      fontSize: 10,
                      fontFamily: MAIN_FONT_FAMILY),
                  border: const OutlineInputBorder(),
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/images/arrow_down.svg",
                      width: 10,
                      height: 10,
                    ),
                  ))),
        ),
        const Text(
          "حداقل",
          style: TextStyle(
            fontFamily: MAIN_FONT_FAMILY,
            fontSize: 11,
            color: Color.fromRGBO(99, 99, 99, 1),
          ),
        )
      ],
    ),
  );
}

Widget rahn2() {
  return Stack(children: [
    Container(
      height: 50,
      width: 325,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(183, 183, 183, 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            color: Colors.white,
            height: 30,
            width: 250,
            child: TextFormField(
                readOnly: true,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                    hintText: 'انتخاب کنید (به تومان)',
                    hintStyle: const TextStyle(
                        color: Color.fromRGBO(166, 166, 166, 1),
                        fontSize: 10,
                        fontFamily: MAIN_FONT_FAMILY),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets/images/arrow_down.svg",
                        width: 10,
                        height: 10,
                      ),
                    ))),
          ),
          const Text(
            "حداکثر",
            style: TextStyle(
              fontFamily: MAIN_FONT_FAMILY,
              fontSize: 11,
              color: Color.fromRGBO(99, 99, 99, 1),
            ),
          )
        ],
      ),
    )
  ]);
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