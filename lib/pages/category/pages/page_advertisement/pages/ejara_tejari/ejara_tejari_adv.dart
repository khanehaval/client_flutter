import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/ejara_tejari/SelectLocationrentOffice.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/ejara_tejari/SelectLocationrentshop.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/ejara_tejari/SelectLocationrentstore.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/sale_vila.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/select_location_kolangi.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/select_location_on_map.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/select_location_vila.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_tejari_pages/select_location_sale_office.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_tejari_pages/select_location_sale_shop.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_tejari_pages/select_location_sale_store.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class EjaraTejariAdv extends StatelessWidget {
  final _selected = 0.obs;
  EjaraTejariAdv({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigation(),
      appBar: buildaAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 25),
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
                height: 25,
              ),
              SvgPicture.asset(
                'assets/images/key and home1.svg',
                width: 180,
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  _buildItem('assets/images/Frame_ejara_tejari1.png', 1),
                  SizedBox(
                    height: 10,
                  ),
                  _buildItem(
                    'assets/images/Frame_ejara_tejari2.png',
                    2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  _buildItem('assets/images/Frame_ejara_tejari3.png', 3),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          if (_selected.value > 0) {
                            int index = _selected.value;
                            if (index == 1) {
                              Get.to(() => const SelectLocationRentOffice());
                            } else if (index == 2) {
                              Get.to(() => const SelectLocationRentShop());
                            } else if (index == 3) {
                              Get.to(() => const SelectLocationRentStore());
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
