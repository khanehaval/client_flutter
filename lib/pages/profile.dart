import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/switachable.dart';
import 'package:flutter_application_1/pages/educational_tour.dart';
import 'package:flutter_application_1/pages/login_secondly_page.dart';
import 'package:flutter_application_1/pages/register/register.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

openProfile() {
  showGeneralDialog(
    context: Get.context!,
    barrierColor: Colors.black54,
    barrierDismissible: true,
    barrierLabel: 'Label',
    pageBuilder: (_, __, ___) {
      return Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
          child: SizedBox(
            width: Get.width / 1.5,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 3, color: Colors.yellowAccent),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.asset(
                                  'assets/images/logo-fa-photoshop.png',
                                  width: 55,
                                  height: 55,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            const Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "آژانش املاک",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: MAIN_FONT_FAMILY,
                                      color: Colors.black54),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.verified,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "خانه اول",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: MAIN_FONT_FAMILY),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(),
                      ],
                    ),
                    Column(
                      children: [
                        _item('assets/images/profile_category.svg', "میزکار"),
                        _item('assets/images/profile_message.svg', "پیام ها"),
                        _item('assets/images/profile_moshavere.svg', "همکاران"),
                        _item('assets/images/profile_category.svg', "ویترین"),
                        _item('assets/images/profile_vahed.svg', "واحد های من"),
                        _item('assets/images/profile_setting.svg', " تنظیمات"),
                      ],
                    ),
                    Column(
                      children: [
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.black12),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 3, horizontal: 7),
                              child: GestureDetector(
                                onTap: () {},
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.add_circle,
                                      color: Colors.black26,
                                    ),
                                    Text(
                                      "ثبت آگهی",
                                      style: TextStyle(
                                          fontFamily: MAIN_FONT_FAMILY),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        // switchable(, title)
                        SizedBox(
                          height: 19,
                        ),
                        GestureDetector(
                          onTap: () {

                            Get.offAll(() => const Register());
                          },
                          child: SvgPicture.asset(
                            "assets/images/exit.svg",
                            width: 40,
                            height: 40,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
  // showDialog(
  //     // useSafeArea: false,
  //     context: Get.context!,
  //     builder: (c) {
  //       return SizedBox(
  //         width: 40,
  //         child: Material(
  //           child: SizedBox(
  //             width: 40,
  //             child: Align(
  //               alignment: Alignment(0, 1),
  //               child: Material(
  //                 shape:
  //                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
  //                 child: Padding(
  //                   padding: const EdgeInsets.all(32.0),
  //                   child: Column(
  //                     mainAxisSize: MainAxisSize.min,
  //                     children: <Widget>[
  //                       Text(
  //                         'Number Already Exists',
  //                         style: TextStyle(color: Colors.red),
  //                         textAlign: TextAlign.center,
  //                       ),
  //                       Text(
  //                         'Use another number',
  //                         textAlign: TextAlign.center,
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             )
  //           ),
  //         ),
  //       );
  //     });

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => Get.to(() => EducationalTour()),
            ),
            actions: [
              GestureDetector(
                  onTap: () {
                    openProfile();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(60)),
                        child: const Padding(
                          padding: EdgeInsets.all(3),
                          child: Icon(
                            Icons.person_2_rounded,
                            size: 30,
                          ),
                        )),
                  )),
            ]),
        body: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          SizedBox(
              width: 218,
              height: 700,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        // border: Border.all(
                        //   width: _selected.value == index ? 2 : 1.5,
                        // )
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromRGBO(0, 0, 0, 0.25),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 40, right: 10),
                      child: Column(children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Obx(
                            () => IconButton(
                              onPressed: () {},
                              icon: IconButton(
                                icon:
                                    SvgPicture.asset("assets/images/menu.svg"),
                                onPressed: () {
                                  BuildProfile();
                                },
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
              ))
        ]));
  }
}

Widget _item(String assetPath, String title) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          title,
          style: const TextStyle(fontFamily: MAIN_FONT_FAMILY),
        ),
        const SizedBox(
          width: 20,
        ),
        SvgPicture.asset(
          assetPath,
          width: 30,
          height: 30,
        ),
      ],
    ),
  );
}

class BuildProfile extends StatelessWidget {
  final _show_item_1 = false.obs;

  BuildProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => _show_item_1.isTrue
          ? Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // border: Border.all(
                    //   width: _selected.value == index ? 2 : 1.5,
                    // )
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromRGBO(0, 0, 0, 0.25),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 40, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 70,
                              height: 70.45,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                              child: SizedBox(
                                width: 28,
                                height: 24,
                                child: Image.asset(
                                  'assets/images/logo-fa-photoshop.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 40,
                            left: 50,
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(width: 1, color: Colors.white),
                                  color: Colors.white),
                              child: const Icon(Icons.edit),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        indent: 20,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                            'assets/images/profile_category.svg',
                            width: 19,
                            height: 19,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                            'assets/images/profile_message.svg',
                            width: 19,
                            height: 19,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                            'assets/images/profile_moshavere.svg',
                            width: 19,
                            height: 19,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                            'assets/images/profile_sabt aghahi.svg',
                            width: 19,
                            height: 19,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                            'assets/images/profile_vahed.svg',
                            width: 19,
                            height: 19,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                            'assets/images/profile_setting.svg',
                            width: 19,
                            height: 19,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Divider(
                        indent: 20,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 41,
                          width: 372,
                          child: TextField(
                            readOnly: true,
                            focusNode: FocusNode(canRequestFocus: false),
                            decoration: InputDecoration(
                              hintText: 'انتخاب نشده',
                              hintStyle: const TextStyle(
                                  color: Color(0xFF626262),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              prefixIcon: IconButton(
                                icon: SvgPicture.asset(
                                    "assets/images/profile_Add.svg"),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 41,
                          width: 372,
                          child: TextField(
                            readOnly: true,
                            focusNode: FocusNode(canRequestFocus: false),
                            decoration: InputDecoration(
                              hintText: 'انتخاب نشده',
                              hintStyle: const TextStyle(
                                  color: Color(0xFF626262),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              prefixIcon: IconButton(
                                icon: SvgPicture.asset(
                                    "assets/images/profile_inbox.svg"),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: IconButton(
                          onPressed: () {
                            Get.off(() => Register());
                          },
                          icon: SvgPicture.asset("assets/images/exit.svg"),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          : const SizedBox.shrink(),
    );
  }
}
