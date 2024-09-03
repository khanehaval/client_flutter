import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/pages/home.dart';
import 'package:flutter_application_1/pages/category/shared/widget/Neighbourhood.dart';
import 'package:flutter_application_1/pages/category/shared/widget/app_bar.dart';
import 'package:flutter_application_1/pages/category/shared/widget/city_widget.dart';
import 'package:flutter_application_1/pages/private.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Consultants extends StatelessWidget {
  final show = true.obs;
  final imagePath = ''.obs;
  Future<void> pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      imagePath.value = pickedFile.path;
    }
  }

  void deleteImage() {
    imagePath.value = ''; // Clear the image path to delete the image
  }

  String _getImageName() {
    // Implement your logic to get the image name from the imagePath
    return imagePath.value.split('/').last;
  }

  Consultants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/images/logo-farsi.svg',
                    width: MediaQuery.of(context).size.width - 220,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "پنل مشاوران",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: MAIN_FONT_FAMILY),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 48,
                        width: getWidth(context),
                        child: TextField(
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: '* نام خانوادگی ',
                            hintStyle: const TextStyle(
                                color: Color(0xFFA6A6A6), fontSize: 13),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(
                                  99,
                                  99,
                                  99,
                                  1,
                                ),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(
                                  99,
                                  99,
                                  99,
                                  1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 48,
                        width: getWidth(context),
                        child: TextField(
                          onTap: () => show.value = false,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: '* نام ',
                            hintStyle: const TextStyle(
                                color: Color(0xFFA6A6A6), fontSize: 13),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(
                                  99,
                                  99,
                                  99,
                                  1,
                                ),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(
                                  99,
                                  99,
                                  99,
                                  1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 48,
                        width: getWidth(context),
                        child: Obx(
                          () => Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                colors: GRADIANT_COLOR1,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1.2),
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: GRADIANT_COLOR,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        imagePath.isEmpty ? Colors.white : null,
                                  ),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          imagePath.isEmpty
                                              ? CupertinoIcons.add_circled
                                              : CupertinoIcons.clear_circled,
                                        ),
                                        onPressed: () {
                                          if (imagePath.isEmpty) {
                                            pickImage();
                                          } else {
                                            deleteImage();
                                          }
                                        },
                                      ),
                                      if (imagePath.isEmpty)
                                        const Padding(
                                          padding: EdgeInsets.only(left: 13.0),
                                          child: Text(
                                            ' تصویر کارت ملی',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFFA6A6A6),
                                            ),
                                          ),
                                        )
                                      else
                                        Text(_getImageName()),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 48,
                        width: getWidth(context),
                        child: TextField(
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: '* کد ملی ',
                            hintStyle: const TextStyle(
                              color: Color(0xFFA6A6A6),
                              fontSize: 13,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(99, 99, 99, 1),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(99, 99, 99, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onDoubleTap: () {
                          Get.to(
                              () => Neighbourhood(
                                    index1: 0,
                                  ),
                              transition: Transition.leftToRight);
                        },
                        child: SizedBox(
                          height: 50,
                          width: getWidth(context),
                          child: Padding(
                            padding: const EdgeInsets.all(1.2),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: const LinearGradient(
                                      colors: GRADIANT_COLOR1)),
                              child: Padding(
                                padding: const EdgeInsets.all(1.2),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(
                                            'assets/images/moghay.svg',
                                            width: 18,
                                            height: 20,
                                            color: const Color.fromRGBO(
                                              48,
                                              48,
                                              48,
                                              1,
                                            ),
                                          )),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 13.0),
                                        child: Text(
                                          '*  محدوده فعالیت ',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFFA6A6A6),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 48,
                        width: getWidth(context),
                        child: TextField(
                          onTap: () {
                            Get.to(() => City());
                          },
                          readOnly: true,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: ' *  انتخاب شهر',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: SvgPicture.asset(
                                'assets/images/location_moshaver.svg',
                                color: Color.fromRGBO(48, 48, 48, 1),
                              ),
                            ),
                            hintStyle: const TextStyle(
                              color: Color(0xFFA6A6A6),
                              fontSize: 13,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(
                                  99,
                                  99,
                                  99,
                                  1,
                                ),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(
                                  99,
                                  99,
                                  99,
                                  1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 360,
                    height: 41,
                    child: TextField(
                      scrollPadding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                      ),
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: ' * نام کاربری  ( به انگلیسی) ',
                        hintStyle: const TextStyle(
                          color: Color(0xFFA5A5A5),
                          fontSize: 12,
                          fontFamily: 'Iran Sans',
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(23, 102, 175, 1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(23, 102, 175, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Obx(
            () => show.value
                ? Padding(
                    padding: const EdgeInsets.all(20),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: 160,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => Home());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.zero,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Ink(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.25),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: const Offset(0, 1)),
                                ],
                                gradient: GetGradient(),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                child: const Text(
                                  'تایید',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: MAIN_FONT_FAMILY,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }

  String _getImageName_moshaver() {
    var s = imagePath.value.split("/").last;
    if (s.length > 10) {
      var i = s.length - 10;
      s = s.substring(i, s.length);
    }
    return s;
  }

  double getWidth(BuildContext context) =>
      (MediaQuery.of(context).size.width / 2.05) * 0.9;

  LinearGradient GetGradient() => const LinearGradient(colors: [
        Color.fromARGB(255, 95, 173, 237),
        Color.fromARGB(126, 118, 238, 146),
      ]);
}
