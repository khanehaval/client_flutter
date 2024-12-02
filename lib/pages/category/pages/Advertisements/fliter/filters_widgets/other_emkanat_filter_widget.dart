import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/otheremkanat.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/services/models/filterModel.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class OtherEmkanatFilterWidget extends StatelessWidget {
  OtherEmkanatFilterWidget({super.key});
  final _show_item_otheremkanatagahi_1 = false.obs;
  final asansor = false.obs;
  final anbari = false.obs;
  final parking = false.obs;
  final bazsazi = false.obs;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: _show_item_otheremkanatagahi_1.isTrue ? 250 : 50,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(250, 250, 250, 1),
            border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                  style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                ),
              ),
            ]),
            if (_show_item_otheremkanatagahi_1.isTrue)
              otheremkanatagahi(
                  asansor: asansor,
                  anbari: anbari,
                  parking: parking,
                  bazsazi: bazsazi)
          ],
        ),
      ),
    );
  }

  Widget otheremkanatagahi(
      {required Rx<bool> asansor,
      required Rx<bool> anbari,
      required Rx<bool> parking,
      required Rx<bool> bazsazi}) {
    final asansor = false.obs;
    final anbari = false.obs;
    final parking = false.obs;
    final bazsazi = false.obs;
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Transform.scale(
            scale: 0.60,
            child: Obx(
              () => Switch(
                  onChanged: (_) => asansor.value = _,
                  value: asansor.value,
                  activeColor: Colors.white,
                  activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                  inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                  inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              "آسانسور",
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
                  onChanged: (_) => anbari.value = _,
                  value: anbari.value,
                  activeColor: Colors.white,
                  activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                  inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                  inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              "انباری",
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
                  onChanged: (_) => parking.value = _,
                  value: parking.value,
                  activeColor: Colors.white,
                  activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                  inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                  inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              "پارکینگ",
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
                  onChanged: (_) => bazsazi.value = _,
                  value: bazsazi.value,
                  activeColor: Colors.white,
                  activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                  inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                  inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              "بازسازی شده",
              style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
            ),
          ),
        ],
      )
    ]);
  }
}
