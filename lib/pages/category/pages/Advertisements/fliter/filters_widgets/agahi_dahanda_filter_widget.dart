import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/repo/advRepo.dart';
import 'package:flutter_application_1/services/models/filterModel.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class AgahiDahandaFilterWidget extends StatefulWidget {
  Function(AdvretismentFilter) onChange;
  AgahiDahandaFilterWidget({required this.onChange});

  @override
  State<AgahiDahandaFilterWidget> createState() =>
      _AgahiDahandaFilterWidgetState();
}

class _AgahiDahandaFilterWidgetState extends State<AgahiDahandaFilterWidget> {
  final _advRepo = GetIt.I.get<AdvRepo>();
  final shakhsi = false.obs;

  final amlak = false.obs;

  final moshaver = false.obs;

  final _show_item_agahidahandeh_1 = false.obs;

  @override
  void initState() {
    shakhsi.value = _advRepo.filters.keys.contains("shakhsi");
    amlak.value = _advRepo.filters.keys.contains("amlak");
    moshaver.value = _advRepo.filters.keys.contains("mnoshaver");
    _show_item_agahidahandeh_1.value =
        shakhsi.value || amlak.value || moshaver.value;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Container(
            height: _show_item_agahidahandeh_1.isTrue ? 200 : 50,
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
                          onChanged: (_) {
                            shakhsi.value = _;
                            widget.onChange(ShakhsiFilter());
                          },
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
                        onChanged: (_) {
                          amlak.value = _;
                          widget.onChange(AmlakFilter());
                        },
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
                        onChanged: (_) {
                          moshaver.value = _;
                          widget.onChange(MoshaverFilter());
                        },
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
}
