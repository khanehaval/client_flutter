import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/noe_melk.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class NoeMelkFilterWidget extends StatelessWidget {
  NoeMelkFilterWidget({super.key});
  final _show_item_noemelk = false.obs;
  final zamin = false.obs;
  final aparteman = false.obs;
  final vila = false.obs;
  final edaritejari = false.obs;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: _show_item_noemelk.isTrue ? 250 : 50,
        width: 370,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(250, 250, 250, 1),
            border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                    "نوع ملک",
                    style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY,
                        color: Color.fromRGBO(48, 48, 48, 1),
                        fontSize: 12),
                  ),
                ),
              ],
            ),
            if (_show_item_noemelk.isTrue)
              noemelk_sakht(
                aparteman: aparteman,
                zamin: zamin,
                vila: vila,
                edaritejari: edaritejari,
              )
          ],
        ),
      ),
    );
  }

  Widget noemelk_sakht({
    required Rx<bool> zamin,
    required Rx<bool> aparteman,
    required Rx<bool> vila,
    required Rx<bool> edaritejari,
  }) {
    final zamin = false.obs;
    final aparteman = false.obs;
    final vila = false.obs;
    final edaritejari = false.obs;

    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Transform.scale(
            scale: 0.60,
            child: Obx(
              () => Switch(
                  onChanged: (_) => zamin.value = _,
                  value: zamin.value,
                  activeColor: Colors.white,
                  activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                  inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                  inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              "زمین ",
              style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
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
                  onChanged: (_) => aparteman.value = _,
                  value: aparteman.value,
                  activeColor: Colors.white,
                  activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                  inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                  inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              "آپارتمان",
              style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
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
                  onChanged: (_) => vila.value = _,
                  value: vila.value,
                  activeColor: Colors.white,
                  activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                  inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                  inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              " ویلا",
              style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
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
                  onChanged: (_) => edaritejari.value = _,
                  value: edaritejari.value,
                  activeColor: Colors.white,
                  activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                  inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                  inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              "اداری تجاری",
              style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
            ),
          ),
        ],
      )
    ]);
  }
}
