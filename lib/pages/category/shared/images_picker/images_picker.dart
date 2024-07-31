import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'image_croped.dart';

class ImagesPicker extends StatelessWidget {
  final RxList<dynamic> selectedImagesPath;

  const ImagesPicker({Key? key, required this.selectedImagesPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            'assets/images/Group 1223.svg',
            fit: BoxFit.fitWidth,
          ),
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
          dashPattern: const [5, 5],
          radius: const Radius.circular(10),
          borderType: BorderType.RRect,
          color: const Color.fromARGB(115, 172, 172, 172),
          strokeWidth: 2,
          child: const SizedBox(
            width: 63,
            height: 63,
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
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 190 / 119,
          ),
          itemCount: selectedImagesPath.length < 5
              ? selectedImagesPath.length + 1
              : selectedImagesPath.length,
          itemBuilder: (context, index) {
            if (index == selectedImagesPath.length) {
              return _buildAddMoreButton(context);
            } else {
              return _buildImageGridItem(index);
            }
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
            fit: BoxFit.cover,
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
                  _buildMainImageLabel(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainImageLabel() {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: const GradientBoxBorder(
          gradient: LinearGradient(colors: GRADIANT_COLOR),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white70,
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            "عکس اصلی",
            style: TextStyle(fontFamily: MAIN_FONT_FAMILY),
          ),
        ),
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
          try {
            var result = await Cropper.cropImage(path);
            if (result != null) {
              var i = selectedImagesPath.indexOf(path);
              selectedImagesPath[i] = result;
            }
          } catch (e) {
            Get.snackbar('Error', 'Failed to crop image: $e');
          }
        },
      ),
    );
  }

  Widget _buildRemoveIcon(String path, {double size = 40}) {
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
        icon: Icon(CupertinoIcons.clear_circled, size: size / 1.83),
        onPressed: () => selectedImagesPath.remove(path),
      ),
    );
  }

  Widget _buildAddMoreButton(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => _showImageSourceActionSheet(context),
      child: Padding(
        padding: const EdgeInsets.only(right: 65, top: 20),
        child: DottedBorder(
          borderType: BorderType.RRect,
          color: Colors.black26,
          strokeWidth: 2,
          radius: const Radius.circular(10),
          child: SizedBox(
            width: Get.mediaQuery.size.width * 0.4,
            height: 200,
            child: const Center(
              child: Icon(Icons.add, size: 30, color: Colors.black26),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImageGridItem(int index) {
    return SizedBox(
      height: 200,
      width: 130,
      child: Container(
        decoration: BoxDecoration(
          color: Get.theme.focusColor,
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Stack(
          children: [
            Image.file(
              File(selectedImagesPath[index]),
              height: 119,
              width: 190,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: _buildRemoveIcon(selectedImagesPath[index], size: 34),
              ),
            ),
          ],
        ),
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
                  Get.back();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () {
                  _pickImage(ImageSource.camera);
                  Get.back();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    if (selectedImagesPath.length >= 5) {
      Get.snackbar('Error', 'You cannot add more than 5 images');
      return;
    }
    try {
      final pickedFile = await ImagePicker().pickImage(source: source);
      if (pickedFile != null) {
        var croppedFile = await Cropper.cropImage(pickedFile.path);
        if (croppedFile != null) {
          selectedImagesPath.add(croppedFile);
        } else {
          selectedImagesPath.add(pickedFile.path);
        }
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to pick image: $e');
    }
  }
}
