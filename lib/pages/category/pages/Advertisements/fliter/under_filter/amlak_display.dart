import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/City&Filter_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/agahi_dahanda_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/aghahifori_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/emkanat_filter_widget.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filters_widgets/mahaleh_filter_widget.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/intro_screen.dart';
import 'package:flutter_application_1/repo/advRepo.dart';
import 'package:flutter_application_1/services/models/filterModel.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';

class AmlakFilter extends StatefulWidget {
  AmlakFilter({super.key});

  @override
  State<AmlakFilter> createState() => _AmlakFilterState();
}

class _AmlakFilterState extends State<AmlakFilter> {
  final _show_item_mahaleh_1 = false.obs;

  final _show_item_emkanatagahi_1 = false.obs;

  final x = false.obs;

  final shakhsi = false.obs;

  final amlak = false.obs;

  final moshaver = false.obs;

  final aksdar = false.obs;

  final videodar = false.obs;

  final fori = false.obs;

  final _advRepo = GetIt.I.get<AdvRepo>();

  Map<String, AdvretismentFilter> filters = Map();

  List<AdvretismentFilter> _filters = [];

  @override
  void initState() {
    filters = _advRepo.filters;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Divider(),
                  const SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(children: [
                      const SingleChildScrollView(
                        child: CityfilterFilterWidget(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MahalehFilterWidget(),
                    ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AgahiDahandaFilterWidget(
                    onChange: (_) {
                      if (filters.containsKey(_.key())) {
                        filters.remove(_.key());
                      } else {
                        filters[_.key()] = _;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  EmkanatFilterWidget(),
                  const SizedBox(
                    height: 20,
                  ),
                  AghahiforiFilterWidget(),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.07),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: Offset(0, 2),
                              )
                            ],
                            gradient: GetGradient(),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: const Color.fromRGBO(99, 99, 99, 1)),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                _advRepo.addFilters(_filters);
                                Get.back();
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent),
                              child: const Text(
                                'تائید و اعمال فیلتر',
                                style: TextStyle(
                                    color: Color.fromRGBO(48, 48, 48, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: MAIN_FONT_FAMILY),
                              ),
                            ),
                          ),
                        ),
                      ])
                ]),
          ),
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
