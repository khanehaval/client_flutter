import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/intro_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/state_manager.dart';

class AmlakFilter extends StatelessWidget {
  AmlakFilter({super.key});
  final _show_item_mahaleh_1 = false.obs;
  final _show_item_agahidahandeh_1 = false.obs;
  final _show_item_emkanatagahi_1 = false.obs;
  final x = false.obs;
  final shakhsi = false.obs;
  final amlak = false.obs;
  final moshaver = false.obs;
  final aksdar = false.obs;
  final videodar = false.obs;
  final fori = false.obs;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Divider(
                  endIndent: 20,
                  indent: 20,
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: [
                    SingleChildScrollView(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color:
                                        const Color.fromRGBO(166, 166, 166, 1)),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                                      icon: SvgPicture.asset(
                                          "assets/images/location1.svg"),
                                      onPressed: () {},
                                    ),
                                  ),
                                ]),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color:
                                        const Color.fromRGBO(166, 166, 166, 1)),
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
                      height: 10,
                    ),
                    Obx(
                      () => Container(
                        height: _show_item_mahaleh_1.isTrue ? 130 : 50,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(250, 250, 250, 1),
                            border: Border.all(
                                color: const Color.fromRGBO(166, 166, 166, 1)),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  icon: _show_item_mahaleh_1.value
                                      ? SvgPicture.asset(
                                          'assets/images/=.svg',
                                        )
                                      : SvgPicture.asset(
                                          'assets/images/down.svg'),
                                  onPressed: () {
                                    _show_item_mahaleh_1.value =
                                        !_show_item_mahaleh_1.value;
                                  },
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Text(
                                    'محله',
                                    style: TextStyle(
                                        fontFamily: MAIN_FONT_FAMILY,
                                        color: Color.fromRGBO(48, 48, 48, 1),
                                        fontSize: 12),
                                  ),
                                ),
                              ]),
                          buildmahaleh()
                        ]),
                      ),
                    )
                  ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Obx(
                      () => Container(
                        height: _show_item_agahidahandeh_1.isTrue ? 200 : 50,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(250, 250, 250, 1),
                            border: Border.all(
                                color: const Color.fromRGBO(166, 166, 166, 1)),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  icon: _show_item_agahidahandeh_1.value
                                      ? SvgPicture.asset(
                                          'assets/images/=.svg',
                                        )
                                      : SvgPicture.asset(
                                          'assets/images/down.svg'),
                                  onPressed: () {
                                    _show_item_agahidahandeh_1.value =
                                        !_show_item_agahidahandeh_1.value;
                                  },
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
                            buildagahidahandeh()
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Obx(
                  () => Container(
                    height: _show_item_emkanatagahi_1.isTrue ? 155 : 50,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(250, 250, 250, 1),
                        border: Border.all(
                            color: const Color.fromRGBO(166, 166, 166, 1)),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: _show_item_emkanatagahi_1.value
                                  ? SvgPicture.asset(
                                      'assets/images/=.svg',
                                    )
                                  : SvgPicture.asset('assets/images/down.svg'),
                              onPressed: () {
                                _show_item_emkanatagahi_1.value =
                                    !_show_item_emkanatagahi_1.value;
                              },
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
                        buildemkanatagahi()
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 41,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(250, 250, 250, 1),
                      border: Border.all(
                          color: const Color.fromRGBO(166, 166, 166, 1)),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Transform.scale(
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
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "آگهی فوری",
                          style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
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
              ]),
        ));
  }

  Obx buildmahaleh() {
    return Obx(
      () => _show_item_mahaleh_1.isTrue
          ? Column(
              children: [
                Container(
                  height: 41,
                  width: 330,
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
            )
          : const SizedBox.shrink(),
    );
  }

  Obx buildagahidahandeh() {
    return Obx(() => _show_item_agahidahandeh_1.value
        ? Column(children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
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
                      "شخصی",
                      style:
                          TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Transform.scale(
                  scale: 0.60,
                  child: Obx(
                    () => Switch(
                        onChanged: (_) => amlak.value = _,
                        value: amlak.value,
                        activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                        inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                        inactiveTrackColor:
                            const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    "آژانس املاک",
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
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
                        activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                        inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                        inactiveTrackColor:
                            const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    "مشاورین املاک",
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                  ),
                ),
              ],
            )
          ])
        : const SizedBox.shrink());
  }

  Obx buildemkanatagahi() {
    return Obx(() => _show_item_emkanatagahi_1.isTrue
        ? Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Transform.scale(
                  scale: 0.60,
                  child: Obx(
                    () => Switch(
                        onChanged: (_) => aksdar.value = _,
                        value: aksdar.value,
                        activeColor: Colors.white,
                        activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                        inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                        inactiveTrackColor:
                            const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    "عکس دار",
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
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
                        onChanged: (_) => videodar.value = _,
                        value: videodar.value,
                        activeColor: Colors.white,
                        activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                        inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                        inactiveTrackColor:
                            const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    "ویدئو دار",
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                  ),
                ),
              ],
            )
          ])
        : const SizedBox.shrink());
  }
}
