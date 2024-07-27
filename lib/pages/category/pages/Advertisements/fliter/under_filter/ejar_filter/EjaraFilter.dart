import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/City&Filter_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/aghahifori_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/ejara_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/emkanat_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/mahaleh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/metraj_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/rhna_filter_wigget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/tedadotagh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/shared.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/ejar_filter/aparteman_filter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/ejar_filter/ejara_vila_filter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/agahidahandeh.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/emkanatagahi.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/metraj.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/mizanejara.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/otagh.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/taeedvaemalefilter.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/intro_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/state_manager.dart';

class EjaraFilter extends StatelessWidget {
  SubFilterType type;
  final fori = false.obs;
  final _show_item_mahaleh_1 = false.obs;
  final _show_item_mizanrahn = false.obs;
  final _show_item_otagh = false.obs;
  final _show_item_agahidahandeh_1 = false.obs;
  final shakhsi = false.obs;
  final amlak = false.obs;
  final moshaver = false.obs;
  final aksdar = false.obs;
  final videodar = false.obs;
  EjaraFilter(this.type, {super.key});
  @override
  Widget build(BuildContext context) {
    if (type == SubFilterType.None) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: CityfilterFilterWidget(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                MahalehFilterWidget(),
                const SizedBox(
                  height: 10,
                ),
                RahnFilterWidget(),
                const SizedBox(
                  height: 10,
                ),
                EjaraFilterWidget(),
                const SizedBox(
                  height: 10,
                ),
                MetrajFilterWidget(),
                const SizedBox(
                  height: 10,
                ),
                TedadotaghFilterWidget(),
                const SizedBox(
                  height: 10,
                ),
                Obx(
                  () => Container(
                    height: _show_item_agahidahandeh_1.isTrue ? 230 : 50,
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
                                padding: EdgeInsets.only(right: 20),
                                child: Text(
                                  "آگهی دهنده",
                                  style: TextStyle(
                                      fontFamily: MAIN_FONT_FAMILY,
                                      fontSize: 12),
                                ),
                              ),
                            ]),
                        if (_show_item_agahidahandeh_1.isTrue)
                          agahidahandeh(
                              shakhsi: shakhsi,
                              amlak: amlak,
                              moshaver: moshaver)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                EmkanatFilterWidget(),
                const SizedBox(
                  height: 10,
                ),
                AghahiforiFilterWidget(),
                const SizedBox(
                  height: 30,
                ),
                taeedvaemalefilter()
              ],
            ),
          ),
        ),
      );
    } else if (type == SubFilterType.Aparteman) {
      return EjaraApartemanFilter();
    }
    return EjaraVilaFilter();
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

  void setState(Null Function() param0) {}
}
