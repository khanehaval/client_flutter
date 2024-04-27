import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/shared.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/amlak_display.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/ejar_filter/EjaraFilter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/forosh_filter/ForoshFilter.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/ejara_kota_modat.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/ejara_tajari_edari.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/forosh_maskoni.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/forosh_tgjari_edari.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/sacht_saz.dart';
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
      bottomNavigationBar: bottomNavigation(),
      body: SingleChildScrollView(
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
                              opacityAnimationWeights: [10, 30, 10],
                              alignment: 0.5);
                          _currentIndex.value = i;
                        },
                        child: Obx(
                          () => Container(
                            margin: const EdgeInsets.only(
                                left: 10, right: 10, bottom: 7, top: 40),
                            padding: const EdgeInsets.all(1.5),
                            height: 98,
                            width: 130,
                            decoration: BoxDecoration(
                              gradient: _currentIndex.value == i
                                  ? const LinearGradient(
                                      colors: GRADIANT_COLOR,
                                    )
                                  : const LinearGradient(
                                      colors: BLACK_12_GRADIANT_COLOR,
                                    ),
                              borderRadius: BorderRadius.circular(20),
                              // border:
                              //     Border.all(width: _currentIndex.value == i ? 1 : 1),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 7, horizontal: 7),
                                child: Image.asset(
                                  items[i].assetPath,
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.fitHeight,
                                ),
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
                                      margin: const EdgeInsets.only(
                                        left: 5,
                                        right: 5,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(width: 1),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Text("املاک"),
                                      ),
                                    ),
                                    const Icon(Icons.arrow_forward_ios_rounded)
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
                                      right: 1,
                                    ),
                                    padding: const EdgeInsets.all(1.5),
                                    width: 130,
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        colors: GRADIANT_COLOR,
                                      ),
                                      border: Border.all(width: 1.5),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Image.asset(
                                        items[i].assetPath,
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
                                    padding: const EdgeInsets.all(1.5),
                                    width: 130,
                                    decoration: BoxDecoration(
                                      gradient: _subIndex.value == i
                                          ? const LinearGradient(
                                              colors: GRADIANT_COLOR,
                                            )
                                          : const LinearGradient(
                                              colors: BLACK_12_GRADIANT_COLOR,
                                            ),
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: _currentIndex.value == i
                                              ? 1.0
                                              : 1),
                                    ),
                                    child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Center(
                                          child: Text(items[_currentIndex.value]
                                              .subItems[i - 2]
                                              .title),
                                        )),
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
    );
  }

  _pages() => [
        AmlakFilter(),
        EjaraFilter(_subFilterType.value),
        ForoshFilter(_subFilterType.value),
        ForoshTagariEdari(),
        EjaraTagariEdari(),
        EjaraKotaModat(),
        SachtSaz(),
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
          SubItemModel("آپارتمان", SubFilterType.Aparteman),
          SubItemModel("ویلا", SubFilterType.Vila),
          SubItemModel("خانه کلنگی", SubFilterType.kolangi),
        ]),
    FilterModel(
        title: "فروش تجاری واداری",
        assetPath: 'assets/images/Frame_foroshtejari.png',
        subItems: []),
    FilterModel(
        title: "اجاره تجاری اداری",
        assetPath: 'assets/images/Frame_ejaratejari.png',
        subItems: []),
    FilterModel(
        title: "اجاره کوتاه مدت",
        assetPath: 'assets/images/Frame_kotamodat.png',
        subItems: []),
    FilterModel(
        title: "ساخت وساز",
        assetPath: 'assets/images/Frame_sakht va saz.png',
        subItems: []),
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
