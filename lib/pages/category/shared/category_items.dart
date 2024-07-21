import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/ejara_kota_modat.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/ejara_maskoni.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/amlak_page.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/ejara_tajari_edari.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/forosh_maskoni.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/forosh_tgjari_edari.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/sacht_saz.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class CategoryItems extends StatefulWidget {
  final int index;

  const CategoryItems({super.key, required this.index});

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
    return Column(
      children: [
        SizedBox(
          height: 130,
          child: ScrollablePositionedList.builder(
            itemScrollController: _controller,
            itemCount: items.length,
            scrollDirection: Axis.horizontal,
            initialScrollIndex: widget.index,
            itemBuilder: (context, i) => GestureDetector(
              onTap: () {
                _controller.scrollTo(
                  index: i,
                  duration: const Duration(milliseconds: 100),
                  alignment: 0.0, // Align to the start of the list
                );
                _currentIndex.value = i;
              },
              child: Obx(
                () => Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  padding: const EdgeInsets.all(1.3),
                  height: 98,
                  width: 130,
                  decoration: BoxDecoration(
                    gradient: _currentIndex.value == i
                        ? const LinearGradient(colors: GRADIANT_COLOR)
                        : const LinearGradient(colors: BLACK_12_GRADIANT_COLOR),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 120,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: items[i](_currentIndex.value == i),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Obx(
          () => Expanded(child: _pages[_currentIndex.value]),
        ),
      ],
    );
  }

  static final List<Widget Function(bool)> items = [
    (bool isSelected) => _buildImageWithText(
        'assets/images/Frame_amlak.png', 'املاک', isSelected),
    (bool isSelected) => _buildImageWithText(
        'assets/images/Frame_ejaramaskoni.png', 'اجاره مسکونی', isSelected),
    (bool isSelected) => _buildImageWithText(
        'assets/images/Frame_foroshmaskoni.png', 'فروش مسکونی', isSelected),
    (bool isSelected) => _buildImageWithText(
        'assets/images/Frame_foroshtejari.png', 'فروش تجاری', isSelected),
    (bool isSelected) => _buildImageWithText(
        'assets/images/Frame_ejaratejari.png', 'اجاره تجاری', isSelected),
    (bool isSelected) => _buildImageWithText(
        'assets/images/Frame_kotamodat.png', 'کوتاه مدت', isSelected),
    (bool isSelected) => _buildImageWithText(
        'assets/images/Frame_sakht va saz.png', 'ساخت و ساز', isSelected),
  ];

  static Widget _buildImageWithText(
      String assetPath, String text, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            assetPath,
            color:
                isSelected ? Colors.black : const Color.fromRGBO(99, 99, 99, 1),
            width: 51,
            height: 51,
          ),
          const SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(
              fontFamily: MAIN_FONT_FAMILY,
              fontSize: 12,
              color: isSelected
                  ? Colors.black
                  : const Color.fromARGB(255, 129, 128, 128),
            ),
          ),
        ],
      ),
    );
  }

  static final List<Widget> _pages = [
    AmlakPage(),
    EjaraMaskoni(),
    ForoshMaskoni(),
    ForoshTagariEdari(),
    EjaraTagariEdari(),
    EjaraKotaModat(),
    SachtSaz(),
  ];
}
