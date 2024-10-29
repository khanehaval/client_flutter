import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class EmkanatFilterWidget extends StatefulWidget {
  EmkanatFilterWidget({super.key});

  @override
  State<EmkanatFilterWidget> createState() => _EmkanatFilterWidgetState();
}

class _EmkanatFilterWidgetState extends State<EmkanatFilterWidget> {
  final _show_item_emkanatagahi_1 = false.obs;
  final aksdar = false.obs;
  final videodar = false.obs;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Container(
            height: _show_item_emkanatagahi_1.isTrue ? 160 : 50,
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
                            fontFamily: MAIN_FONT_FAMILY,
                            color: Color.fromRGBO(48, 48, 48, 1),
                            fontSize: 12),
                      ),
                    ),
                  ],
                ),
                emkanatagahi(aksdar: aksdar, videodar: videodar)
              ],
            ),
          ),
        ),
      ],
    );
  }

  Obx emkanatagahi({
    required Rx<bool> aksdar,
    required Rx<bool> videodar,
  }) {
    return Obx(() => _show_item_emkanatagahi_1.value
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
