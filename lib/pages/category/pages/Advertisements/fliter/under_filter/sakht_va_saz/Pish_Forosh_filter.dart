import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/intro_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class PishForoshFilter extends StatelessWidget {
  final shakhsi = false.obs;
  final amlak = false.obs;
  final moshaver = false.obs;
  final bazsazi = false.obs;
  final aksdar = false.obs;
  final videodar = false.obs;
  final fori = false.obs;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border:
                      Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "تهران",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 11,
                            fontFamily: MAIN_FONT_FAMILY,
                            color: Color.fromRGBO(99, 99, 99, 1)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: IconButton(
                        icon: SvgPicture.asset("assets/images/location1.svg"),
                        onPressed: () {},
                      ),
                    ),
                  ]),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border:
                      Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "فیلتر",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 11,
                        fontFamily: MAIN_FONT_FAMILY,
                        color: Color.fromRGBO(99, 99, 99, 1)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: IconButton(
                    icon: SvgPicture.asset(
                      "assets/images/filter.svg",
                      width: 18,
                      height: 18,
                    ),
                    onPressed: () {},
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      Column(children: [
        Container(
          height: 50,
          width: 370,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
              icon: SvgPicture.asset("assets/images/Vector-20.svg"),
              onPressed: () {},
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text(
                "محله",
                style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
              ),
            ),
          ]),
        ),
      ]),
      const SizedBox(
        height: 10,
      ),
      Column(children: [
        Container(
          height: 50,
          width: 370,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
              icon: SvgPicture.asset("assets/images/Vector-20.svg"),
              onPressed: () {},
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text(
                "قیمت کل",
                style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
              ),
            ),
          ]),
        ),
      ]),
      const SizedBox(
        height: 10,
      ),
      const SizedBox(
        height: 10,
      ),
      Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color.fromRGBO(250, 250, 250, 1),
                border:
                    Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/images/=.svg',
                        width: 20,
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          "نوع ملک",
                          style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY,
                              color: Color.fromRGBO(48, 48, 48, 1),
                              fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Transform.scale(
                      scale: 0.6,
                      child: Obx(
                        () => Switch(
                            onChanged: (_) => shakhsi.value = _,
                            value: shakhsi.value,
                            activeColor: Colors.white,
                            activeTrackColor:
                                const Color.fromRGBO(54, 216, 89, 1),
                            inactiveThumbColor:
                                const Color.fromRGBO(11, 8, 8, 0.2),
                            inactiveTrackColor:
                                const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        "زمین",
                        style: TextStyle(
                            fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Transform.scale(
                      scale: 0.6,
                      child: Obx(
                        () => Switch(
                            onChanged: (_) => shakhsi.value = _,
                            value: shakhsi.value,
                            activeColor: Colors.white,
                            activeTrackColor:
                                const Color.fromRGBO(54, 216, 89, 1),
                            inactiveThumbColor:
                                const Color.fromRGBO(11, 8, 8, 0.2),
                            inactiveTrackColor:
                                const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        "آپارتمان",
                        style: TextStyle(
                            fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Transform.scale(
                      scale: 0.60,
                      child: Obx(
                        () => Switch(
                            onChanged: (_) => moshaver.value = _,
                            value: moshaver.value,
                            activeColor: Colors.white,
                            activeTrackColor:
                                const Color.fromRGBO(54, 216, 89, 1),
                            inactiveThumbColor:
                                const Color.fromRGBO(11, 8, 8, 0.2),
                            inactiveTrackColor:
                                const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        "ویلا",
                        style: TextStyle(
                            fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Transform.scale(
                      scale: 0.60,
                      child: Obx(
                        () => Switch(
                          onChanged: (_) => bazsazi.value = _,
                          value: bazsazi.value,
                          activeColor: Colors.white,
                          activeTrackColor:
                              const Color.fromRGBO(54, 216, 89, 1),
                          inactiveThumbColor:
                              const Color.fromRGBO(11, 8, 8, 0.2),
                          inactiveTrackColor:
                              const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        "اداری و تجاری",
                        style: TextStyle(
                            fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Column(children: [
        Container(
          height: 50,
          width: 370,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
              icon: SvgPicture.asset("assets/images/Vector-20.svg"),
              onPressed: () {},
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text(
                "متراژ",
                style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
              ),
            ),
          ]),
        ),
      ]),
      const SizedBox(
        height: 10,
      ),
      Column(children: [
        Container(
          height: 50,
          width: 370,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
              icon: SvgPicture.asset("assets/images/Vector-20.svg"),
              onPressed: () {},
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text(
                "تعداد اتاق",
                style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
              ),
            ),
          ]),
        ),
      ]),
      const SizedBox(
        height: 10,
      ),
      Column(children: [
        Container(
          height: 50,
          width: 370,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
              icon: SvgPicture.asset("assets/images/Vector-20.svg"),
              onPressed: () {},
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text(
                "مرحله ساخت",
                style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
              ),
            ),
          ]),
        ),
      ]),
      const SizedBox(
        height: 10,
      ),
      Column(children: [
        Container(
          height: 50,
          width: 370,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
              icon: SvgPicture.asset("assets/images/Vector-20.svg"),
              onPressed: () {},
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text(
                "طبقه",
                style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
              ),
            ),
          ]),
        ),
      ]),
      const SizedBox(
        height: 10,
      ),
      Column(children: [
        Container(
          height: 50,
          width: 370,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
              icon: SvgPicture.asset("assets/images/Vector-20.svg"),
              onPressed: () {},
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text(
                "آگهی دهنده",
                style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
              ),
            ),
          ]),
        ),
      ]),
      const SizedBox(
        height: 10,
      ),
      Column(children: [
        Container(
          height: 50,
          width: 370,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
              icon: SvgPicture.asset("assets/images/Vector-20.svg"),
              onPressed: () {},
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text(
                "امکانات آگهی",
                style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
              ),
            ),
          ]),
        ),
      ]),
      const SizedBox(
        height: 10,
      ),
      Column(
        children: [
          Container(
            height: 50,
            width: 370,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(250, 250, 250, 1),
                border:
                    Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Container(
                    child: Transform.scale(
                      scale: 0.60,
                      child: Obx(
                        () => Switch(
                            onChanged: (_) => fori.value = _,
                            value: fori.value,
                            activeColor: Colors.white,
                            activeTrackColor:
                                const Color.fromRGBO(54, 216, 89, 1),
                            inactiveThumbColor:
                                const Color.fromRGBO(11, 8, 8, 0.2),
                            inactiveTrackColor:
                                const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    "آگهی فوری",
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: GetGradient(),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent),
                child: const Text(
                  'تائید و اعمال فیلتر',
                  style: TextStyle(
                      color: Color.fromRGBO(48, 48, 48, 1),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      fontFamily: MAIN_FONT_FAMILY),
                ),
              ),
            ),
          ])
    ]);
  }
}
