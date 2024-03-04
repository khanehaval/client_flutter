import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/sale_old_house.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/twoItemInRow.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class DailyAparteman extends StatelessWidget {
  final aghsatType = "".obs;
  final onvan = "".obs;

  final hasAnbari = false.obs;
  final hasAsansor = false.obs;
  final hasParking = false.obs;
  final hasmeli = false.obs;
  final hasshenase = false.obs;
  final _onePrice = 0.0.obs;
  final _allPriceTextController = TextEditingController();
  final _metragTextController = TextEditingController();

  DailyAparteman({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildaAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "اجاره کوتاه مدت آپارتمان",
                  style: TextStyle(
                    fontSize: 9,
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                ),
                Icon(
                  Icons.arrow_back,
                  color: Colors.green,
                  size: 17,
                ),
                Text(
                  "اجاره کوتاه مدت",
                  style: TextStyle(
                    fontSize: 9,
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                ),
                Icon(
                  Icons.arrow_back,
                  color: Colors.green,
                  size: 17,
                ),
                Text(
                  "  ثبت آگهی اکونومی",
                  style: TextStyle(
                    fontSize: 9,
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            TwoItemInRow(
              label1: " اجاره روز خاص (تومان)",
              label2: "اجاره روز عادی (تومان) ",
              w1: SizedBox(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "0",
                    hintStyle: const TextStyle(
                      color: Color(0xFFA6A6A6),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              w2: SizedBox(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "0",
                    hintStyle: const TextStyle(
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
              height: 15,
            ),
            TwoItemInRow(
              label1: " هزینه نفر اضافه (تومان)",
              label2: "   (تومان)اجاره روز تعطیل",
              w1: SizedBox(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "0",
                    hintStyle: const TextStyle(
                      color: Color(0xFFA6A6A6),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              w2: SizedBox(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "0",
                    hintStyle: const TextStyle(
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
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                "توافقی",
                style: TextStyle(
                    fontFamily: MAIN_FONT_FAMILY,
                    fontSize: 14,
                    color: Color.fromRGBO(99, 99, 99, 1)),
              ),
              Container(
                child: Transform.scale(
                  scale: 0.80,
                  child: Obx(
                    () => Switch(
                        onChanged: (_) => hasAnbari.value = _,
                        value: hasAnbari.value,
                        activeColor: Colors.white,
                        activeTrackColor: Color.fromRGBO(54, 216, 89, 1),
                        inactiveThumbColor: Color.fromRGBO(11, 8, 8, 0.2),
                        inactiveTrackColor: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
              ),
            ]),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "*",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(156, 64, 64, 1),
                      fontFamily: MAIN_FONT_FAMILY),
                ),
                Text(
                  "متراژ",
                  style: TextStyle(
                      color: Color.fromRGBO(166, 166, 166, 1),
                      fontFamily: MAIN_FONT_FAMILY),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.95,
              child: TextField(
                textAlign: TextAlign.right,
                controller: _metragTextController,
                keyboardType: TextInputType.number,
                onChanged: (m) {
                  _onePrice.value = m.isNotEmpty
                      ? int.parse(_allPriceTextController.text) / int.parse(m)
                      : 0;
                },
                decoration: InputDecoration(
                  hintText: '120',
                  hintStyle: const TextStyle(
                    color: Color(0xFFA6A6A6),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            TwoItemInRow(
              label1: "ساعت خروج",
              label2: "ساعت ورود",
              w1: SizedBox(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                      hintText: 'انتخاب نشده',
                      hintStyle: const TextStyle(
                          color: Color(0xFFA6A6A6), fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: const Icon(CupertinoIcons.chevron_left_2),
                        onPressed: () {
                          // _show_item_1.value = !_show_item_1.isTrue;
                        },
                      )),
                ),
              ),
              w2: SizedBox(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'انتخاب نشده',
                    hintStyle:
                        const TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: IconButton(
                      icon: const Icon(CupertinoIcons.chevron_left_2),
                      onPressed: () {
                        // _show_item_1.value = !_show_item_1.isTrue;
                      },
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            TwoItemInRow(
              label1: "نفر اضافه تا ",
              label2: "ظرفیت پایه",
              w1: SizedBox(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                      hintText: 'انتخاب نشده',
                      hintStyle: const TextStyle(
                          color: Color(0xFFA6A6A6), fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: const Icon(CupertinoIcons.chevron_left_2),
                        onPressed: () {
                          // _show_item_1.value = !_show_item_1.isTrue;
                        },
                      )),
                ),
              ),
              w2: SizedBox(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'انتخاب نشده',
                    hintStyle:
                        const TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: IconButton(
                      icon: const Icon(CupertinoIcons.chevron_left_2),
                      onPressed: () {
                        // _show_item_1.value = !_show_item_1.isTrue;
                      },
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TwoItemInRow(
              label2: "تعداد اتاق ",
              label1: " طبقه ",
              w1: SizedBox(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                      hintText: 'انتخاب نشده',
                      hintStyle: const TextStyle(
                          color: Color(0xFFA6A6A6), fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: const Icon(CupertinoIcons.chevron_left_2),
                        onPressed: () {
                          // _show_item_1.value = !_show_item_1.isTrue;
                        },
                      )),
                ),
              ),
              w2: SizedBox(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'انتخاب نشده',
                    hintStyle:
                        const TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: IconButton(
                      icon: const Icon(CupertinoIcons.chevron_left_2),
                      onPressed: () {
                        // _show_item_1.value = !_show_item_1.isTrue;
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "دربست",
                  style: TextStyle(
                      fontFamily: MAIN_FONT_FAMILY,
                      fontSize: 14,
                      color: Color.fromRGBO(99, 99, 99, 1)),
                ),
                Container(
                  child: Transform.scale(
                    scale: 0.80,
                    child: Obx(
                      () => Switch(
                          onChanged: (_) => hasAnbari.value = _,
                          value: hasAnbari.value,
                          activeColor: Colors.white,
                          activeTrackColor: Color.fromRGBO(54, 216, 89, 1),
                          inactiveThumbColor: Color.fromRGBO(11, 8, 8, 0.2),
                          inactiveTrackColor: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "پارکینگ",
                    style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY,
                        fontSize: 14,
                        color: Color.fromRGBO(99, 99, 99, 1)),
                  ),
                  Container(
                    child: Transform.scale(
                      scale: 0.80,
                      child: Obx(
                        () => Switch(
                            onChanged: (_) => hasAsansor.value = _,
                            value: hasAsansor.value,
                            activeColor: Colors.white,
                            activeTrackColor: Color.fromRGBO(54, 216, 89, 1),
                            inactiveThumbColor: Color.fromRGBO(11, 8, 8, 0.2),
                            inactiveTrackColor:
                                Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            TwoItemInRow(
              label1: "شرایط برگزاری مراسم",
              label2: "شرایط حیوانات خانگی",
              w1: SizedBox(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                      hintText: 'انتخاب نشده',
                      hintStyle: const TextStyle(
                          color: Color(0xFFA6A6A6), fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: const Icon(CupertinoIcons.chevron_left_2),
                        onPressed: () {
                          // _show_item_1.value = !_show_item_1.isTrue;
                        },
                      )),
                ),
              ),
              w2: SizedBox(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'انتخاب نشده',
                    hintStyle:
                        const TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: IconButton(
                      icon: const Icon(CupertinoIcons.chevron_left_2),
                      onPressed: () {
                        // _show_item_1.value = !_show_item_1.isTrue;
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TwoItemInRow(
              label1: "استعمال دخانیات",
              label2: "تردد با کفش",
              w1: SizedBox(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                      hintText: 'انتخاب نشده',
                      hintStyle: const TextStyle(
                          color: Color(0xFFA6A6A6), fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: const Icon(CupertinoIcons.chevron_left_2),
                        onPressed: () {
                          // _show_item_1.value = !_show_item_1.isTrue;
                        },
                      )),
                ),
              ),
              w2: SizedBox(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'انتخاب نشده',
                    hintStyle:
                        const TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: IconButton(
                      icon: const Icon(CupertinoIcons.chevron_left_2),
                      onPressed: () {
                        // _show_item_1.value = !_show_item_1.isTrue;
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: const Text(
                    " مدارک محرمیت",
                    style: TextStyle(
                        color: Color.fromRGBO(99, 99, 99, 1),
                        fontFamily: MAIN_FONT_FAMILY),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            Container(
              height: 41,
              width: 372,
              child: TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: 'انتخاب نشده',
                  hintStyle: TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: IconButton(
                    icon: const Icon(CupertinoIcons.chevron_left_2),
                    onPressed: () {
                      // _show_item_1.value = !_show_item_1.isTrue;
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                "شناسنامه",
                style: TextStyle(
                    fontFamily: MAIN_FONT_FAMILY,
                    fontSize: 14,
                    color: Color.fromRGBO(99, 99, 99, 1)),
              ),
              Container(
                child: Transform.scale(
                  scale: 0.80,
                  child: Obx(
                    () => Switch(
                        onChanged: (_) => hasshenase.value = _,
                        value: hasshenase.value,
                        activeColor: Colors.white,
                        activeTrackColor: Color.fromRGBO(54, 216, 89, 1),
                        inactiveThumbColor: Color.fromRGBO(11, 8, 8, 0.2),
                        inactiveTrackColor: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "کارت ملی",
                    style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY,
                        fontSize: 14,
                        color: Color.fromRGBO(99, 99, 99, 1)),
                  ),
                  Container(
                    child: Transform.scale(
                      scale: 0.80,
                      child: Obx(
                        () => Switch(
                            onChanged: (_) => hasmeli.value = _,
                            value: hasmeli.value,
                            activeColor: Colors.white,
                            activeTrackColor: Color.fromRGBO(54, 216, 89, 1),
                            inactiveThumbColor: Color.fromRGBO(11, 8, 8, 0.2),
                            inactiveTrackColor:
                                Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: const Text(
                    "تعداد سرویس خواب",
                    style: TextStyle(
                        color: Color.fromRGBO(99, 99, 99, 1),
                        fontFamily: MAIN_FONT_FAMILY),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            Container(
              height: 41,
              width: 372,
              child: TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: 'انتخاب نشده',
                  hintStyle: TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: IconButton(
                    icon: const Icon(CupertinoIcons.chevron_left_2),
                    onPressed: () {
                      // _show_item_1.value = !_show_item_1.isTrue;
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TwoItemInRow(
              label1: "تعداد تخت دو نفره",
              label2: "تعداد تخت یک نفره",
              w1: SizedBox(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                      hintText: 'انتخاب نشده',
                      hintStyle: const TextStyle(
                          color: Color(0xFFA6A6A6), fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: const Icon(CupertinoIcons.chevron_left_2),
                        onPressed: () {
                          // _show_item_1.value = !_show_item_1.isTrue;
                        },
                      )),
                ),
              ),
              w2: SizedBox(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'انتخاب نشده',
                    hintStyle:
                        const TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: IconButton(
                      icon: const Icon(CupertinoIcons.chevron_left_2),
                      onPressed: () {
                        // _show_item_1.value = !_show_item_1.isTrue;
                      },
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "امکانات",
              style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
            ),
            const SizedBox(
              height: 15,
            ),
            TwoItemInRow(
              label1: "نوع کابینت",
              label2: "جنس کف",
              w1: Container(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                      hintText: 'انتخاب نشده',
                      hintStyle:
                          TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: const Icon(CupertinoIcons.chevron_left_2),
                        onPressed: () {
                          // _show_item_1.value = !_show_item_1.isTrue;
                        },
                      )),
                ),
              ),
              w2: Container(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'انتخاب نشده',
                    hintStyle:
                        TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: IconButton(
                      icon: const Icon(CupertinoIcons.chevron_left_2),
                      onPressed: () {
                        // _show_item_1.value = !_show_item_1.isTrue;
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TwoItemInRow(
              label1: "نوع سیستم گرمایش",
              label2: "نوع سیستم سرمایش",
              w1: Container(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'انتخاب نشده',
                    hintStyle:
                        TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: IconButton(
                      icon: const Icon(CupertinoIcons.chevron_left_2),
                      onPressed: () {
                        // _show_item_1.value = !_show_item_1.isTrue;
                      },
                    ),
                  ),
                ),
              ),
              w2: Container(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'انتخاب نشده',
                    hintStyle:
                        TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: IconButton(
                      icon: const Icon(CupertinoIcons.chevron_left_2),
                      onPressed: () {
                        // _show_item_1.value = !_show_item_1.isTrue;
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TwoItemInRow(
              label1: "سرویس بهداشتی",
              label2: "تامین کننده آب گرم",
              w1: Container(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                      hintText: 'انتخاب نشده',
                      hintStyle:
                          TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: const Icon(CupertinoIcons.chevron_left_2),
                        onPressed: () {
                          // _show_item_1.value = !_show_item_1.isTrue;
                        },
                      )),
                ),
              ),
              w2: Container(
                height: 41,
                width: getPageWidth_2(context),
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'انتخاب نشده',
                    hintStyle:
                        TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: IconButton(
                      icon: const Icon(CupertinoIcons.chevron_left_2),
                      onPressed: () {
                        // _show_item_1.value = !_show_item_1.isTrue;
                      },
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "امکانات",
              style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 5,
                      )
                    ],
                    border: Border.all(
                      color: Colors.black45,
                      width: 0.3,
                    )),
                child: const Icon(
                  Icons.add,
                ),
              ),
            ]),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "امکانات تفریحی",
              style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 5,
                      )
                    ],
                    border: Border.all(
                      color: Colors.black45,
                      width: 0.3,
                    )),
                child: const Icon(
                  Icons.add,
                ),
              ),
            ]),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "لوازم خانگی",
              style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 5,
                      )
                    ],
                    border: Border.all(
                      color: Colors.black45,
                      width: 0.3,
                    )),
                child: const Icon(
                  Icons.add,
                ),
              ),
            ]),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "لوازم آشپزخانه",
              style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 5,
                      )
                    ],
                    border: Border.all(
                      color: Colors.black45,
                      width: 0.3,
                    )),
                child: const Icon(
                  Icons.add,
                ),
              ),
            ]),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "امکانات امنیتی",
              style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 5,
                      )
                    ],
                    border: Border.all(
                      color: Colors.black45,
                      width: 0.3,
                    )),
                child: const Icon(
                  Icons.add,
                ),
              ),
            ]),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/Group 1223.svg',
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 372,
                  height: 193,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFB7B7B7)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "عنوان و توضیحات آگهی",
              style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            onvanWidget(context),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "*",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(156, 64, 64, 1),
                      fontFamily: MAIN_FONT_FAMILY),
                ),
                Text(
                  "عنوان آگهی",
                  style: TextStyle(
                      color: Color.fromRGBO(166, 166, 166, 1),
                      fontFamily: MAIN_FONT_FAMILY),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 41,
                  width: MediaQuery.of(context).size.width * 1 / 1.117,
                  child: TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'تایپ کنید',
                      hintStyle: const TextStyle(
                          color: Color(0xFFA6A6A6),
                          fontFamily: MAIN_FONT_FAMILY,
                          fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "توضیحات آگهی",
                  style: TextStyle(
                      color: Color.fromRGBO(166, 166, 166, 1),
                      fontFamily: MAIN_FONT_FAMILY),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1 / 1.117,
                  height: 218,
                  child: TextField(
                    maxLines: 5,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'تایپ کنید',
                      hintStyle: const TextStyle(
                          color: Color(0xFFA6A6A6),
                          fontFamily: MAIN_FONT_FAMILY,
                          fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 30, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "...تایید و ادامه",
                    style: true
                        ? TextStyle(
                            fontSize: 20,
                            fontFamily: MAIN_FONT_FAMILY,
                            color: Colors.black38,
                          )
                        // ignore: dead_code
                        : TextStyle(fontSize: 20, fontFamily: MAIN_FONT_FAMILY),
                  ),
                  Icon(
                    Icons.double_arrow,
                    color: Color.fromRGBO(76, 140, 237, 1),
                    size: 35,
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
