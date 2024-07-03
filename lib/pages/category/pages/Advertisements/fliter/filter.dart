import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/shared.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/Forosh_tejari/Forosh_tejari_filter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/amlak_display.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/ejar_filter/EjaraFilter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/ejara_tejari/Ejara_tejari_filter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/forosh_filter/ForoshFilter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/kota_modat/kota_modat_filter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/sakht_va_saz/sakht_va_saz_filter.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Filter extends StatefulWidget {
  int index;

  Filter({super.key, required this.index});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  final _controller = ItemScrollController();

  final _currentIndex = 0.obs;
  final _subIndex = 0.obs;
  final _subFilterType = SubFilterType.None.obs;

  @override
  void initState() {
    _currentIndex.value = widget.index;
    _currentIndex.listen((p0) {
      if (p0 == 0) {
        _subIndex.value = 0;
        _subFilterType.value = SubFilterType.None;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: bottomNavigationBar2(),
      body: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: Obx(() => _currentIndex.value == 0
                    ? ScrollablePositionedList.builder(
                        reverse: true,
                        itemScrollController: _controller,
                        itemCount: 7,
                        scrollDirection: Axis.horizontal,
                        initialScrollIndex: widget.index,
                        itemBuilder: (context, i) => GestureDetector(
                          onTap: () {
                            _controller.scrollTo(
                                index: i,
                                duration: const Duration(microseconds: 100),
                                opacityAnimationWeights: [20, 30, 10],
                                alignment: 0.5);
                            _currentIndex.value = i;
                          },
                          child: Obx(
                            () => Container(
                              margin: const EdgeInsets.only(
                                  right: 10, bottom: 10, top: 40),
                              padding: const EdgeInsets.all(1.2),
                              height: 98,
                              width: 132,
                              decoration: BoxDecoration(
                                gradient: _currentIndex.value == i
                                    ? const LinearGradient(
                                        colors: GRADIANT_COLOR,
                                      )
                                    : const LinearGradient(
                                        colors: BLACK_12_GRADIANT_COLOR,
                                      ),
                                borderRadius: BorderRadius.circular(10),
                                // border:
                                //     Border.all(width: _currentIndex.value == i ? 1 : 1),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  items[i].assetPath,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: ScrollablePositionedList.builder(
                            reverse: true,
                            itemScrollController: _controller,
                            itemCount:
                                items[_currentIndex.value].subItems.length + 2,
                            scrollDirection: Axis.horizontal,
                            initialScrollIndex: widget.index,
                            itemBuilder: (context, i) {
                              if (i == 0) {
                                return GestureDetector(
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: const Color.fromRGBO(
                                              226,
                                              226,
                                              226,
                                              1,
                                            )),
                                        child: Padding(
                                          padding: const EdgeInsets.all(1.3),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.all(10.0),
                                              child: Text(
                                                "املاک",
                                                style: TextStyle(
                                                    fontFamily:
                                                        MAIN_FONT_FAMILY,
                                                    fontSize: 14),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Icon(
                                          Icons.arrow_forward_ios_rounded)
                                    ],
                                  ),
                                  onTap: () {
                                    _currentIndex.value = 0;
                                  },
                                );
                              }
                              if (i == 1) {
                                return Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.arrow_back_ios),
                                    Container(
                                      margin: const EdgeInsets.only(
                                        left: 0,
                                        right: 2,
                                      ),
                                      padding: const EdgeInsets.all(0.7),
                                      width: 130,
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          colors: GRADIANT_COLOR,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Image.asset(
                                          items[_currentIndex.value].assetPath,
                                          width: 51,
                                          height: 51,
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              } else {
                                return GestureDetector(
                                  onTap: () {
                                    _subIndex.value = i;
                                    _subFilterType.value =
                                        items[_currentIndex.value]
                                            .subItems[i - 2]
                                            .type;
                                  },
                                  child: Obx(
                                    () => Container(
                                      margin: const EdgeInsets.only(
                                        left: 3,
                                        right: 3,
                                      ),
                                      padding: const EdgeInsets.all(.7),
                                      width: 85,
                                      decoration: BoxDecoration(
                                        gradient: _subIndex.value == i
                                            ? const LinearGradient(
                                                colors: GRADIANT_COLOR,
                                              )
                                            : const LinearGradient(
                                                colors: BLACK_12_GRADIANT_COLOR,
                                              ),
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            width: _currentIndex.value ==
                                                    _currentIndex.value
                                                ? 0.5
                                                : 0.5),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Center(
                                          child: Text(
                                            items[_currentIndex.value]
                                                .subItems[i - 2]
                                                .title,
                                            style: const TextStyle(
                                                fontFamily: MAIN_FONT_FAMILY,
                                                color: Color.fromRGBO(
                                                    99, 99, 99, 1),
                                                fontSize: 10),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }
                            }),
                      )),
              ),
              Obx(() => _pages()[_currentIndex.value]),
            ],
          ),
        ),
      ),
    );
  }

  _pages() => [
        AmlakFilter(),
        EjaraFilter(_subFilterType.value),
        ForoshFilter(_subFilterType.value),
        ForoshTejariFilter(_subFilterType.value),
        EjaraTejariFilter(_subFilterType.value),
        KotaModatFilter(_subFilterType.value),
        SakhtVaSazFilter(_subFilterType.value),
      ];

  var items = [
    FilterModel(
        title: "املاک",
        assetPath: 'assets/images/Property 1=House.png',
        subItems: []),
    FilterModel(
        title: "اجاره مسکونی",
        assetPath: 'assets/images/Property 2=Maskoni.png',
        subItems: [
          SubItemModel("آپارتمان", SubFilterType.Aparteman),
          SubItemModel("ویلا", SubFilterType.Vila)
        ]),
    FilterModel(
        title: "فروش مسکونی",
        assetPath: 'assets/images/Property 3=Maskoni.png',
        subItems: [
          SubItemModel("آپارتمان", SubFilterType.ForoshAparteman),
          SubItemModel("ویلا", SubFilterType.ForoshVila),
          SubItemModel("خانه کلنگی", SubFilterType.kolangi),
        ]),
    FilterModel(
        title: "فروش تجاری واداری",
        assetPath: 'assets/images/forosh_tejari_filter1.png',
        subItems: [
          SubItemModel("دفتر کار", SubFilterType.daftarkar),
          SubItemModel("مغازه", SubFilterType.maqazeh),
          SubItemModel("دفاتر صنعتی", SubFilterType.daftarsanati),
        ]),
    FilterModel(
        title: "اجاره تجاری اداری",
        assetPath: 'assets/images/ejara_tejari_filter.png',
        subItems: [
          SubItemModel("دفتر کار", SubFilterType.ejaradaftarkar),
          SubItemModel("مغازه", SubFilterType.ejaramaqazeh),
          SubItemModel("دفاتر صنعتی", SubFilterType.ejaradaftarsanati),
        ]),
    FilterModel(
        title: "اجاره کوتاه مدت",
        assetPath: 'assets/images/kotamodat_filter.png',
        subItems: [
          SubItemModel("آپارتمان", SubFilterType.kotamodataparteman),
          SubItemModel("ویلا", SubFilterType.kotamodatvila)
        ]),
    FilterModel(
        title: "ساخت وساز",
        assetPath: 'assets/images/SakhtvasazFilter.png',
        subItems: [
          SubItemModel("پـیش فروش", SubFilterType.pishfrosh),
          SubItemModel("مشارکت در ساخت", SubFilterType.mosharekatdarsakht)
        ]),
  ];
}

class FilterModel {
  String title;
  String assetPath;
  List<SubItemModel> subItems;
  FilterModel(
      {required this.title, required this.assetPath, required this.subItems});
}

class SubItemModel {
  SubFilterType type;
  String title;

  SubItemModel(this.title, this.type);
}
