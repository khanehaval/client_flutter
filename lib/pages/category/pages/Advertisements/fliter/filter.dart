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
import 'package:flutter_svg/svg.dart';
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
      bottomNavigationBar: bottomNavigationBar2(4),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 90,
                child: Obx(() => _currentIndex.value == 0
                    ? Container(
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 1),
                              blurRadius: 1,
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                            ),
                          ],
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 10),
                          child: ScrollablePositionedList.builder(
                            reverse: true,
                            itemScrollController: _controller,
                            itemCount: items.length,
                            scrollDirection: Axis.horizontal,
                            initialScrollIndex: widget.index,
                            itemBuilder: (context, i) => GestureDetector(
                              onTap: () {
                                _controller.scrollTo(
                                  index: i,
                                  duration: const Duration(microseconds: 100),
                                  alignment: 2.8,
                                );
                                _currentIndex.value = i;
                              },
                              child: Obx(
                                () => Container(
                                  margin: const EdgeInsets.only(
                                      left: 0, right: 7, bottom: 15, top: 40),
                                  padding: const EdgeInsets.all(1.2),
                                  height: 98,
                                  width: titles[i] == "املاک"
                                      ? 80
                                      : 140, // عرض املاک برابر 60
                                  decoration: BoxDecoration(
                                    gradient: _currentIndex.value == i
                                        ? const LinearGradient(
                                            colors: GRADIANT_COLOR)
                                        : const LinearGradient(
                                            colors: BLACK_12_GRADIANT_COLOR),
                                    borderRadius: BorderRadius.circular(11),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          items[i]
                                              .title, // Display the title text
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: _currentIndex.value == i
                                                ? MAIN_FONT_FAMILY_MEDIUM // فونت برای انتخاب شده
                                                : MAIN_FONT_FAMILY_LIGHT, // فونت برای غیر انتخاب شده
                                            fontSize: 12, // Set text size
                                            color: _currentIndex.value == i
                                                ? Colors.black
                                                : Colors
                                                    .grey, // Change text color based on selection
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    : Container(
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 1),
                              blurRadius: 2,
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                            ),
                          ],
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.only(
                                top: 40, bottom: 15, left: 10, right: 5),
                            child: ScrollablePositionedList.builder(
                              reverse: true,
                              itemScrollController: _controller,
                              itemCount:
                                  items[_currentIndex.value].subItems.length +
                                      2,
                              scrollDirection: Axis.horizontal,
                              initialScrollIndex: widget.index,
                              itemBuilder: (context, i) {
                                if (i == 0) {
                                  // دکمه بازگشت به صفحه اصلی
                                  return GestureDetector(
                                    onTap: () {
                                      _currentIndex.value = 0;
                                    },
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                              color: Color.fromRGBO(
                                                  198, 198, 198, 1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(11))),
                                          child: Padding(
                                            padding: const EdgeInsets.all(1.1),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text(
                                                  "املاک", // عنوان بخش اصلی
                                                  style: TextStyle(
                                                    fontFamily:
                                                        MAIN_FONT_FAMILY,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(right: 5),
                                          child: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            size: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                } else if (i == 1) {
                                  // دکمه بازگشت به دسته‌بندی‌های قبلی
                                  return Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                          'assets/images/arrow.right.filter.svg'),
                                      const SizedBox(width: 5),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 0, right: 10),
                                        padding: const EdgeInsets.all(1.1),
                                        width: 130,
                                        decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                            colors: GRADIANT_COLOR,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(11),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.white, // پس‌زمینه سفید
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Center(
                                            child: Text(
                                              items[_currentIndex.value]
                                                  .title, // نمایش عنوان دسته فعلی
                                              style: const TextStyle(
                                                fontFamily: MAIN_FONT_FAMILY,
                                                fontSize: 12,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                } else {
                                  // نمایش زیرمجموعه‌ها بدون عکس و با حاشیه گرادیانت
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
                                            left: 5,
                                            right: 5,
                                            top: 5,
                                            bottom: 5),
                                        padding: const EdgeInsets.all(0.7),
                                        width: 110,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(11),
                                          border: Border.all(
                                            color: _subIndex.value == i
                                                ? const Color.fromRGBO(
                                                    114, 114, 114, 1)
                                                : const Color.fromARGB(255, 188,
                                                    188, 188), // رنگ حاشیه
                                            width: 1, // عرض حاشیه
                                          ),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors
                                                .white, // پس‌زمینه داخلی سفید
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Center(
                                            child: Text(
                                              items[_currentIndex.value]
                                                  .subItems[i - 2]
                                                  .title, // عنوان زیرمجموعه
                                              style: TextStyle(
                                                fontFamily: _subIndex.value == i
                                                    ? MAIN_FONT_FAMILY_MEDIUM // فونت برای انتخاب شده
                                                    : MAIN_FONT_FAMILY_LIGHT, // فونت برای غیر انتخاب شده
                                                fontSize: 12, // Set text size
                                                color: _subIndex.value == i
                                                    ? Colors
                                                        .black // متن مشکی در صورت انتخاب
                                                    : Colors
                                                        .grey, // متن طوسی در صورت عدم انتخاب
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }
                              },
                            )),
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
          SubItemModel("ویلا", SubFilterType.kotamodatvila),
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

final List<String> titles = [
  "املاک",
  "فروش مسکونی",
  "اجاره مسکونی",
  "فروش تجاری اداری",
  "اجاره تجاری اداری",
  "اجاره کوتاه مدت",
  "ساخت و ساز",
];
