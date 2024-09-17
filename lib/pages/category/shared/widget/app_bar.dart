import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_application_1/pages/profile_private.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

PreferredSizeWidget buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: SvgPicture.asset('assets/images/left_icon.svg'),
      ),
      onPressed: () => Get.back(),
    ),
  );
}

PreferredSizeWidget buildAppBar1() {
  return AppBar(
    leading: IconButton(
      icon: SvgPicture.asset('assets/images/left_icon.svg'),
      onPressed: () => Get.back(),
    ),
    backgroundColor: Colors.white,
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            blurRadius: 8,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
    ),
  );
}
