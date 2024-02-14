import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SaleHome2 extends StatelessWidget {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';
  final _show_item_1 = false.obs;
  bool isChecked = false;
  final _selected = 0.obs;
  SaleHome2({super.key});

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildaAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.green,
                  size: 20,
                ),
                Text(
                  " خرید و فروش آپارتمان",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                ),
                Icon(
                  Icons.arrow_back,
                  color: Colors.green,
                  size: 20,
                ),
                Text(
                  "فروش مسکونی",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                ),
                Icon(
                  Icons.arrow_back,
                  color: Colors.green,
                  size: 20,
                ),
                Text(
                  "  اکونومی",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 95,
                  ),
                  child: const Text(
                    "قیمت هر متر مربع (تومان)",
                    style: TextStyle(
                        color: Color.fromRGBO(166, 166, 166, 1),
                        fontFamily: MAIN_FONT_FAMILY),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "*",
                      style: TextStyle(
                          fontSize: 20, color: Color.fromRGBO(156, 64, 64, 1)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 27),
                      child: Container(
                        child: Text(
                          "قیمت کل (تومان)",
                          style: TextStyle(
                              color: Color.fromRGBO(166, 166, 166, 1),
                              fontFamily: MAIN_FONT_FAMILY),
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
                      hintText: 'مبلغ را وارد کنید',
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
                      hintText: 'مبلغ را وارد کنید',
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
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    ":قیمت به حروف ",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: MAIN_FONT_FAMILY,
                        color: Color.fromRGBO(166, 166, 166, 1)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "*",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(156, 64, 64, 1),
                      fontFamily: MAIN_FONT_FAMILY),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 27),
                  child: Text(
                    "متراژ",
                    style: TextStyle(
                        color: Color.fromRGBO(166, 166, 166, 1),
                        fontFamily: MAIN_FONT_FAMILY),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 41,
                  width: 372,
                  child: TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'مبلغ را وارد کنید',
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
              height: 35,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "فروش به صورت اقساطی",
                  style: TextStyle(
                      fontFamily: MAIN_FONT_FAMILY,
                      fontSize: 14,
                      color: Color.fromRGBO(99, 99, 99, 1)),
                ),
                Container(
                  child: Transform.scale(
                    scale: 0.80,
                    child: Switch(
                        onChanged: toggleSwitch,
                        value: isSwitched,
                        activeColor: Colors.white,
                        activeTrackColor: Color.fromRGBO(54, 216, 89, 1),
                        inactiveThumbColor: Color.fromRGBO(11, 8, 8, 0.2),
                        inactiveTrackColor: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "در صورت وارد نکردن آیتم ها، آگهی فقط با عنوان اقساطی منتشر میگردد",
              style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 80,
                  ),
                  child: const Text(
                    "مبلغ قسط (تومان)",
                    style: TextStyle(
                        color: Color.fromRGBO(99, 99, 99, 1),
                        fontFamily: MAIN_FONT_FAMILY),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        child: Text(
                          "پیش پرداخت (تومان)",
                          style: TextStyle(
                              color: Color.fromRGBO(99, 99, 99, 1),
                              fontFamily: MAIN_FONT_FAMILY),
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
                      hintText: 'مبلغ را وارد کنید',
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
                      hintText: 'مبلغ را وارد کنید',
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
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 130,
                  ),
                  child: const Text(
                    "زمان دریافت اقساط",
                    style: TextStyle(
                        color: Color.fromRGBO(99, 99, 99, 1),
                        fontFamily: MAIN_FONT_FAMILY),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        child: Text(
                          "تعداد اقساط",
                          style: TextStyle(
                              color: Color.fromRGBO(99, 99, 99, 1),
                              fontFamily: MAIN_FONT_FAMILY),
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
                  child: GestureDetector(
                    onTap: () {},
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                          hintText: 'انتخاب نشده',
                          hintStyle: TextStyle(
                            color: Color(0xFFA6A6A6),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: IconButton(
                            icon: _show_item_1.value
                                ? const Icon(
                                    Icons.keyboard_double_arrow_down_outlined,
                                    size: 25,
                                  )
                                : const Icon(CupertinoIcons.chevron_left_2),
                            onPressed: () {
                              _show_item_1.value = !_show_item_1.isTrue;
                            },
                          )),
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
                      hintText: 'انتخاب نشده',
                      hintStyle: TextStyle(
                        color: Color(0xFFA6A6A6),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: _show_item_1.value
                            ? const Icon(
                                Icons.keyboard_double_arrow_down_outlined,
                                size: 25,
                              )
                            : const Icon(CupertinoIcons.chevron_left_2),
                        onPressed: () {
                          _show_item_1.value = !_show_item_1.isTrue;
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "ضامن",
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
                  "سفته",
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
                  " چک",
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
            SizedBox(
              height: 10,
            ),
            Text(
              "قیمت نهایی ملک (پیش پرداخت + اقساط ) : 13.200.000.000 تومان",
              style: TextStyle(
                fontFamily: MAIN_FONT_FAMILY,
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "فروش به صورت اقساطی",
                  style: TextStyle(
                      fontFamily: MAIN_FONT_FAMILY,
                      fontSize: 14,
                      color: Color.fromRGBO(99, 99, 99, 1)),
                ),
                Container(
                  child: Transform.scale(
                    scale: 0.80,
                    child: Switch(
                        onChanged: toggleSwitch,
                        value: isSwitched,
                        activeColor: Colors.white,
                        activeTrackColor: Color.fromRGBO(54, 216, 89, 1),
                        inactiveThumbColor: Color.fromRGBO(11, 8, 8, 0.2),
                        inactiveTrackColor: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "در صورت وارد نکردن آیتم ها، آگهی فقط با عنوان دارای وام منتشر میگردد",
              style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 100,
                  ),
                  child: const Text(
                    "مبلغ اقساط",
                    style: TextStyle(
                        color: Color.fromRGBO(166, 166, 166, 1),
                        fontFamily: MAIN_FONT_FAMILY),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        child: Text(
                          "میزان وام (تومان)",
                          style: TextStyle(
                              color: Color.fromRGBO(166, 166, 166, 1),
                              fontFamily: MAIN_FONT_FAMILY),
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
                        hintText: 'مبلغ را وارد کنید',
                        hintStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: IconButton(
                          icon: _show_item_1.value
                              ? const Icon(
                                  Icons.keyboard_double_arrow_down_outlined,
                                  size: 25,
                                )
                              : const Icon(CupertinoIcons.chevron_left_2),
                          onPressed: () {
                            _show_item_1.value = !_show_item_1.isTrue;
                          },
                        )),
                  ),
                ),
                SizedBox(width: 25),
                Container(
                  height: 41,
                  width: 176,
                  child: TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'مبلغ را وارد کنید',
                      hintStyle: TextStyle(
                        color: Color(0xFFA6A6A6),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: _show_item_1.value
                            ? const Icon(
                                Icons.keyboard_double_arrow_down_outlined,
                                size: 25,
                              )
                            : const Icon(CupertinoIcons.chevron_left_2),
                        onPressed: () {
                          _show_item_1.value = !_show_item_1.isTrue;
                        },
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
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    child: Text(
                      "تعداد اقساط (هر ماه)  ",
                      style: TextStyle(
                          color: Color.fromRGBO(166, 166, 166, 1),
                          fontFamily: MAIN_FONT_FAMILY),
                      textAlign: TextAlign.start,
                    ),
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
                  hintStyle: TextStyle(
                    color: Color(0xFFA6A6A6),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: IconButton(
                    icon: _show_item_1.value
                        ? const Icon(
                            Icons.keyboard_double_arrow_down_outlined,
                            size: 25,
                          )
                        : const Icon(CupertinoIcons.chevron_left_2),
                    onPressed: () {
                      _show_item_1.value = !_show_item_1.isTrue;
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "*",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(156, 64, 64, 1)),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 155,
                  ),
                  child: const Text(
                    "تعداد اتاق ",
                    style: TextStyle(
                        color: Color.fromRGBO(166, 166, 166, 1),
                        fontFamily: MAIN_FONT_FAMILY),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "*",
                      style: TextStyle(
                          fontSize: 20, color: Color.fromRGBO(156, 64, 64, 1)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 27),
                      child: Container(
                        child: Text(
                          "سن بنا ",
                          style: TextStyle(
                              color: Color.fromRGBO(166, 166, 166, 1),
                              fontFamily: MAIN_FONT_FAMILY),
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
                        hintText: 'انتخاب نشده',
                        hintStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: IconButton(
                          icon: _show_item_1.value
                              ? const Icon(
                                  Icons.keyboard_double_arrow_down_outlined,
                                  size: 25,
                                )
                              : const Icon(CupertinoIcons.chevron_left_2),
                          onPressed: () {
                            _show_item_1.value = !_show_item_1.isTrue;
                          },
                        )),
                  ),
                ),
                SizedBox(width: 25),
                Container(
                  height: 41,
                  width: 176,
                  child: TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'انتخاب نشده',
                      hintStyle: TextStyle(
                        color: Color(0xFFA6A6A6),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: _show_item_1.value
                            ? const Icon(
                                Icons.keyboard_double_arrow_down_outlined,
                                size: 25,
                              )
                            : const Icon(CupertinoIcons.chevron_left_2),
                        onPressed: () {
                          _show_item_1.value = !_show_item_1.isTrue;
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "*",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(156, 64, 64, 1)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 27),
                  child: Container(
                    child: Text(
                      "طبقه ",
                      style: TextStyle(
                          color: Color.fromRGBO(166, 166, 166, 1),
                          fontFamily: MAIN_FONT_FAMILY),
                      textAlign: TextAlign.start,
                    ),
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
                  hintStyle: TextStyle(
                    color: Color(0xFFA6A6A6),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: IconButton(
                    icon: _show_item_1.value
                        ? const Icon(
                            Icons.keyboard_double_arrow_down_outlined,
                            size: 25,
                          )
                        : const Icon(CupertinoIcons.chevron_left_2),
                    onPressed: () {
                      _show_item_1.value = !_show_item_1.isTrue;
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "انباری",
                  style: TextStyle(
                      fontFamily: MAIN_FONT_FAMILY,
                      fontSize: 14,
                      color: Color.fromRGBO(99, 99, 99, 1)),
                ),
                Container(
                  child: Transform.scale(
                    scale: 0.80,
                    child: Switch(
                        onChanged: toggleSwitch,
                        value: isSwitched,
                        activeColor: Colors.white,
                        activeTrackColor: Color.fromRGBO(54, 216, 89, 1),
                        inactiveThumbColor: Color.fromRGBO(11, 8, 8, 0.2),
                        inactiveTrackColor: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "آسانسور",
                      style: TextStyle(
                          fontFamily: MAIN_FONT_FAMILY,
                          fontSize: 14,
                          color: Color.fromRGBO(99, 99, 99, 1)),
                    ),
                    Container(
                      child: Transform.scale(
                        scale: 0.80,
                        child: Switch(
                            onChanged: toggleSwitch,
                            value: isSwitched,
                            activeColor: Colors.white,
                            activeTrackColor: Color.fromRGBO(54, 216, 89, 1),
                            inactiveThumbColor: Color.fromRGBO(11, 8, 8, 0.2),
                            inactiveTrackColor:
                                Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                            child: Switch(
                                onChanged: toggleSwitch,
                                value: isSwitched,
                                activeColor: Colors.white,
                                activeTrackColor:
                                    Color.fromRGBO(54, 216, 89, 1),
                                inactiveThumbColor:
                                    Color.fromRGBO(11, 8, 8, 0.2),
                                inactiveTrackColor:
                                    Color.fromRGBO(255, 255, 255, 1)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            Column(
              children: [
                Text(
                  "سایر ویژگی ها",
                  style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 155,
                      ),
                      child: const Text(
                        "تعداد کل طبقات",
                        style: TextStyle(
                            color: Color.fromRGBO(99, 99, 99, 1),
                            fontFamily: MAIN_FONT_FAMILY),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 27),
                          child: Container(
                            child: Text(
                              "نوع سند",
                              style: TextStyle(
                                  color: Color.fromRGBO(99, 99, 99, 1),
                                  fontFamily: MAIN_FONT_FAMILY),
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
                            hintText: 'انتخاب نشده',
                            hintStyle: TextStyle(
                              color: Color(0xFFA6A6A6),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            prefixIcon: IconButton(
                              icon: _show_item_1.value
                                  ? const Icon(
                                      Icons.keyboard_double_arrow_down_outlined,
                                      size: 25,
                                    )
                                  : const Icon(CupertinoIcons.chevron_left_2),
                              onPressed: () {
                                _show_item_1.value = !_show_item_1.isTrue;
                              },
                            )),
                      ),
                    ),
                    SizedBox(width: 25),
                    Container(
                      height: 41,
                      width: 176,
                      child: TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'انتخاب نشده',
                          hintStyle: TextStyle(
                            color: Color(0xFFA6A6A6),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: IconButton(
                            icon: _show_item_1.value
                                ? const Icon(
                                    Icons.keyboard_double_arrow_down_outlined,
                                    size: 25,
                                  )
                                : const Icon(CupertinoIcons.chevron_left_2),
                            onPressed: () {
                              _show_item_1.value = !_show_item_1.isTrue;
                            },
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
                      padding: const EdgeInsets.only(
                        right: 90,
                      ),
                      child: const Text(
                        "تعداد کل واحد ها",
                        style: TextStyle(
                            color: Color.fromRGBO(99, 99, 99, 1),
                            fontFamily: MAIN_FONT_FAMILY),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 27),
                          child: Container(
                            child: Text(
                              "تعداد واحد در طبقه",
                              style: TextStyle(
                                  color: Color.fromRGBO(99, 99, 99, 1),
                                  fontFamily: MAIN_FONT_FAMILY),
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
                          hintText: 'تایپ کنید',
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
                          hintText: 'انتخاب نشده',
                          hintStyle: TextStyle(
                            color: Color(0xFFA6A6A6),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: IconButton(
                            icon: _show_item_1.value
                                ? const Icon(
                                    Icons.keyboard_double_arrow_down_outlined,
                                    size: 25,
                                  )
                                : const Icon(CupertinoIcons.chevron_left_2),
                            onPressed: () {
                              _show_item_1.value = !_show_item_1.isTrue;
                            },
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
                      padding: const EdgeInsets.only(
                        right: 112,
                      ),
                      child: const Text(
                        "بازسازی",
                        style: TextStyle(
                            color: Color.fromRGBO(99, 99, 99, 1),
                            fontFamily: MAIN_FONT_FAMILY),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 27),
                          child: Container(
                            child: Text(
                              "جهت ساختمان",
                              style: TextStyle(
                                  color: Color.fromRGBO(99, 99, 99, 1),
                                  fontFamily: MAIN_FONT_FAMILY),
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
                            hintText: 'انتخاب نشده',
                            hintStyle: TextStyle(
                              color: Color(0xFFA6A6A6),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            prefixIcon: IconButton(
                              icon: _show_item_1.value
                                  ? const Icon(
                                      Icons.keyboard_double_arrow_down_outlined,
                                      size: 25,
                                    )
                                  : const Icon(CupertinoIcons.chevron_left_2),
                              onPressed: () {
                                _show_item_1.value = !_show_item_1.isTrue;
                              },
                            )),
                      ),
                    ),
                    SizedBox(width: 25),
                    Container(
                      height: 41,
                      width: 176,
                      child: TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'انتخاب نشده',
                          hintStyle: TextStyle(
                            color: Color(0xFFA6A6A6),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: IconButton(
                            icon: _show_item_1.value
                                ? const Icon(
                                    Icons.keyboard_double_arrow_down_outlined,
                                    size: 25,
                                  )
                                : const Icon(CupertinoIcons.chevron_left_2),
                            onPressed: () {
                              _show_item_1.value = !_show_item_1.isTrue;
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                const Divider(
                  endIndent: 20,
                  indent: 20,
                ),
                Text(
                  "امکانات",
                  style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
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
                  padding: const EdgeInsets.only(
                    right: 155,
                  ),
                  child: const Text(
                    "نوع کابینت",
                    style: TextStyle(
                        color: Color.fromRGBO(99, 99, 99, 1),
                        fontFamily: MAIN_FONT_FAMILY),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 27),
                      child: Container(
                        child: Text(
                          "جنس کف",
                          style: TextStyle(
                              color: Color.fromRGBO(99, 99, 99, 1),
                              fontFamily: MAIN_FONT_FAMILY),
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
                        hintText: 'انتخاب نشده',
                        hintStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: IconButton(
                          icon: _show_item_1.value
                              ? const Icon(
                                  Icons.keyboard_double_arrow_down_outlined,
                                  size: 25,
                                )
                              : const Icon(CupertinoIcons.chevron_left_2),
                          onPressed: () {
                            _show_item_1.value = !_show_item_1.isTrue;
                          },
                        )),
                  ),
                ),
                SizedBox(width: 25),
                Container(
                  height: 41,
                  width: 176,
                  child: TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'انتخاب نشده',
                      hintStyle: TextStyle(
                        color: Color(0xFFA6A6A6),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: _show_item_1.value
                            ? const Icon(
                                Icons.keyboard_double_arrow_down_outlined,
                                size: 25,
                              )
                            : const Icon(CupertinoIcons.chevron_left_2),
                        onPressed: () {
                          _show_item_1.value = !_show_item_1.isTrue;
                        },
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
                  padding: const EdgeInsets.only(
                    right: 90,
                  ),
                  child: const Text(
                    "نوع سیستم گرمایش",
                    style: TextStyle(
                        color: Color.fromRGBO(99, 99, 99, 1),
                        fontFamily: MAIN_FONT_FAMILY),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Text(
                          "نوع سیستم سرمایش",
                          style: TextStyle(
                              color: Color.fromRGBO(99, 99, 99, 1),
                              fontFamily: MAIN_FONT_FAMILY),
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
                      hintText: 'انتخاب نشده',
                      hintStyle: TextStyle(
                        color: Color(0xFFA6A6A6),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: _show_item_1.value
                            ? const Icon(
                                Icons.keyboard_double_arrow_down_outlined,
                                size: 25,
                              )
                            : const Icon(CupertinoIcons.chevron_left_2),
                        onPressed: () {
                          _show_item_1.value = !_show_item_1.isTrue;
                        },
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
                      hintText: 'انتخاب نشده',
                      hintStyle: TextStyle(
                        color: Color(0xFFA6A6A6),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: _show_item_1.value
                            ? const Icon(
                                Icons.keyboard_double_arrow_down_outlined,
                                size: 25,
                              )
                            : const Icon(CupertinoIcons.chevron_left_2),
                        onPressed: () {
                          _show_item_1.value = !_show_item_1.isTrue;
                        },
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
                  padding: const EdgeInsets.only(
                    right: 97,
                  ),
                  child: const Text(
                    "سرویس بهداشتی",
                    style: TextStyle(
                        color: Color.fromRGBO(99, 99, 99, 1),
                        fontFamily: MAIN_FONT_FAMILY),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 27),
                      child: Container(
                        child: Text(
                          "تامین کننده آب گرم",
                          style: TextStyle(
                              color: Color.fromRGBO(99, 99, 99, 1),
                              fontFamily: MAIN_FONT_FAMILY),
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
                        hintText: 'انتخاب نشده',
                        hintStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: IconButton(
                          icon: _show_item_1.value
                              ? const Icon(
                                  Icons.keyboard_double_arrow_down_outlined,
                                  size: 25,
                                )
                              : const Icon(CupertinoIcons.chevron_left_2),
                          onPressed: () {
                            _show_item_1.value = !_show_item_1.isTrue;
                          },
                        )),
                  ),
                ),
                SizedBox(width: 25),
                Container(
                  height: 41,
                  width: 176,
                  child: TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'انتخاب نشده',
                      hintStyle: TextStyle(
                        color: Color(0xFFA6A6A6),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: IconButton(
                        icon: _show_item_1.value
                            ? const Icon(
                                Icons.keyboard_double_arrow_down_outlined,
                                size: 25,
                              )
                            : const Icon(CupertinoIcons.chevron_left_2),
                        onPressed: () {
                          _show_item_1.value = !_show_item_1.isTrue;
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "سایر امکانات",
              style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SvgPicture.asset('assets/images/Group 1219.svg'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/Group 1223.svg'),
                SizedBox(
                  height: 30,
                ),
                SvgPicture.asset(
                  'assets/images/Group 1219.svg',
                  width: 370,
                  height: 192,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "عنوان و توضیحات آگهی",
              style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "عنوان پیشنهادی خانه اول",
                  style: TextStyle(
                      fontFamily: MAIN_FONT_FAMILY,
                      fontSize: 14,
                      color: Color.fromRGBO(99, 99, 99, 1)),
                ),
                Container(
                  child: Transform.scale(
                    scale: 0.80,
                    child: Switch(
                        onChanged: toggleSwitch,
                        value: isSwitched,
                        activeColor: Colors.white,
                        activeTrackColor: Color.fromRGBO(54, 216, 89, 1),
                        inactiveThumbColor: Color.fromRGBO(11, 8, 8, 0.2),
                        inactiveTrackColor: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 41,
                  width: 372,
                  child: TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'آپارتمان 120 متری به صورت اقساطی',
                      hintStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                          fontFamily: MAIN_FONT_FAMILY,
                          fontSize: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "*",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(156, 64, 64, 1),
                      fontFamily: MAIN_FONT_FAMILY),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 27),
                  child: Text(
                    "عنوان آگهی",
                    style: TextStyle(
                        color: Color.fromRGBO(166, 166, 166, 1),
                        fontFamily: MAIN_FONT_FAMILY),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 41,
                  width: 372,
                  child: TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'تایپ کنید',
                      hintStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                          fontFamily: MAIN_FONT_FAMILY,
                          fontSize: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 27),
                  child: Text(
                    "توضیحات آگهی",
                    style: TextStyle(
                        color: Color.fromRGBO(166, 166, 166, 1),
                        fontFamily: MAIN_FONT_FAMILY),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 372,
                  height: 218,
                  child: TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'تایپ کنید',
                      hintStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                          fontFamily: MAIN_FONT_FAMILY,
                          fontSize: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => SaleHome2());
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "...تایید و ادامه",
                      style: _selected.value == 0
                          ? const TextStyle(
                              fontSize: 20,
                              fontFamily: MAIN_FONT_FAMILY,
                              color: Colors.black38,
                            )
                          : const TextStyle(
                              fontSize: 20, fontFamily: MAIN_FONT_FAMILY),
                    ),
                    Icon(
                      Icons.double_arrow,
                      color: _selected.value == 0
                          ? Colors.black54
                          : const Color.fromRGBO(76, 140, 237, 1),
                      size: 35,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
