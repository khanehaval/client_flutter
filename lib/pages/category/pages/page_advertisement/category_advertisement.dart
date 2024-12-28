import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/ejara_adv_pages/ejara_adv.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/ejara_tejari_edari/ejara_tejari_edari_adv.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/forosh_adv.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_tejari_pages/forosh_tejari_adv.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/kota_modat_pages/ejara_kota_modat_page.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/sakht_v_saz_pages/sakht_v_saz_adv.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get.dart';

class CategoryAdvertisement extends StatefulWidget {
  const CategoryAdvertisement({super.key});

  @override
  _CategoryAdvertisementState createState() => _CategoryAdvertisementState();
}

class _CategoryAdvertisementState extends State<CategoryAdvertisement> {
  String? _selectedItem;

  void _onItemTapped(String itemKey, Widget nextPage) {
    setState(() {
      _selectedItem = itemKey;
    });
    Get.to(() => nextPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                const Text(
                  "انتخاب دسته بندی",
                  style: TextStyle(
                    fontFamily: MAIN_FONT_FAMILY,
                    color: Color.fromRGBO(99, 99, 99, 1),
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 20),
                Image.asset(
                  'assets/images/key and home1.png',
                  height: Get.height / 4,
                  width: Get.height / 4,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                children: [
                  _buildRow([
                    _buildItem('rentstore', 'assets/images/Frame_rentstore.png',
                        EjaraAdv()),
                    _buildItem('salehome', 'assets/images/Frame_salehome.png',
                        const ForoshAdv()),
                  ]),
                  const SizedBox(height: 10),
                  _buildRow([
                    _buildItem('rent', 'assets/images/Frame_rent.png',
                        EjaraTejariAdv()),
                    _buildItem('salestore', 'assets/images/Frame_salestore.png',
                        const ForoshTejariAdv()),
                  ]),
                  const SizedBox(height: 10),
                  _buildRow([
                    _buildItem('daily', 'assets/images/Frame_Daily.png',
                        EjaraKotaModatPage()),
                    _buildItem('construction',
                        'assets/images/Frame_Construction.png', SakhVaSaz()),
                  ]),
                  const SizedBox(height: 7),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(List<Widget> items) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
          items.expand((item) => [item, const SizedBox(width: 10)]).toList()
            ..removeLast(),
    );
  }

  Widget _buildItem(String key, String assetPath, Widget nextPage) {
    bool isSelected = _selectedItem == key;

    return GestureDetector(
      onTap: () => _onItemTapped(key, nextPage),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: GRADIANT_COLOR3),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Padding(
          padding: const EdgeInsets.all(0.7),
          child: Container(
            width: 144,
            height: 96,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: isSelected
                  ? Border.all(
                      color: const Color.fromARGB(0, 179, 177, 177),
                    )
                  : null,
              gradient: isSelected
                  ? const LinearGradient(
                      colors: GRADIANT_COLOR,
                    )
                  : null,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
              ),
              child: SizedBox(
                height: 80,
                width: 140,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(assetPath),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
