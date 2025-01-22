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
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          padding: EdgeInsets.all(10.w),
          child: Column(
            children: [
              SizedBox(
                height: Get.height / 6,
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
                        alignment: 0.0,
                      );
                      _currentIndex.value = i;
                    },
                    child: Obx(
                      () => Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 7.w, vertical: 20.h),
                        padding: EdgeInsets.all(1.0.w),
                        height: 120.h,
                        width: Get.width / 2.2,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(225, 225, 225, 1),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              height: 120.h,
                              width: Get.width / 2.2,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.15),
                                      offset: Offset(0, 0),
                                      blurRadius: 3),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.r),
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
  final List<List<Color>> selectedGradients = [
    [const Color.fromRGBO(0, 199, 187, 1), const Color.fromRGBO(255, 0, 0, 1)],
    [const Color.fromRGBO(184, 13, 13, 1), const Color.fromRGBO(48, 48, 48, 1)],
    [const Color.fromRGBO(0, 189, 97, 1), const Color.fromRGBO(48, 48, 48, 1)],
  ];

  final List<List<Color>> unselectedGradients = [
    [
      const Color.fromRGBO(99, 99, 99, 1),
      const Color.fromRGBO(150, 150, 150, 1)
    ],
    [
      const Color.fromRGBO(150, 150, 150, 1),
      const Color.fromRGBO(200, 200, 200, 1)
    ],
    [
      const Color.fromRGBO(189, 189, 189, 1),
      const Color.fromRGBO(238, 238, 238, 1)
    ],
  ];

  return Padding(
    padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
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
                      ? selectedGradients[index]
                      : unselectedGradients[index],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds);
              },
              child: Padding(
                padding: EdgeInsets.only(right: 7.0.w),
                child: SvgPicture.asset(
                  assetPath,
                  color: Colors.white,
                  width: 30.w,
                  height: 30.h,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 10.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text1,
                    style: TextStyle(
                      fontFamily: MAIN_FONT_FAMILY,
                      fontSize: 12.sp, // استفاده از ScreenUtil برای فونت
                      color: isSelected
                          ? Colors.black
                          : const Color.fromARGB(255, 129, 128, 128),
                    ),
                  ),
                  if (text2.isNotEmpty)
                    Text(
                      text2,
                      style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY,
                        fontSize: 8.sp,
                        color: const Color.fromARGB(255, 128, 128, 128),
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
