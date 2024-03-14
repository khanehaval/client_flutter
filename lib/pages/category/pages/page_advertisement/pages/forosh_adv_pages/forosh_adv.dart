import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/sale_vila.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/select_location_kolangi.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/select_location_on_map.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/select_location_vila.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/profile.dart';
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
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              const SizedBox(
                height: 20,
              ),
              SvgPicture.asset(
                'assets/images/key and home1.svg',
                width: 180,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                child: Column(
                  children: [
                    _buildItem('assets/images/Frame_forosh.png', 1),
                    const SizedBox(
                      height: 10,
                    ),
                    _buildItem(
                      'assets/images/Frame_forosh2.png',
                      2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    _buildItem('assets/images/Frame_forosh3.png', 3),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            if (_selected.value > 0) {
                              int index = _selected.value;
                              if (index == 1) {
                                Get.to(() => const SelectLocationOnMap());
                              } else if (index == 2) {
                                Get.to(() => const SelectLocationVila());
                              } else if (index == 3) {
                                Get.to(() => const SelectLocationKolangi());
                              }
                            }
                          },
                          child: Obx(
                            () => Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                ),
              )
            ]),
      ),
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
                        ? Color.fromARGB(255, 95, 173, 237)
                        : Colors.black38,
                    width: _selected.value == index ? 2 : 1.5,
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
