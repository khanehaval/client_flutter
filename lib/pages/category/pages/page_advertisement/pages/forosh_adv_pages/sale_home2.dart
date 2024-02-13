import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:get/get.dart';

class SaleHome2 extends StatelessWidget {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';
  final _show_item_1 = false.obs;

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
                    right: 95,
                  ),
                  child: const Text(
                    "مبلغ اقساط (تومان)",
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
                          "میزان وام (تومان)",
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
                  padding: const EdgeInsets.only(right: 27),
                  child: Text(
                    "تعداد اقساط (هر ماه) ",
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
              height: 30,
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
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
