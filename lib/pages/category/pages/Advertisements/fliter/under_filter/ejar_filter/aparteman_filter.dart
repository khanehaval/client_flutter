import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/agahidahandeh.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/emkanatagahi.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/jahatsakhteman.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/jenskaf.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/koletabagheh.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/metraj.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/mizanejara.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/mizanrahn.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/otheremkanat.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/senbana.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/systemgarm.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/systemsard.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/tabagheh.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/taeedvaemalefilter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/taminabegarm.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/tedadvahed.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/wc.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class EjaraApartemanFilter extends StatelessWidget {
  final shakhsi = false.obs;
  final asansor = false.obs;
  final anbari = false.obs;
  final parking = false.obs;
  final bazsazi = false.obs;
  final amlak = false.obs;
  final moshaver = false.obs;
  final aksdar = false.obs;
  final videodar = false.obs;
  final fori = false.obs;
  final _show_item_mahaleh_1 = false.obs;
  final _show_item_mizanrahn = false.obs;
  final _show_item_mizanejara = false.obs;
  final _show_item_mizanmetraj = false.obs;
  final _show_item_otagh = false.obs;
  final _show_item_agahidahandeh_1 = false.obs;
  final _show_item_emkanatagahi_1 = false.obs;
  final _show_item_otheremkanatagahi_1 = false.obs;
  final _show_item_koletabageh_1 = false.obs;
  final _show_item_vaheddartabageh_1 = false.obs;
  final _show_item_senbana_1 = false.obs;
  final _show_item_jahatsakhteman_1 = false.obs;
  final _show_item_taminAbeGarm_1 = false.obs;
  final _show_item_systemGarm_1 = false.obs;
  final _show_item_systemSard_1 = false.obs;
  final _show_item_wc_1 = false.obs;
  final _show_item_jensKaf_1 = false.obs;
  final _show_item_tabagheh_1 = false.obs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
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
                    ]),
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
            decoration: BoxDecoration(
                color: const Color.fromRGBO(250, 250, 250, 1),
                border:
                    Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
                borderRadius: BorderRadius.circular(15)),
            child: Column(children: [
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
        ),
        const SizedBox(
          height: 10,
        ),
        Obx(() => Container(
              height: _show_item_mizanrahn.isTrue ? 230 : 50,
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
                          icon: _show_item_mizanrahn.value
                              ? SvgPicture.asset(
                                  'assets/images/=.svg',
                                )
                              : SvgPicture.asset('assets/images/down.svg'),
                          onPressed: () {
                            _show_item_mizanrahn.value =
                                !_show_item_mizanrahn.value;
                          },
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            "میزان رهن",
                            style: TextStyle(
                                fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                          ),
                        ),
                      ]),
                  if (_show_item_mizanrahn.isTrue) rahn(),
                  const SizedBox(
                    height: 10,
                  ),
                  rahn2(
                    ),
                ],
                
              ),
            )),
        const SizedBox(
          height: 10,
        ),
        Obx(
          () => Container(
            height: _show_item_mizanejara.isTrue ? 230 : 50,
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
                        icon: _show_item_mizanejara.value
                            ? SvgPicture.asset(
                                'assets/images/=.svg',
                              )
                            : SvgPicture.asset('assets/images/down.svg'),
                        onPressed: () {
                          _show_item_mizanejara.value =
                              !_show_item_mizanejara.value;
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "میزان اجاره",
                          style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                        ),
                      ),
                    ]),
                if(_show_item_mizanejara.isTrue)ejara(),
                const SizedBox(
                  height: 10,
                ),
                ejara2()
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
                          style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                        ),
                      ),
                    ]),
                if(_show_item_mizanmetraj.isTrue)metraj(),
                const SizedBox(
                  height: 10,
                ),
                metraj2()
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Obx(
          () => Container(
            height: _show_item_tabagheh_1.isTrue ? 230 : 50,
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
                        icon: _show_item_tabagheh_1.value
                            ? SvgPicture.asset(
                                'assets/images/=.svg',
                              )
                            : SvgPicture.asset('assets/images/down.svg'),
                        onPressed: () {
                          _show_item_tabagheh_1.value =
                              !_show_item_tabagheh_1.value;
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "طبقه",
                          style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                        ),
                      ),
                    ]),
                if(_show_item_tabagheh_1.isTrue)tabagheh(),
                const SizedBox(
                  height: 10,
                ),
                tabagheh2(),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Obx(
          () => Container(
            height: _show_item_koletabageh_1.isTrue ? 230 : 50,
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
                        icon: _show_item_koletabageh_1.value
                            ? SvgPicture.asset(
                                'assets/images/=.svg',
                              )
                            : SvgPicture.asset('assets/images/down.svg'),
                        onPressed: () {
                          _show_item_koletabageh_1.value =
                              !_show_item_koletabageh_1.value;
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "تعداد کل طبقات",
                          style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                        ),
                      ),
                    ]),
                if(_show_item_koletabageh_1.isTrue)koletabagheh(),
                const SizedBox(
                  height: 10,
                ),
                koletabagheh2()
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Obx(
          () => Container(
            height: _show_item_vaheddartabageh_1.isTrue ? 230 : 50,
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
                        icon: _show_item_vaheddartabageh_1.value
                            ? SvgPicture.asset(
                                'assets/images/=.svg',
                              )
                            : SvgPicture.asset('assets/images/down.svg'),
                        onPressed: () {
                          _show_item_vaheddartabageh_1.value =
                              !_show_item_vaheddartabageh_1.value;
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "تعداد واحد در طبقه",
                          style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                        ),
                      ),
                    ]),
                if(_show_item_vaheddartabageh_1.isTrue)tedadvahed(),
                const SizedBox(
                  height: 10,
                ),
                tedadvahed2()
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Obx(
          () => Container(
            height: _show_item_senbana_1.isTrue ? 230 : 50,
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
                        icon: _show_item_senbana_1.value
                            ? SvgPicture.asset(
                                'assets/images/=.svg',
                              )
                            : SvgPicture.asset('assets/images/down.svg'),
                        onPressed: () {
                          _show_item_senbana_1.value =
                              !_show_item_senbana_1.value;
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "سن بنا",
                          style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                        ),
                      ),
                    ]),
                if(_show_item_senbana_1.isTrue)senbana(),
                const SizedBox(
                  height: 10,
                ),
                senbana2()
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Obx(
          () => Container(
            height: _show_item_agahidahandeh_1.isTrue ? 230 : 50,
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
                      shakhsi: shakhsi, amlak: amlak, moshaver: moshaver),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Obx(
          () => Container(
            height: _show_item_otheremkanatagahi_1.isTrue ? 250 : 50,
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
                        icon: _show_item_otheremkanatagahi_1.value
                            ? SvgPicture.asset(
                                'assets/images/=.svg',
                              )
                            : SvgPicture.asset('assets/images/down.svg'),
                        onPressed: () {
                          _show_item_otheremkanatagahi_1.value =
                              !_show_item_otheremkanatagahi_1.value;
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "سایر امکانات",
                          style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                        ),
                      ),
                    ]),
                if(_show_item_otheremkanatagahi_1.isTrue)otheremkanatagahi(asansor: asansor, anbari: anbari, parking: parking, bazsazi: bazsazi)
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
                if(_show_item_emkanatagahi_1.isTrue)emkanatagahi(aksdar: aksdar, videodar: videodar)
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
          height: 10,
        ),
        Obx(
          () => Container(
            height: _show_item_jahatsakhteman_1.isTrue ? 130 : 50,
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
                        icon: _show_item_jahatsakhteman_1.value
                            ? SvgPicture.asset(
                                'assets/images/=.svg',
                              )
                            : SvgPicture.asset('assets/images/down.svg'),
                        onPressed: () {
                          _show_item_jahatsakhteman_1.value =
                              !_show_item_jahatsakhteman_1.value;
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "جهت ساختمان",
                          style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                        ),
                      ),
                    ]),
                if(_show_item_jahatsakhteman_1.isTrue)jahatsakhteman()
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Obx(
          () => Container(
            height: _show_item_taminAbeGarm_1.isTrue ? 130 : 50,
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
                        icon: _show_item_taminAbeGarm_1.value
                            ? SvgPicture.asset(
                                'assets/images/=.svg',
                              )
                            : SvgPicture.asset('assets/images/down.svg'),
                        onPressed: () {
                          _show_item_taminAbeGarm_1.value =
                              !_show_item_taminAbeGarm_1.value;
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "تامین کننده آب گرم",
                          style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                        ),
                      ),
                    ]),
                if(_show_item_taminAbeGarm_1.isTrue)taminabegarm()
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Obx(
          () => Container(
            height: _show_item_systemGarm_1.isTrue ? 130 : 50,
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
                        icon: _show_item_systemGarm_1.value
                            ? SvgPicture.asset(
                                'assets/images/=.svg',
                              )
                            : SvgPicture.asset('assets/images/down.svg'),
                        onPressed: () {
                          _show_item_systemGarm_1.value =
                              !_show_item_systemGarm_1.value;
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "نوع سیستم گرمایش",
                          style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                        ),
                      ),
                    ]),
                if(_show_item_systemGarm_1.isTrue)systemgarm()
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Obx(
          () => Container(
            height: _show_item_systemSard_1.isTrue ? 130 : 50,
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
                        icon: _show_item_systemSard_1.value
                            ? SvgPicture.asset(
                                'assets/images/=.svg',
                              )
                            : SvgPicture.asset('assets/images/down.svg'),
                        onPressed: () {
                          _show_item_systemSard_1.value =
                              !_show_item_systemSard_1.value;
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "نوع سیستم سرمایش",
                          style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                        ),
                      ),
                    ]),
                if(_show_item_systemSard_1.isTrue)systemsard()
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Obx(
          () => Container(
            height: _show_item_wc_1.isTrue ? 130 : 50,
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
                        icon: _show_item_wc_1.value
                            ? SvgPicture.asset(
                                'assets/images/=.svg',
                              )
                            : SvgPicture.asset('assets/images/down.svg'),
                        onPressed: () {
                          _show_item_wc_1.value = !_show_item_wc_1.value;
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "سرویس بهداشتی",
                          style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                        ),
                      ),
                    ]),
                if(_show_item_wc_1.isTrue)wc()
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Obx(
          () => Container(
            height: _show_item_jensKaf_1.isTrue ? 130 : 50,
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
                        icon: _show_item_jensKaf_1.value
                            ? SvgPicture.asset(
                                'assets/images/=.svg',
                              )
                            : SvgPicture.asset('assets/images/down.svg'),
                        onPressed: () {
                          _show_item_jensKaf_1.value =
                              !_show_item_jensKaf_1.value;
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "جنس کف",
                          style: TextStyle(
                              fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                        ),
                      ),
                    ]),
                if(_show_item_jensKaf_1.isTrue)jenskaf()
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        taeedvaemalefilter()
      ]),
    );
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

  Obx buildotheremkanatagahi() {
    return Obx(() => _show_item_otheremkanatagahi_1.isTrue
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
                    "آسانسور",
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
                    "انباری",
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
                    "پارکینگ",
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
                    "بازسازی شده",
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                  ),
                ),
              ],
            )
          ])
        : const SizedBox.shrink());
  }

  Obx buildrahn() {
    return Obx(() => _show_item_mizanrahn.isTrue
        ? Container(
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
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
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
          )
        : const SizedBox.shrink());
  }

  Obx buildejara() {
    return Obx(() => _show_item_mizanejara.isTrue
        ? Container(
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
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
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
          )
        : const SizedBox.shrink());
  }

  Obx buildrahn2() {
    return Obx(() => _show_item_mizanrahn.isTrue
        ? Stack(children: [
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
                                borderSide: BorderSide(color: Colors.white)),
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
          ])
        : const SizedBox.shrink());
  }

  Obx buildejara2() {
    return Obx(() => _show_item_mizanejara.isTrue
        ? Stack(children: [
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
                                borderSide: BorderSide(color: Colors.white)),
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
          ])
        : const SizedBox.shrink());
  }

  Obx buildmetraj() {
    return Obx(() => _show_item_mizanmetraj.isTrue
        ? Stack(children: [
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
                                borderSide: BorderSide(color: Colors.white)),
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
          ])
        : const SizedBox.shrink());
  }

  Obx buildmetraj2() {
    return Obx(() => _show_item_mizanmetraj.isTrue
        ? Stack(children: [
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
                                borderSide: BorderSide(color: Colors.white)),
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
          ])
        : const SizedBox.shrink());
  }

  Obx buildotagh() {
    return Obx(
      () => _show_item_otagh.isTrue
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
                              "assets/images/arrow_down.svg",
                              width: 10,
                              height: 10,
                            ),
                          ))),
                ),
              ],
            )
          : const SizedBox.shrink(),
    );
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

  Obx buildtabagheh() {
    return Obx(() => _show_item_tabagheh_1.isTrue
        ? Container(
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
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
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
          )
        : const SizedBox.shrink());
  }

  Obx buildtabagheh2() {
    return Obx(() => _show_item_tabagheh_1.isTrue
        ? Container(
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
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
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
          )
        : const SizedBox.shrink());
  }

  Widget buildkoletabagheh() {
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
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
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

  Widget buildkoletabagheh2() {
    return  Container(
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
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
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

  Obx buildvaheddarabagheh() {
    return Obx(() => _show_item_vaheddartabageh_1.isTrue
        ? Container(
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
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
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
          )
        : const SizedBox.shrink());
  }

  Obx buildvaheddarabagheh2() {
    return Obx(() => _show_item_vaheddartabageh_1.isTrue
        ? Container(
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
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
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
          )
        : const SizedBox.shrink());
  }

  Obx buildsenbana() {
    return Obx(() => _show_item_senbana_1.isTrue
        ? Container(
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
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
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
          )
        : const SizedBox.shrink());
  }

  Obx buildsenbana2() {
    return Obx(() => _show_item_senbana_1.isTrue
        ? Container(
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
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
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
          )
        : const SizedBox.shrink());
  }

  Obx buildjahatsakhteman() {
    return Obx(
      () => _show_item_jahatsakhteman_1.isTrue
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

  Obx buildtaminabegarm() {
    return Obx(
      () => _show_item_taminAbeGarm_1.isTrue
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

  Obx buildsystemgarm() {
    return Obx(
      () => _show_item_systemGarm_1.isTrue
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

  Obx buildsystemsard() {
    return Obx(
      () => _show_item_systemSard_1.isTrue
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

  Obx buildwc() {
    return Obx(
      () => _show_item_wc_1.isTrue
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

  Obx buildjenskaf() {
    return Obx(
      () => _show_item_jensKaf_1.isTrue
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
}
