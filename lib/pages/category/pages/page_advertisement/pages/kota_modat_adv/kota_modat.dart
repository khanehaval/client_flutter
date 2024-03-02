import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/ejara_adv_pages/ejara_aparteman.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/ejara_adv_pages/ejara_vila.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/sale_vila.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/select_location_kolangi.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/select_location_on_map.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/select_location_vila.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class KotaModat extends StatelessWidget {
  final _selected = 0.obs;

  KotaModat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigation(),
      appBar: buildaAppBar(),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "انتخاب نوع ملک",
                style: TextStyle(
                    color: Color.fromRGBO(
                      99,
                      99,
                      99,
                      1,
                    ),
                    fontSize: 25,
                    fontFamily: MAIN_FONT_FAMILY),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SvgPicture.asset(
              'assets/images/key and home1.svg',
              width: 180,
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                _buildItem('assets/images/ejara_category.png', 1),
                _buildItem(
                  'assets/images/rahn_category.png',
                  2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        if (_selected.value > 0) {
                          int index = _selected.value;
                          if (index == 1) {
                            Get.to(
                                () => const SelectLocationOnEjaraAparteman());
                          } else if (index == 2) {
                            Get.to(() => const SelectLocationOnEjaraVila());
                          } else if (index == 3) {}
                        }
                      },
                      child: Obx(
                        () => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "...تایید و ادامه",
                              style: _selected.value == 0
                                  ? const TextStyle(
                                      fontSize: 15,
                                      fontFamily: MAIN_FONT_FAMILY,
                                      color: Colors.black38,
                                    )
                                  : const TextStyle(
                                      fontSize: 15,
                                      fontFamily: MAIN_FONT_FAMILY),
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
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 3),
        child: Obx(() => Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                    )
                  ],
                  border: Border.all(
                    color: _selected.value == index
                        ? Colors.greenAccent
                        : Colors.black38,
                    width: _selected.value == index ? 2 : 1.5,
                  )),
              child: Image.asset(assetPath),
            )),
      ),
    );
  }
}
