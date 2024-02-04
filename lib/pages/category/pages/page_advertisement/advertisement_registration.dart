import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/main_category.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/category_advertisement.dart';
import 'package:flutter_application_1/pages/educational_tour.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AdvertisementRegistration extends StatelessWidget {
    var show = true.obs;

  AdvertisementRegistration({super.key, required int index, required bool showEducation,});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: GestureDetector(
                onTap: () {
                  Get.to(()=> CategoryAdvertisement());
                },
                child: Image.asset(
                  "assets/images/economy.png",
                  height: 300,
                  width: 399,
                )),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Image.asset(
                  "assets/images/plus.png",
                  height: 390,
                  width: 378,
                ),
              ),
              Positioned(
                  top: 315,
                  left: 230,
                  child: SvgPicture.asset(
                    "assets/images/cost.svg",
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
