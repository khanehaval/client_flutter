import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/ejara_adv_pages/ejara_aparteman.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/ejara_adv_pages/ejara_vila.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/sale_vila.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/select_location_kolangi.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/select_location_on_map.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/select_location_vila.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/kota_modat_pages/selectlocationejaradailyvila.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/kota_modat_pages/selectlocationejarakotamodat.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/profile.dart';
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
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
            SvgPicture.asset(
              'assets/images/key and home1.svg',
              width: 180,
            ),
            Column(
              children: [
                _buildItem('assets/images/Frame_kota1.png', 1),
                const SizedBox(
                  height: 10,
                ),
                _buildItem(
                  'assets/images/Frame_kota2.png',
                  2,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      if (_selected.value > 0) {
                        int index = _selected.value;
                        if (index == 1) {
                          Get.to(() => const SelectLocationEjaraKotaModat());
                        } else if (index == 2) {
                          Get.to(() => const SelectLocationEjaraDailyVila());
                        } else if (index == 3) {}
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
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
      child: SizedBox(
        height: 90,
        width: 140,
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
                    width: _selected.value == index ? 1.5 : 1.5,
                  )),
              child: Image.asset(assetPath),
            )),
      ),
    );
  }
}

PreferredSizeWidget buildaAppBar() {
  return AppBar(
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios,
      ),
      onPressed: () => Get.back(),
    ),
    actions: [
      GestureDetector(
        onTap: () {
          Get.to(
            () => const Profile(),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(60)),
          child: const Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(
              Icons.person_2_rounded,
              size: 30,
            ),
          ),
        ),
      ),
    ],
  );
}
