import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/shared.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/sakht_va_saz/Pish_Forosh_filter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/sakht_va_saz/mosharekat_dar_sakht_filter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/agahidahandeh.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/emkanatagahi.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/mahaleh.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/intro_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SakhtVaSazFilter extends StatelessWidget {
  SubFilterType type;
  final shakhsi = false.obs;
  final amlak = false.obs;
  final moshaver = false.obs;
  final bazsazi = false.obs;
  final aksdar = false.obs;
  final videodar = false.obs;
  final fori = false.obs;
  final asansor = false.obs;
  final anbari = false.obs;
  final parking = false.obs;
  final _show_item_mahaleh_1 = false.obs;
  final _show_item_agahidahandeh_1 = false.obs;
  final _show_item_emkanatagahi_1 = false.obs;
  SakhtVaSazFilter(this.type);

  @override
  Widget build(BuildContext context) {
    if (type == SubFilterType.None) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: const Color.fromRGBO(166, 166, 166, 1)),
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
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: const Color.fromRGBO(166, 166, 166, 1)),
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
          Obx(
            () => Container(
              height: _show_item_mahaleh_1.isTrue ? 130 : 50,
              width: 370,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(250, 250, 250, 1),
                  border:
                      Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: _show_item_mahaleh_1.value
                              ? SvgPicture.asset(
                                  'assets/images/=.svg',
                                )
                              : SvgPicture.asset('assets/images/down.svg'),
                          onPressed: () {
                            _show_item_mahaleh_1.value =
                                !_show_item_mahaleh_1.value;
                          },
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            "محله",
                            style: TextStyle(
                                fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                          ),
                        ),
                      ]),
                  if (_show_item_mahaleh_1.isTrue) Mahaleh()
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(
            () => Container(
              height: _show_item_agahidahandeh_1.isTrue ? 250 : 50,
              width: 370,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(250, 250, 250, 1),
                  border:
                      Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
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
                              : SvgPicture.asset('assets/images/down.svg'),
                          onPressed: () {
                            _show_item_agahidahandeh_1.value =
                                !_show_item_agahidahandeh_1.value;
                          },
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            "آگهی دهنده",
                            style: TextStyle(
                                fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                          ),
                        ),
                      ]),
                  if (_show_item_agahidahandeh_1.isTrue)
                    agahidahandeh(
                        shakhsi: shakhsi, amlak: amlak, moshaver: moshaver)
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(
            () => Container(
              height: _show_item_emkanatagahi_1.isTrue ? 150 : 50,
              width: 370,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(250, 250, 250, 1),
                  border:
                      Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
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
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            "امکانات آگهی",
                            style: TextStyle(
                                fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                          ),
                        ),
                      ]),
                  if (_show_item_emkanatagahi_1.isTrue)
                    emkanatagahi(aksdar: aksdar, videodar: videodar)
                ],
              ),
            ),
          ),
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
                    border: Border.all(
                        color: const Color.fromRGBO(166, 166, 166, 1)),
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
                        style: TextStyle(
                            fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
        ],
      );
    } else if (type == SubFilterType.pishfrosh) {
      return PishForoshFilter();
    }
    return MosharekatDarSakhtFilter();
  }
}
