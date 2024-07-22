import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_application_1/pages/profile_private.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

PreferredSizeWidget buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: SvgPicture.asset('assets/images/left_icon.svg'),
      ),
      onPressed: () => Get.back(),
    ),
  );
}
