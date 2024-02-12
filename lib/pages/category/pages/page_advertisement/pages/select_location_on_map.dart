import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../shared/contant.dart';

class SelectLocationOnMap extends StatefulWidget {
  const SelectLocationOnMap({super.key});

  @override
  State<SelectLocationOnMap> createState() => _SelectLocationOnMapState();
}

class _SelectLocationOnMapState extends State<SelectLocationOnMap> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () => Get.back(),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(
                () => const Profile(),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(60)),
              child: const Padding(
                padding: EdgeInsets.all(3.0),
                child: Icon(
                  Icons.person_2_rounded,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "ثبت آگهی اکونومی",
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: MAIN_FONT_FAMILY),
          ),
        ),
        Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1.50, color: Color(0xFF36D859)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Image.asset('assets/images/Group 1440.png'),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 130,
              ),
              child: const Text(
                "انتخاب محله ",
                style: TextStyle(
                  color: Color.fromRGBO(166, 166, 166, 1),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 27),
                  child: Container(
                    child: Text(
                      "*انتخاب شهر",
                      style: TextStyle(color: Color.fromRGBO(166, 166, 166, 1)),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 41,
              width: 176,
              child: TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: 'صادقیه شمالی',
                  hintStyle: TextStyle(
                    color: Color(0xFFA6A6A6),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(width: 25),
            Container(
              height: 41,
              width: 176,
              child: TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: 'تهران',
                  hintStyle: TextStyle(
                    color: Color(0xFFA6A6A6),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                ":آدرس",
                style: TextStyle(
                    fontFamily: MAIN_FONT_FAMILY,
                    color: Color.fromRGBO(166, 166, 166, 1)),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              width: 372,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "نوع ملک شما",
                style: TextStyle(
                  color: Color.fromRGBO(
                    166,
                    166,
                    166,
                    1,
                  ),
                  fontSize: 16,
                  fontFamily: MAIN_FONT_FAMILY,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "سوئیت",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: MAIN_FONT_FAMILY,
                  color: Color.fromRGBO(166, 166, 166, 1)),
            ),
            Checkbox(
              checkColor: Colors.white,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            Text(
              "برج",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: MAIN_FONT_FAMILY,
                  color: Color.fromRGBO(166, 166, 166, 1)),
            ),
            Checkbox(
              checkColor: Colors.white,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            Text(
              "پنت هاوس",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: MAIN_FONT_FAMILY,
                  color: Color.fromRGBO(166, 166, 166, 1)),
            ),
            const SizedBox(
              height: 1,
            ),
            Checkbox(
              checkColor: Colors.white,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
          ],
        ),
      ]),
    );
  }
}
