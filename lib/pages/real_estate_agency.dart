import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Realestateagency extends StatelessWidget {
  Future<void> pickImage() async {
  final ImagePicker _picker = ImagePicker();
  final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);

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
          icon: Icon(Icons.close),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: 200,
            height: 131,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/intro_screen_2.png'),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(13),
            child: Text(
              "پنل آژانس املاک",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: MAIN_FONT_FAMILY),
            ),
          ),
          SizedBox(
            height: 1,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 13),
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
              SizedBox(
                height: 0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 41,
                      width: 178,
                      child: TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                            hintText: 'نام آژانس *',
                            hintStyle: TextStyle(
                              color: Color(0xFFA6A6A6),
                            ),
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

          SizedBox(), // فاصله بین عکس و تکست فیلدها // بخش تکست فیلدها
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 41,
                    width: 150,
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'کد شهر *',
                        hintStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 70),
                Expanded(
                  child: Container(
                    height: 41,
                    width: 178,
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'تلفن ثابت * ',
                        hintStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                        ),
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
          SizedBox(height: 0), // فاصله بین عکس و تکست فیلدها // بخش تکست فیلدها
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
                        hintText: 'بارگذاری تصویر جواز*',
                        prefixIcon: IconButton(
                          icon: Icon(
                            CupertinoIcons.add_circled,
                          ),
                          onPressed: () {
                            pickImage();
                          },
                        ),
                        hintStyle: TextStyle(
                          fontSize: 13,
                          color: Color(0xFFA6A6A6),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 41,
                    width: 178,
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'شماره جواز *',
                        hintStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                        ),
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
          SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 245),
                child: Text(
                  "اطلاعات صاحب جواز",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 0), // فاصله بین عکس و تکست فیلدها // بخش تکست فیلدها
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
                        hintText: 'نام خانوادگی *',
                        hintStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 41,
                    width: 178,
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'نام *',
                        hintStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                        ),
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
          SizedBox(
              height: 15), 
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
                        hintText: 'بارگذاری تصویر کارت ملی*',hintStyle: TextStyle(fontSize: 11.5),
                        prefixIcon: IconButton(
                          icon: Icon(
                            CupertinoIcons.add_circled,
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
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 41,
                    width: 178,
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'تهران',
                        prefixIcon: Icon(Icons.location_on_sharp),
                        hintStyle: TextStyle(
                            fontSize: 17,
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
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  height: 41,
                  width: 178,
                  child: TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                        hintText: 'نام کاربری ( به انگلیسی) *',
                        hintStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ))
              ],
            ),
          ),
          SizedBox(
            height: 80,
            width: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Container(
              width: 160,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(colors: [
                  Color.fromARGB(700, 55, 250, 100),
                  Colors.blue,
                ]),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent),
                child: Text(
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

  LinearGradient getGradient() => const LinearGradient(colors: [
        Color.fromARGB(700, 55, 250, 100),
        Colors.blue,
      ]);
}
