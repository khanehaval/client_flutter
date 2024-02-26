import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/category_advertisement.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AdvertisementRegistration extends StatelessWidget {
  var show = true.obs;

  AdvertisementRegistration({
    super.key,
    required int index,
    required bool showEducation,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: () {
                Get.to(() => CategoryAdvertisement());
              },
              child: Image.asset(
                "assets/images/economy.png",
                height: 300,
                width: MediaQuery.of(context).size.width * 1 / 1.1,
              )),
          Stack(
            children: [
              Image.asset(
                "assets/images/plus.png",
                height: 350,
                width: MediaQuery.of(context).size.width * 1 / 1,
              ),
              Positioned(
                top: 285,
                left: 210,
                child: SvgPicture.asset("assets/images/cost.svg",
                    width: MediaQuery.of(context).size.width * 1 / 2.5),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
