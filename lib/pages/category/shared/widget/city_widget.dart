import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/switchItem.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class City extends StatelessWidget {
  City({super.key});
  final submit = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: Column(children: [
        const Center(
          child: Text(
            'انتخاب شهر',
            style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 22),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        SvgPicture.asset(
          'assets/images/city.svg',
          semanticsLabel: 'City Illustration',
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: TextField(
            textAlign: TextAlign.end,
            decoration: InputDecoration(
              hintText: 'جستجو در همه شهر ها',
              hintStyle: const TextStyle(
                  fontFamily: 'Iran Sans', fontWeight: FontWeight.w400),
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
              prefixIcon: const Icon(Icons.search),
            ),
            onChanged: (value) {
              // Add your search logic here
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Stack(
          children: [
            Center(
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(
                      99,
                      99,
                      99,
                      1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(0.6),
                  child: Container(
                    width: 346,
                    height: 291,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SwitchItem(
                          onSelected: (_) {
                            submit.value = true;
                          },
                          items: const [
                            "",
                          ]),
                      const SizedBox(
                        width: 1,
                      ),
                      const Text(
                        'همه شهرهای تهران',
                        style: TextStyle(
                            fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: Divider(
                endIndent: 40,
                indent: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SwitchItem(
                      onSelected: (_) {
                        submit.value = true;
                      },
                      items: const [
                        "",
                      ]),
                  const SizedBox(
                    width: 150,
                  ),
                  const Text(
                    'تهران',
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 90.0),
              child: Divider(
                endIndent: 40,
                indent: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SwitchItem(
                      onSelected: (_) {
                        submit.value = true;
                      },
                      items: const [
                        "",
                      ]),
                  const SizedBox(
                    width: 150,
                  ),
                  const Text(
                    'تهران',
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 140.0),
              child: Divider(
                endIndent: 40,
                indent: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SwitchItem(
                      onSelected: (_) {
                        submit.value = true;
                      },
                      items: const [
                        "",
                      ]),
                  const SizedBox(
                    width: 150,
                  ),
                  const Text(
                    'تهران',
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 190.0),
              child: Divider(
                endIndent: 40,
                indent: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SwitchItem(
                      onSelected: (_) {
                        submit.value = true;
                      },
                      items: const [
                        "",
                      ]),
                  const SizedBox(
                    width: 150,
                  ),
                  const Text(
                    'تهران',
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SwitchItem(
                      onSelected: (_) {
                        submit.value = true;
                      },
                      items: const [
                        "",
                      ]),
                  const SizedBox(
                    width: 150,
                  ),
                  const Text(
                    'تهران',
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 240.0),
              child: Divider(
                endIndent: 40,
                indent: 40,
              ),
            ),
          ],
        ),
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: GRADIANT_COLOR),
                  borderRadius: BorderRadius.circular(50)),
              child: IconButton(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: SvgPicture.asset(
                    'assets/images/tic.svg',
                    width: 33,
                    height: 26,
                  ),
                ),
                onPressed: () {
                  Get.back();
                },
              ),
            ),
          ),
        ),
      ])),
    );
  }
}
