
import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:image_picker/image_picker.dart';

import '../contant.dart';

class ImagesPicker extends StatelessWidget {
  final RxList selectedImagesPath;

  const ImagesPicker({super.key, required this.selectedImagesPath});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          'assets/images/Group 1223.svg',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          height: 20,
        ),
        Obx(() => selectedImagesPath.isEmpty
            ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: GestureDetector(
                  onTap: _attachImage,
                  child: DottedBorder(
                    radius: const Radius.circular(10),
                    borderType: BorderType.RRect,
                    color: Colors.black26,
                    strokeWidth: 1,
                    child: const SizedBox(
                      width: 70,
                      height: 70,
                      child: Icon(
                        Icons.add,
                        size: 50,
                        color: Colors.black26,
                      ),
                    ),
                  ),
                ),
              )
            : Column(
                children: [
                  mainImage(selectedImagesPath.first),
                  const SizedBox(
                    height: 10,
                  ),
                  GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2,
                      ),
                      itemCount: selectedImagesPath.length,
                      itemBuilder: (c, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 3, vertical: 5),
                          child: index == selectedImagesPath.length - 1
                              ? GestureDetector(
                                  behavior: HitTestBehavior.translucent,
                                  onTap: _attachImage,
                                  child: DottedBorder(
                                    borderType: BorderType.RRect,
                                    color: Colors.black26,
                                    strokeWidth: 1,
                                    radius: const Radius.circular(7),
                                    child: SizedBox(
                                      width: Get.mediaQuery.size.width * 0.4,
                                      height: 200,
                                      child: const Center(
                                        child: Icon(
                                          Icons.add,
                                          size: 30,
                                          color: Colors.black26,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                    color: Get.theme.focusColor,
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Image.file(
                                        File(selectedImagesPath[index + 1]),
                                        height: 150,
                                        width: double.infinity,
                                        fit: BoxFit.fill,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: removeIcon(
                                              selectedImagesPath[index + 1],
                                              size: 34),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                        );
                      }),
                ],
              ))
      ],
    );
  }

  Widget mainImage(
    String path,
  ) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.file(
            File(path),
            height: 200,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  removeIcon(path),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: const GradientBoxBorder(
                          gradient: LinearGradient(colors: GRADIANT_COLOR),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white70),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Center(
                          child: Text(
                        "عکس اصلی",
                        style: TextStyle(fontFamily: MAIN_FONT_FAMILY),
                      )),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget removeIcon(String path, {double size = 52}) {
    return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            border: const GradientBoxBorder(
              gradient: LinearGradient(colors: GRADIANT_COLOR),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
            color: Colors.white70),
        child: IconButton(
          icon: Icon(
            CupertinoIcons.clear_circled,
            size: size / 2,
          ),
          onPressed: () => selectedImagesPath.remove(path),
        ));
  }

  Future<void> _attachImage() async {
    try {
      var filesPath = await ImagePicker.platform.getMultiImageWithOptions();
      if (filesPath.isNotEmpty) {
        selectedImagesPath.addAll(filesPath.map((e) => e.path));
      }
    } catch (_) {}
  }
}
