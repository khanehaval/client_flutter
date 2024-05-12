import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/agahidahandeh.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/emkanatagahi.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/mahaleh.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/metraj.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/mosharekatdarsakht.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/noe_melk.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/intro_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class MosharekatDarSakhtFilter extends StatelessWidget {
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
  final aparteman = false.obs;
  final sharakvilaei = false.obs;
  final mojtamaetejari = false.obs;
  final zamin = false.obs;
  final vila = false.obs;
  final edaritejari = false.obs;
  final _show_item_noemelk = false.obs;
  final _show_item_mosharekatdasakht = false.obs;
  final _show_item_tabagheh_1 = false.obs;
  final _show_item_mahaleh_1 = false.obs;
  final _show_item_zarfiatnafarat = false.obs;
  final _show_item_servicekhab = false.obs;
  final _show_item_mizanmetraj = false.obs;
  final _show_item_tedadotagh = false.obs;
  final _show_item_agahidahandeh_1 = false.obs;
  final _show_item_emkanatagahi_1 = false.obs;
  final _show_item_otheremkanatagahi_1 = false.obs;
  final _show_item_systemGarm_1 = false.obs;
  final _show_item_systemSard_1 = false.obs;
  final _show_item_wc_1 = false.obs;
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
      Obx(
        () => Container(
          height: _show_item_mahaleh_1.isTrue ? 130 : 50,
          width: 370,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                IconButton(
                  icon: _show_item_mahaleh_1.value
                      ? SvgPicture.asset(
                          'assets/images/=.svg',
                        )
                      : SvgPicture.asset('assets/images/down.svg'),
                  onPressed: () {
                    _show_item_mahaleh_1.value = !_show_item_mahaleh_1.value;
                  },
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    "محله",
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
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
          height: _show_item_mizanmetraj.isTrue ? 230 : 50,
          width: 370,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                IconButton(
                  icon: _show_item_mizanmetraj.value
                      ? SvgPicture.asset(
                          'assets/images/=.svg',
                        )
                      : SvgPicture.asset('assets/images/down.svg'),
                  onPressed: () {
                    _show_item_mizanmetraj.value =
                        !_show_item_mizanmetraj.value;
                  },
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    "متراژ",
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                  ),
                ),
              ]),
              if (_show_item_mizanmetraj.isTrue) metraj(),
              const SizedBox(
                height: 10,
              ),
              metraj2()
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 9,
      ),
      Obx(
        () => Container(
          height: _show_item_noemelk.isTrue ? 150 : 50,
          width: 370,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                icon: _show_item_noemelk.value
                    ? SvgPicture.asset(
                        'assets/images/=.svg',
                      )
                    : SvgPicture.asset('assets/images/down.svg'),
                onPressed: () {
                  _show_item_noemelk.value = !_show_item_noemelk.value;
                },
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "نوع ملک موجود",
                  style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                ),
              ),
            ]),
            if (_show_item_noemelk.isTrue)
              noemelk(aksdar: aksdar, videodar: videodar)
          ]),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Obx(
        () => Container(
          height: _show_item_mosharekatdasakht.isTrue ? 230 : 50,
          width: 370,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                IconButton(
                  icon: _show_item_mosharekatdasakht.value
                      ? SvgPicture.asset(
                          'assets/images/=.svg',
                        )
                      : SvgPicture.asset('assets/images/down.svg'),
                  onPressed: () {
                    _show_item_mosharekatdasakht.value =
                        !_show_item_mosharekatdasakht.value;
                  },
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    "مشارکت در ساخت (ساختمان جدید)",
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                  ),
                ),
              ]),
              if (_show_item_mosharekatdasakht.isTrue)
                mosharekatdarsakht(
                    aparteman: aparteman,
                    sharakvilaei: sharakvilaei,
                    mojtamaetejari: mojtamaetejari)
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
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
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
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
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
