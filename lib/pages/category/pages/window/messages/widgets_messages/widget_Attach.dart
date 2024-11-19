import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AttachBottomSheet {
  final String? selectedImagePath;
  final String? selectedFilePath;
  final VoidCallback _pickImage;
  final VoidCallback _pickFile;

  AttachBottomSheet({
    required this.selectedImagePath,
    required this.selectedFilePath,
    required VoidCallback pickImage,
    required VoidCallback pickFile,
  })  : _pickImage = pickImage,
        _pickFile = pickFile;

  void showAttachBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.green,
              Colors.blue
            ]), // GRADIANT_COLOR1 جایگزین شده
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 1.0, left: 1, right: 1),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (selectedImagePath != null)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Image.file(
                          File(selectedImagePath!),
                          width: 100,
                          height: 100,
                        ),
                      ),
                    if (selectedFilePath != null)
                      const Padding(
                        padding: EdgeInsets.only(bottom: 16.0),
                        child: Icon(
                          Icons.insert_drive_file,
                          size: 40,
                        ),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 127,
                          height: 40,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFF429F56)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: InkWell(
                            onTap: _pickImage,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  'بارگذاری عکس',
                                  style: TextStyle(
                                    color: Color(0xFF303030),
                                    fontSize: 12,
                                    fontFamily: "MainFontFamily",
                                  ),
                                ),
                                SvgPicture.asset(
                                  'assets/images/Gallery.svg',
                                  width: 19,
                                  height: 19,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 127,
                          height: 40,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFF296FE2)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: InkWell(
                            onTap: _pickFile,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  'بارگذاری فایل',
                                  style: TextStyle(
                                    color: Color(0xFF303030),
                                    fontSize: 12,
                                    fontFamily: "MainFontFamily",
                                  ),
                                ),
                                SvgPicture.asset(
                                  'assets/images/File.svg',
                                  width: 19,
                                  height: 19,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
