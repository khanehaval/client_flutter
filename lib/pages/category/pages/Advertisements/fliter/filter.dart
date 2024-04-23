import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/amlak_display.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/amlak_page.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/ejara_kota_modat.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/ejara_maskoni.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/ejara_tajari_edari.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/forosh_maskoni.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/forosh_tgjari_edari.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/sacht_saz.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class CategoryItems extends StatefulWidget {
  int index;
  CategoryItems({super.key, required this.index});
  @override
  State<CategoryItems> createState() => _CategoryItemsState();
}

class _CategoryItemsState extends State<CategoryItems> {
  final _controller = ItemScrollController();

  final _currentIndex = 0.obs;

  @override
  void initState() {
    _currentIndex.value = widget.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 135,
            child: ScrollablePositionedList.builder(
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
                        left: 10, right: 10, bottom: 7, top: 80),
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
                        child: items[i]),
                  ),
                ),
              ),
            ),
          ),
          Obx(() => _pages[_currentIndex.value])
        ],
      ),
    );
  }

  var items = [
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: Image.asset(
        'assets/images/Frame_amlak.png',
        width: 51,
        height: 51,
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        'assets/images/Frame_ejaramaskoni.png',
        width: 51,
        height: 51,
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: Image.asset(
        'assets/images/Frame_foroshmaskoni.png',
        width: 51,
        height: 51,
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: Image.asset(
        'assets/images/Frame_foroshtejari.png',
        width: 51,
        height: 51,
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: Image.asset(
        'assets/images/Frame_ejaratejari.png',
        width: 51,
        height: 51,
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: Image.asset(
        'assets/images/Frame_kotamodat.png',
        width: 51,
        height: 51,
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Image.asset(
        'assets/images/Frame_sakht va saz.png',
        width: 51,
        height: 51,
      ),
    ),
  ];
}

final _pages = [
  AmlakDisplay(),
  EjaraMaskoni(),
  ForoshMaskoni(),
  ForoshTagariEdari(),
  EjaraTagariEdari(),
  EjaraKotaModat(),
  SachtSaz(),
];
