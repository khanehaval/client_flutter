import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/category_advertisement.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AddNewAdvertisement extends StatelessWidget {
  const AddNewAdvertisement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Center(
          child: GestureDetector(
              onTap: () {
                Get.to(() => const CategoryAdvertisement());
              },
              child: Image.asset(
                "assets/images/economy.png",
                height: Get.height*0.4,
                fit: BoxFit.fill,
                width: double.infinity,
              )),
        ),
        Image.asset(
          "assets/images/plus.png",
          height: Get.height*0.39,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
