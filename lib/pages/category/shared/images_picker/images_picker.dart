import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/models/server_model/sale_aparteman.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image/image.dart' as img;
import 'package:flutter_screenutil/flutter_screenutil.dart'; // اضافه کردن ScreenUtil

class ImagesPicker extends StatelessWidget {
  final RxList<dynamic> selectedImagesPath;

  const ImagesPicker({Key? key, required this.selectedImagesPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20.w), // استفاده از w برای padding
          child: SvgPicture.asset(
            'assets/images/Group 1223.svg',
            fit: BoxFit.fitWidth,
          ),
        ),
        SizedBox(height: 20.h), // استفاده از h برای ارتفاع
        Obx(() => _buildImagePicker(context)),
      ],
    );
  }

  Widget _buildImagePicker(BuildContext context) {
    return Column(
      children: [
        _buildImageGridRow(context, 0, 3),
        SizedBox(height: 20.h), // استفاده از h برای ارتفاع
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
        borderRadius: BorderRadius.circular(10.r), // استفاده از r برای شعاع
      ),
      child: Stack(
        children: [
          Image.file(
            File(selectedImagesPath[index]),
            height: 60.h, // استفاده از h برای ارتفاع
            width: 100.w, // استفاده از w برای عرض
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.center,
            child: _buildRemoveIcon(selectedImagesPath[index]),
          ),
        ],
      ),
    );
  }

  Widget _buildRemoveIcon(String path, {double size = 40}) {
    return Padding(
      padding: EdgeInsets.only(
          left: 27.w, top: 10.h), // استفاده از w و h برای padding
      child: IconButton(
        icon: SvgPicture.asset(
          'assets/images/Vector-43.svg',
          width: 30.w, // استفاده از w برای عرض
          height: 30.h, // استفاده از h برای ارتفاع
        ),
        onPressed: () {
          selectedImagesPath..value.remove(path);
          selectedImagesPath.refresh();
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
        radius: Radius.circular(10.r), // استفاده از r برای شعاع
        child: SizedBox(
          height: isMain ? 60.h : 60.h, // استفاده از h برای ارتفاع
          width: isMain ? 95.w : 95.w, // استفاده از w برای عرض
          child: Center(
            child: Icon(Icons.add,
                size: 30.sp,
                color: Colors.black26), // استفاده از sp برای اندازه
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
                leading: Icon(Icons.photo_library,
                    size: 24.sp), // استفاده از sp برای اندازه
                title: Text('Photo Library',
                    style:
                        TextStyle(fontSize: 14.sp)), // استفاده از sp برای فونت
                onTap: () {
                  _pickImage(ImageSource.gallery);
                  Get.back();
                  SaleApartemanServerModel;
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_camera,
                    size: 24.sp), // استفاده از sp برای اندازه
                title: Text('Camera',
                    style:
                        TextStyle(fontSize: 14.sp)), // استفاده از sp برای فونت
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
    try {
      if (selectedImagesPath.length >= 6) {
        Get.snackbar('Error', 'You cannot add more than 6 images');
        return;
      }
      final pickedFile = await ImagePicker().pickImage(source: source);
      if (pickedFile != null) {
        final croppedFile = await _cropImage(pickedFile.path);
        if (croppedFile != null) {
          final compressedFile =
              await resizeAndCompressImage(File(croppedFile.path));
          selectedImagesPath.add(compressedFile.path);
        }
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to pick image: $e');
    }
  }

  Future<CroppedFile?> _cropImage(String path) async {
    return await ImageCropper().cropImage(
      sourcePath: path,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9,
      ],
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: 'Crop Image',
          toolbarColor: Colors.deepOrange,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.original,
          lockAspectRatio: false,
        ),
        IOSUiSettings(
          minimumAspectRatio: 1.0,
        ),
      ],
    );
  }
}

Future<File> resizeAndCompressImage(File file) async {
  final originalImage = img.decodeImage(await file.readAsBytes());
  if (originalImage == null) return file;
  final resizedImage = img.copyResize(originalImage, width: 200, height: 200);
  final compressedImageBytes = img.encodeJpg(resizedImage, quality: 70);
  final compressedFile =
      File('${file.parent.path}/compressed_${file.uri.pathSegments.last}');
  await compressedFile.writeAsBytes(compressedImageBytes);

  return compressedFile;
}
