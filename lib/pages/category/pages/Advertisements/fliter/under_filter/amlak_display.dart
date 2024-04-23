import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/intro_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AmlakDisplay extends StatelessWidget {
  AmlakDisplay({super.key});
  final shakhsi = false.obs;
  final amlak = false.obs;
  final moshaver = false.obs;
  final aksdar = false.obs;
  final videodar = false.obs;
  final fori = false.obs;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      const Divider(
        endIndent: 20,
        indent: 20,
      ),
      Column(children: [
        SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: const Color.fromRGBO(166, 166, 166, 1)),
                        borderRadius: BorderRadius.circular(15)),
                    child: Stack(children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 40, top: 15),
                        child: Text(
                          "تهران",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 11,
                              fontFamily: MAIN_FONT_FAMILY,
                              color: Color.fromRGBO(99, 99, 99, 1)),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: IconButton(
                          icon: SvgPicture.asset("assets/images/location1.svg"),
                          onPressed: () {},
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: const Color.fromRGBO(166, 166, 166, 1)),
                            borderRadius: BorderRadius.circular(15)),
                        child: Stack(children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 40, top: 15),
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
                            padding: const EdgeInsets.only(left: 90),
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
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Column(
          children: [
            Container(
              height: 120,
              width: 370,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(250, 250, 250, 1),
                  border:
                      Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SvgPicture.asset(
                          'assets/images/=.svg',
                          width: 20,
                          height: 10,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          "محله",
                          style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY,
                              color: Color.fromRGBO(48, 48, 48, 1),
                              fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Container(
                      height: 41,
                      width: 340,
                      child: TextField(
                          readOnly: true,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                              hintText: 'انتخاب کنید',
                              hintStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontFamily: MAIN_FONT_FAMILY),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              prefixIcon: IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  "assets/images/left.svg",
                                  width: 15,
                                  height: 15,
                                ),
                              ))),
                    ),
                  ],
                ),
              ]),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Container(
              height: 175,
              width: 370,
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
                            "آگهی دهنده",
                            style: TextStyle(
                                fontFamily: MAIN_FONT_FAMILY,
                                color: Color.fromRGBO(48, 48, 48, 1),
                                fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Container(
                            child: Transform.scale(
                              scale: 0.60,
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
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            "شخصی",
                            style: TextStyle(
                                fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ]),
                  Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Container(
                            child: Transform.scale(
                              scale: 0.60,
                              child: Obx(
                                () => Switch(
                                    onChanged: (_) => amlak.value = _,
                                    value: amlak.value,
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
                            "آژانس املاک",
                            style: TextStyle(
                                fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ]),
                  Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Container(
                            child: Transform.scale(
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
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            "مشاورین املاک",
                            style: TextStyle(
                                fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Container(
              height: 125,
              width: 370,
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
                            "امکانات آگهی",
                            style: TextStyle(
                                fontFamily: MAIN_FONT_FAMILY,
                                color: Color.fromRGBO(48, 48, 48, 1),
                                fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Container(
                            child: Transform.scale(
                              scale: 0.60,
                              child: Obx(
                                () => Switch(
                                    onChanged: (_) => aksdar.value = _,
                                    value: aksdar.value,
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
                            "عکس دار",
                            style: TextStyle(
                                fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ]),
                  Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Container(
                            child: Transform.scale(
                              scale: 0.60,
                              child: Obx(
                                () => Switch(
                                    onChanged: (_) => videodar.value = _,
                                    value: videodar.value,
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
                            "ویدئو دار",
                            style: TextStyle(
                                fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ]),
      Column(
        children: [
          Container(
            height: 33,
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

class _countOfInstallmentsController {}
