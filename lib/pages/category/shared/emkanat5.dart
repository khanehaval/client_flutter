import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get.dart';
import 'dart:ui';

buildButtom5() {
  final _selected = 0.obs;
  return Get.bottomSheet(
      Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("بیش از یک مورد می توانید انتخاب کنید",
                      style: TextStyle(
                          fontSize: 15, fontFamily: MAIN_FONT_FAMILY)),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildItem(
                        'assets/images/Frame_balabar.png',
                        1,
                      ),
                      _buildItem('assets/images/Frame_barghi.png', 4),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildItem('assets/images/Frame_dozdgir.png', 3),
                      _buildItem('assets/images/Frame_ghafas.png', 4),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildItem('assets/images/Frame_harigh.png', 5),
                      _buildItem('assets/images/Frame_camera.png', 6),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildItem('assets/images/Frame_Tblo.png', 7),
                      _buildItem('assets/images/Frame_Auto_door.png', 8),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient:
                                const LinearGradient(colors: GRADIANT_COLOR),
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                          icon: const Icon(
                            CupertinoIcons.check_mark,
                            color: Colors.white,
                            weight: 10,
                          ),
                          onPressed: () {
                            Get.back();
                          },
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),

      // elevation: 20.0,
      backgroundColor: Colors.white,
      // enableDrag: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
      ));
}

Widget _buildItem(
  String assetPath,
  int index,
) {
  final _selected = 0.obs;

  return GestureDetector(
    onTap: () {
      _selected.value = index;
    },
    child: SizedBox(
      height: 85,
      width: 140,
      child: Obx(() => Container(
            decoration: BoxDecoration(
              gradient: _selected.value == index
                  ? const LinearGradient(colors: GRADIANT_COLOR)
                  : null,
              borderRadius: BorderRadius.circular(10),
              // border: Border.all(
              //   width: _selected.value == index ? 2 : 1.5,
              // )
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: _selected.value == index
                            ? Colors.white
                            : Colors.black12,
                        width: _selected.value == index ? 2.8 : 1.5,
                      )),
                  child: Image.asset(assetPath)),
            ),
          )),
    ),
  );
}