import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:image_picker/image_picker.dart';
import '../constant.dart';
import 'image_croped.dart';

class ImagesPicker extends StatelessWidget {
  final RxList<dynamic> selectedImagesPath;

  const ImagesPicker({super.key, required this.selectedImagesPath});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/images/Group 1223.svg',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 20),
        Obx(() => selectedImagesPath.isEmpty
            ? _buildEmptyPicker(context)
            : _buildImagePicker(context)),
      ],
    );
  }

  Widget _buildEmptyPicker(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: GestureDetector(
        onTap: () => _showImageSourceActionSheet(context),
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
              size: 35,
              color: Colors.black26,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImagePicker(BuildContext context) {
    return Column(
      children: [
        _buildMainImage(selectedImagesPath.first),
        const SizedBox(height: 30),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2,
          ),
          itemCount: selectedImagesPath.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(1),
              child: index == selectedImagesPath.length - 1
                  ? _buildAddMoreButton(context)
                  : _buildImageGridItem(index),
            );
          },
        ),
      ],
    );
  }

  Widget _buildMainImage(String path) {
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
                  _buildRemoveIcon(path),
                  const SizedBox(width: 20),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: const GradientBoxBorder(
                        gradient: LinearGradient(colors: GRADIANT_COLOR),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white70,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          "عکس اصلی",
                          style: TextStyle(fontFamily: MAIN_FONT_FAMILY),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: _buildCropper(path),
          ),
        ],
      ),
    );
  }

  Widget _buildCropper(String path) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        border: const GradientBoxBorder(
          gradient: LinearGradient(colors: GRADIANT_COLOR),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white38,
      ),
      child: IconButton(
        icon: const Icon(Icons.crop, size: 20),
        onPressed: () async {
          var result = await Cropper.cropImage(path);
          if (result != null) {
            var i = selectedImagesPath.indexOf(path);
            selectedImagesPath[i] = result;
          }
        },
      ),
    );
  }

  Widget _buildRemoveIcon(String path, {double size = 52}) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: const GradientBoxBorder(
          gradient: LinearGradient(colors: GRADIANT_COLOR),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white70,
      ),
      child: IconButton(
        icon: Icon(CupertinoIcons.clear_circled, size: size / 2),
        onPressed: () => selectedImagesPath.remove(path),
      ),
    );
  }

  Widget _buildAddMoreButton(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => _showImageSourceActionSheet(context),
      child: DottedBorder(
        borderType: BorderType.RRect,
        color: Colors.black26,
        strokeWidth: 1,
        radius: const Radius.circular(6),
        child: SizedBox(
          width: Get.mediaQuery.size.width * 0.4,
          height: 200,
          child: const Center(
            child: Icon(Icons.add, size: 30, color: Colors.black26),
          ),
        ),
      ),
    );
  }

  Widget _buildImageGridItem(int index) {
    return Container(
      decoration: BoxDecoration(
        color: Get.theme.focusColor,
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.file(
            File(selectedImagesPath[index + 1]),
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(1),
              child: _buildRemoveIcon(selectedImagesPath[index + 1], size: 34),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showImageSourceActionSheet(BuildContext context) async {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Photo Library'),
                onTap: () {
                  _pickImage(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () {
                  _pickImage(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    try {
      final pickedFile = await ImagePicker().pickImage(source: source);
      if (pickedFile != null) {
        selectedImagesPath.add(pickedFile.path);
      }
    } catch (e) {
      print('Error picking image: $e');
    }
  }
}
