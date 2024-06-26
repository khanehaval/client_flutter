import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/ejara_kota_modat.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/ejara_maskoni.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/amlak_page.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/ejara_tajari_edari.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/forosh_maskoni.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/forosh_tgjari_edari.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/sacht_saz.dart';
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
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 150,
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
                child: Obx(() => Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(5),
                      height: 98,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: _currentIndex.value == i
                                ? const Color.fromARGB(126, 118, 238, 146)
                                : const Color.fromRGBO(234, 234, 234, 4),
                            width: _currentIndex.value == i ? 3 : 1),
                      ),
                      child: items[i],
                    )),
              ),
            ),
          ),
          Obx(() => _pages[_currentIndex.value])
        ],
      ),
    );
  }

  var items = [
    Image.asset('assets/images/Frame_amlak.png'),
    Image.asset('assets/images/Frame_ejaramaskoni.png'),
    Image.asset('assets/images/Frame_foroshmaskoni.png'),
    Image.asset('assets/images/Frame_foroshtejari.png'),
    Image.asset('assets/images/Frame_ejaratejari.png'),
    Image.asset('assets/images/Frame_kotamodat.png'),
    Image.asset('assets/images/Frame_sakht va saz.png'),
  ];

  final _pages = [
    AmlakPage(),
    EjaraMaskoni(),
    ForoshMaskoni(),
    ForoshTagariEdari(),
    EjaraTagariEdari(),
    EjaraKotaModat(),
    SachtSaz(),
  ];
}
