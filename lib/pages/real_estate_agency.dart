import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/pages/home.dart';
import 'package:flutter_application_1/pages/private.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Realestateagency extends StatelessWidget {
  Future<void> pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      print("Picked Image Path: ${pickedFile.path}");
    }
  }

  const Realestateagency({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.to(() => Home()),
          icon: SvgPicture.asset(
            'assets/images/Vector-47.svg',
            width: 18,
            height: 18,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1 / 1.2,
            height: 131,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Rectangle 1.png'),
              ),
            ),
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
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  "اطلاعات آژانس املاک",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 41,
                      width: 178,
                      child: TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                            hintText: '* نام آژانس ',
                            hintStyle: const TextStyle(
                                color: Color(0xFFA6A6A6), fontSize: 13),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                    ))
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 41,
                    width: MediaQuery.of(context).size.width * 1 / 1,
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: '* کد شهر ',
                        hintStyle: const TextStyle(
                            color: Color(0xFFA6A6A6), fontSize: 13),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 60),
                Container(
                  height: 41,
                  width: 178,
                  child: TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: '* تلفن ثابت ',
                      hintStyle: const TextStyle(
                          color: Color(0xFFA6A6A6), fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 41,
                    width: 178,
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: '*  بارگذاری تصویر جواز',
                        prefixIcon: IconButton(
                          icon: const Icon(
                            CupertinoIcons.add_circled,
                          ),
                          onPressed: () {
                            pickImage();
                          },
                        ),
                        hintStyle: const TextStyle(
                          fontSize: 10,
                          color: Color(0xFFA6A6A6),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 41,
                    width: 178,
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: '* شماره جواز ',
                        hintStyle: const TextStyle(
                            color: Color(0xFFA6A6A6), fontSize: 13),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 41,
                    width: MediaQuery.of(context).size.width * 1 / 1.06,
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: '* نام خانوادگی ',
                        hintStyle: const TextStyle(
                            color: Color(0xFFA6A6A6), fontSize: 13),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 41,
                    width: MediaQuery.of(context).size.width * 1 / 1.06,
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: '* نام ',
                        hintStyle: const TextStyle(
                            color: Color(0xFFA6A6A6), fontSize: 13),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 41,
                    width: 178,
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: '*  محدوده فعالیت ',
                        hintStyle: const TextStyle(fontSize: 11),
                        prefixIcon: IconButton(
                          icon: SvgPicture.asset(
                            'assets/images/moghay.svg',
                          ),
                          onPressed: () {
                            pickImage();
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 41,
                    width: 178,
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'تهران',
                        prefixIcon: const Icon(Icons.location_on_sharp),
                        hintStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: MAIN_FONT_FAMILY),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Agancy / Ayandeh"),
                Container(
                  child: const Text(
                    ":برای مثال ",
                    style: TextStyle(color: Color.fromRGBO(166, 166, 166, 1)),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  height: 41,
                  width: 178,
                  child: TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                        hintText: 'نام کاربری * ( به انگلیسی) ',
                        hintStyle: const TextStyle(
                            color: Color(0xFFA6A6A6), fontSize: 14),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Container(
              width: MediaQuery.of(context).size.width * 1 / 3,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: GetGradient(),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent),
                child: const Text(
                  'تایید',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: MAIN_FONT_FAMILY),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
