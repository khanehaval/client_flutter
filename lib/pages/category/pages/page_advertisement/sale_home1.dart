import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SaleHome1 extends StatelessWidget {
  const SaleHome1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(60)),
              child: const Padding(
                padding: EdgeInsets.all(3.0),
                child: Icon(
                  Icons.person_2_rounded,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 85, bottom: 20, top: 20),
          child: Text(
            "ثبت آگهی اکونومی",
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Iran Sans Bold'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 65),
          child: Container(
            width: 282,
            height: 254,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.50, color: Color(0xFF36D859)),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Image.asset('assets/images/Group 1440.png'),
          ),
        )
      ]),
    );
  }
}
