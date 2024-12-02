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

class Realestateagency extends StatelessWidget {
  var shows = true.obs;
  Future<void> pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      imagePath.value = pickedFile.path;
    }
  }

  String _getImageName() {
    // Implement your logic to get the image name from the imagePath
    return imagePath.value.split('/').last;
  }

  void deleteImage() {
    imagePath.value = ''; // Clear the image path to delete the image
  }

  Realestateagency({super.key});
  final show = true.obs;
  final imagePath = ''.obs;
  @override
  Widget build(BuildContext context) {
    var shows = true.obs;

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: buildAppBar(),
      body: Column(
        children: [
          SvgPicture.asset(
            'assets/images/logo-farsi.svg',
            width: MediaQuery.of(context).size.width - 220,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "پنل آژانس املاک",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: MAIN_FONT_FAMILY),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 25),
                child: Text(
                  "اطلاعات آژانس املاک",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 13),
                      child: SizedBox(
                        height: 40,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            TextField(
                              style: const TextStyle(
                                fontFamily: MAIN_FONT_FAMILY,
                              ),
                              textAlign: TextAlign.center,
                              textDirection: TextDirection.rtl,
                              decoration: InputDecoration(
                                hintText: 'نام آژانس (برای مثال : خانه اول)',
                                hintStyle: const TextStyle(
                                  fontFamily: MAIN_FONT_FAMILY_UltraLight,
                                  color: Color(0xFFA6A6A6),
                                  fontSize: 12,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Color(0xFFA6A6A6),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: MediaQuery.of(context).size.width *
                                  0.70, // 65% of screen width

                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(11),
                                        gradient: const LinearGradient(
                                            colors: GRADIANT_COLOR3)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1.2),
                                      child: Container(
                                        width: 80,
                                        height: 25,
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: const Padding(
                                          padding: EdgeInsets.only(left: 3.0),
                                          child: Text(
                                            'آژانس املاک',
                                            style: TextStyle(
                                              fontFamily:
                                                  MAIN_FONT_FAMILY_MEDIUM,
                                              fontSize: 11,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 1 / 5,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                          fontFamily: MAIN_FONT_FAMILY, fontSize: 10),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: '* کد شهر ',
                        hintStyle: const TextStyle(
                            fontFamily: MAIN_FONT_FAMILY_UltraLight,
                            color: Color(0xFFA6A6A6),
                            fontSize: 10),
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
                        contentPadding:
                            const EdgeInsets.only(left: 25, top: 20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  height: 40,
                  width: 250,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: const TextStyle(
                        fontFamily: MAIN_FONT_FAMILY, fontSize: 10),
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: '* تلفن ثابت ',
                      hintStyle: const TextStyle(
                          fontFamily: MAIN_FONT_FAMILY_UltraLight,
                          color: Color(0xFFA6A6A6),
                          fontSize: 11),
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
                      contentPadding: const EdgeInsets.only(right: 10, top: 10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 40,
                  width: getWidth3(context),
                  child: Obx(
                    () => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
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
                              color: imagePath.isEmpty ? Colors.white : null,
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    imagePath.isEmpty
                                        ? CupertinoIcons.add_circled
                                        : CupertinoIcons.clear_circled,
                                    size: 20,
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
                                    padding: EdgeInsets.only(left: 40.0),
                                    child: Text(
                                      ' تصویر جواز',
                                      style: TextStyle(
                                        fontFamily: MAIN_FONT_FAMILY_UltraLight,
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
                const SizedBox(width: 20),
                Expanded(
                  child: SizedBox(
                    height: 41,
                    width: getWidth3(context),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                          fontFamily: MAIN_FONT_FAMILY, fontSize: 10),
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: '* شماره جواز ',
                        hintStyle: const TextStyle(
                            fontFamily: MAIN_FONT_FAMILY_UltraLight,
                            color: Color(0xFFA6A6A6),
                            fontSize: 11),
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
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 205),
                child: Text(
                  "اطلاعات صاحب جواز",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 40,
                  width: getWidth3(context),
                  child: TextField(
                    style: const TextStyle(
                        fontFamily: MAIN_FONT_FAMILY, fontSize: 10),
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: '* نام خانوادگی ',
                      hintStyle: const TextStyle(
                        fontFamily: MAIN_FONT_FAMILY_UltraLight,
                        fontSize: 11,
                        color: Color(0xFFA6A6A6),
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
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 40,
                  width: getWidth3(context),
                  child: TextField(
                    style: const TextStyle(
                        fontFamily: MAIN_FONT_FAMILY, fontSize: 10),
                    onTap: () => show.value = false,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: ' *نام ',
                      hintStyle: const TextStyle(
                        fontFamily: MAIN_FONT_FAMILY_UltraLight,
                        color: Color(0xFFA6A6A6),
                        fontSize: 11,
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
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onDoubleTap: () {
                  Get.to(() => Neighbourhood(),
                      transition: Transition.leftToRight);
                },
                child: SizedBox(
                  height: 40,
                  width: getWidth3(context),
                  child: Padding(
                    padding: const EdgeInsets.all(1.2),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          gradient:
                              const LinearGradient(colors: GRADIANT_COLOR1)),
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
                                    width: 16,
                                    height: 18,
                                    color: const Color.fromRGBO(
                                      48,
                                      48,
                                      48,
                                      1,
                                    ),
                                  )),
                              const Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  '*  محدوده فعالیت ',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontFamily: MAIN_FONT_FAMILY_UltraLight,
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
                height: 40,
                width: getWidth3(context),
                child: TextField(
                  style: const TextStyle(
                      fontFamily: MAIN_FONT_FAMILY, fontSize: 10),
                  onTap: () {
                    Get.to(() => City());
                  },
                  readOnly: true,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: ' *  انتخاب شهر',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: SvgPicture.asset(
                        'assets/images/location_moshaver.svg',
                        color: const Color.fromRGBO(48, 48, 48, 1),
                      ),
                    ),
                    hintStyle: const TextStyle(
                      fontFamily: MAIN_FONT_FAMILY_UltraLight,
                      color: Color(0xFFA6A6A6),
                      fontSize: 11,
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
                    contentPadding: const EdgeInsets.only(right: 10, top: 10),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 13),
                  child: SizedBox(
                    height: 40,
                    child: Stack(
                      children: [
                        TextField(
                          style: const TextStyle(
                              fontFamily: MAIN_FONT_FAMILY, fontSize: 10),
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(
                            hintText: 'نام کاربری * ( به انگلیسی) ',
                            hintStyle: const TextStyle(
                              fontFamily: MAIN_FONT_FAMILY_UltraLight,
                              color: Color(0xFFA6A6A6),
                              fontSize: 11,
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
                            contentPadding:
                                const EdgeInsets.only(right: 10, top: 20),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5.0, left: 5, bottom: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    gradient: const LinearGradient(
                                        colors: GRADIANT_COLOR3)),
                                child: Padding(
                                  padding: const EdgeInsets.all(1.2),
                                  child: Container(
                                    width: 80,
                                    padding: const EdgeInsets.only(
                                      left: 8,
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white),
                                    child: const Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 5.0),
                                        child: Text(
                                          'Agancy /',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
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
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    const SizedBox(width: 5.0),
                    RichText(
                      text: const TextSpan(
                        text: ' Agency /',
                        style: TextStyle(
                          color: Color.fromRGBO(
                            48,
                            48,
                            48,
                            1,
                          ),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '  KhanehAval',
                            style: TextStyle(
                              color: Color.fromRGBO(23, 102, 175, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: const Padding(
                  padding: EdgeInsets.only(top: 5, right: 20.0),
                  child: Text(
                    ":برای مثال ",
                    style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY_LIGHT,
                        color: Color.fromRGBO(166, 166, 166, 1)),
                  ),
                ),
              ),
            ],
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

  double getWidth3(BuildContext context) =>
      (MediaQuery.of(context).size.width / 2.05) * 0.9;

  double getWidth4(BuildContext context) =>
      (MediaQuery.of(context).size.width / 1.1) * 0.2;

  String _getImageName_real() {
    var s = imagePath.value.split("/").last;
    if (s.length > 10) {
      var i = s.length - 10;
      s = s.substring(i, s.length);
    }
    return s;
  }
}
