import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/select_location_on_map.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class UnderForosh extends StatelessWidget {
  final _selected = 0.obs;

  UnderForosh({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigation(),
      appBar: buildaAppBar(),
      body: Column(children: [
        const Text(
          "انتخاب نوع ملک",
          style: TextStyle(
              color: Color.fromRGBO(
                99,
                99,
                99,
                1,
              ),
              fontSize: 30,
              fontFamily: MAIN_FONT_FAMILY),
        ),
        const SizedBox(
          height: 5,
        ),
        SvgPicture.asset(
          'assets/images/key and home1.svg',
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildItem('assets/images/undercategory.svg', 1),
            const SizedBox(
              height: 5,
            ),
            _buildItem(
              'assets/images/under vila.svg',
              2,
            ),
            const SizedBox(
              height: 5,
            ),
            _buildItem('assets/images/under kolangi.svg', 3),
            const Padding(
              padding: EdgeInsets.only(top: 5),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  if (_selected.value > 0) {
                    int index = _selected.value;
                    Widget finalWidget =  const SizedBox.shrink();
                    if (index == 1) {
                      finalWidget = const SelectLocationOnMap();
                    } else if (index == 2) {
                    } else if (index == 3) {}
                    Get.to(()=>finalWidget);
                  }
                },
                child: Obx(
                  () => Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "تائید و ادامه ...",
                          style: _selected.value == 0
                              ? const TextStyle(
                                  fontSize: 20,
                                  fontFamily: MAIN_FONT_FAMILY,
                                  color: Colors.black38,
                                )
                              : const TextStyle(
                                  fontSize: 20, fontFamily: MAIN_FONT_FAMILY),
                        ),
                        Icon(
                          Icons.double_arrow,
                          color: _selected.value == 0
                              ? Colors.black54
                              : const Color.fromRGBO(76, 140, 237, 1),
                          size: 35,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ]),
    );
  }
  Widget _buildItem(
    String assetPath,
    int index,
  ) {
    return GestureDetector(
      onTap: () {
        _selected.value = index;
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Obx(() => Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 5,
                    )
                  ],
                  border: Border.all(
                    color: _selected.value == index
                        ? Colors.greenAccent
                        : Colors.black38,
                    width: _selected.value == index ? 2.5 : 1.5,
                  )),
              child: SvgPicture.asset(assetPath),
            )),
      ),
    );
  }
}
