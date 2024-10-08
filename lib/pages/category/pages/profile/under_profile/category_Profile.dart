import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/category_window/Profile_ADs_Save.dart';
import 'package:flutter_application_1/pages/category/pages/profile/category_window/Profile_ADs_Seen.dart';
import 'package:flutter_application_1/pages/category/pages/profile/category_window/Profile_My_ADs.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/amlak_page.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/ejara_maskoni.dart';
import 'package:flutter_application_1/pages/category/pages/window/window_pages/forosh_maskoni.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class CategoryProfile extends StatefulWidget {
  final int index;

  const CategoryProfile({super.key, required this.index});

  @override
  State<CategoryProfile> createState() => _CategoryProfileState();
}

class _CategoryProfileState extends State<CategoryProfile> {
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
      backgroundColor: Colors.white,
      bottomNavigationBar: bottomNavigationBar2(0),
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              SizedBox(
                height: 120,
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
                        margin: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 7),
                        padding: const EdgeInsets.all(1.0),
                        height: 120,
                        width: Get.width / 2.2,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(225, 225, 225, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              height: 120,
                              width: Get.width / 2.2,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.15),
                                      offset: Offset(0, 0),
                                      blurRadius: 3),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: items[i](_currentIndex.value == i, i),
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
          ),
        ),
      ),
    );
  }
}

final List<Widget Function(bool, int)> items = [
  (bool isSelected, int index) => _buildImageWithText(
      'assets/images/Agahi_man_profile_home.svg',
      'آگهی های من',
      'آگهی های ثبت شده',
      isSelected,
      index),
  (bool isSelected, int index) => _buildImageWithText(
      'assets/images/favoraite_profile.svg',
      'نشان شده ها',
      'آگهی های مورد علاقه شما',
      isSelected,
      index),
  (bool isSelected, int index) => _buildImageWithText(
      'assets/images/see_profile.svg',
      'دیده شده ها',
      'آگهی های دیده شده شما',
      isSelected,
      index),
];
Widget _buildImageWithText(
    String assetPath, String text1, String text2, bool isSelected, int index) {
  // Define gradient colors for each item
  final List<List<Color>> selectedGradients = [
    [
      const Color.fromRGBO(0, 199, 187, 1),
      const Color.fromRGBO(255, 0, 0, 1)
    ], // Gradient for first item when selected
    [
      const Color.fromRGBO(184, 13, 13, 1),
      const Color.fromRGBO(48, 48, 48, 1)
    ], // Gradient for second item when selected
    [
      const Color.fromRGBO(0, 189, 97, 1),
      const Color.fromRGBO(48, 48, 48, 1)
    ], // Gradient for third item when selected
  ];

  final List<List<Color>> unselectedGradients = [
    [
      Color.fromRGBO(99, 99, 99, 1),
      Color.fromRGBO(150, 150, 150, 1)
    ], // Gradient for first item when unselected
    [
      Color.fromRGBO(150, 150, 150, 1),
      Color.fromRGBO(200, 200, 200, 1)
    ], // Gradient for second item when unselected
    [
      Color.fromRGBO(189, 189, 189, 1),
      Color.fromRGBO(238, 238, 238, 1)
    ], // Gradient for third item when unselected
  ];

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(
                  colors: isSelected
                      ? selectedGradients[index] // Gradient when selected
                      : unselectedGradients[index], // Gradient when unselected
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds);
              },
              child: SvgPicture.asset(
                assetPath,
                color: Colors.white, // This will be overridden by the gradient
                width: 30,
                height: 30,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text1,
                    style: TextStyle(
                      fontFamily: MAIN_FONT_FAMILY,
                      fontSize: 12,
                      color: isSelected
                          ? Colors.black
                          : const Color.fromARGB(255, 129, 128, 128),
                    ),
                  ),
                  if (text2.isNotEmpty)
                    Text(
                      text2,
                      style: const TextStyle(
                        fontFamily: MAIN_FONT_FAMILY,
                        fontSize: 8,
                        color: Color.fromARGB(255, 128, 128, 128), // Gray color
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

final List<Widget> _pages = [
  const ProfileMyAds(),
  const ProfileAdsSave(),
  const ProfileAdsSeen(),
];
