import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagesPicker extends StatelessWidget {
  final RxList<dynamic> selectedImagesPath;

  const ImagesPicker({Key? key, required this.selectedImagesPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SvgPicture.asset(
            'assets/images/Group 1223.svg',
            fit: BoxFit.fitWidth,
          ),
        ),
        const SizedBox(height: 20),
        Obx(() => _buildImagePicker(context)), // Obx برای به‌روزرسانی UI
      ],
    );
  }

  Widget _buildImagePicker(BuildContext context) {
    return Column(
      children: [
        // نمایش سه گزینه یا عکس در اولین خط
        _buildImageGridRow(context, 0, 3),
        const SizedBox(height: 20),
        // نمایش سه گزینه یا عکس در دومین خط
        _buildImageGridRow(context, 3, 6),
      ],
    );
  }

  Widget _buildImageGridRow(
      BuildContext context, int startIndex, int endIndex) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(3, (index) {
        final imageIndex = startIndex + index;
        if (imageIndex < selectedImagesPath.length) {
          return _buildImageGridItem(imageIndex);
        } else {
          return _buildAddMoreButton(context, isMain: false);
        }
      }),
    );
  }

  Widget _buildImageGridItem(int index) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Image.file(
            File(selectedImagesPath[index]),
            height: 70,
            width: 100,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.center,
            child: _buildRemoveIcon(selectedImagesPath[index]), // آیکون حذف عکس
          ),
        ],
      ),
    );
  }

  Widget _buildRemoveIcon(String path, {double size = 40}) {
    return Padding(
      padding: const EdgeInsets.only(left: 27.0, top: 10),
      child: IconButton(
        icon: SvgPicture.asset(
          'assets/images/Vector-43.svg', // آیکون حذف
          width: 30,
          height: 30,
        ),
        onPressed: () {
          selectedImagesPath..value.remove(path); // حذف عکس از لیست
          selectedImagesPath.refresh(); // به‌روزرسانی UI پس از حذف
        },
      ),
    );
  }

  Widget _buildAddMoreButton(BuildContext context, {bool isMain = false}) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => _showImageSourceActionSheet(context),
      child: DottedBorder(
        borderType: BorderType.RRect,
        color: Colors.black26,
        strokeWidth: 2,
        radius: const Radius.circular(10),
        child: SizedBox(
          height: isMain ? 70 : 70, // سایز متفاوت برای عکس اصلی
          width: isMain ? 100 : 100, // سایز متفاوت برای عکس اصلی
          child: const Center(
            child: Icon(Icons.add, size: 30, color: Colors.black26),
          ),
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
    if (selectedImagesPath.length >= 6) {
      Get.snackbar('Error', 'You cannot add more than 6 images');
      return;
    }
    try {
      final pickedFile = await ImagePicker().pickImage(source: source);
      if (pickedFile != null) {
        selectedImagesPath.add(pickedFile.path);
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to pick image: $e');
    }
  }
}
