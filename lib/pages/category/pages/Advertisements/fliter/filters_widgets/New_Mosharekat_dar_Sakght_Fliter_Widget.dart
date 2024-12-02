import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/otheremkanat.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/sakht_v_saz_pages/partnership.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/services/models/filterModel.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class NewMosharekatdarSakghtFliterWidget extends StatelessWidget {
  NewMosharekatdarSakghtFliterWidget({super.key});
  final _show_item_otheremkanatagahi_1 = false.obs;
  final zamin = false.obs;
  final kolangi = false.obs;
  final shakhsi = false.obs;

  final amlak = false.obs;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: _show_item_otheremkanatagahi_1.isTrue ? 200 : 50,
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
                  "مشارکت در ساخت (ساختمان جدید)",
                  style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                ),
              ),
            ]),
            NewMosharekatdarSakght()
          ],
        ),
      ),
    );
  }

  Obx NewMosharekatdarSakght() {
    return Obx(() => _show_item_otheremkanatagahi_1.value
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
                          onChanged: (_) {
                            zamin.value = _;
                          },
                          value: zamin.value,
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
                        onChanged: (_) {
                          kolangi.value = _;
                        },
                        value: kolangi.value,
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
                    "شهرک ویلایی",
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
                        onChanged: (_) {
                          kolangi.value = _;
                        },
                        value: kolangi.value,
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
                    "مجتمع تجاری و اد اری",
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
