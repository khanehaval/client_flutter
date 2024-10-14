import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/Colleagues_profile/Colleagues_profile.dart';
import 'package:flutter_application_1/pages/category/pages/profile/profile_home.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_my_desk/profile_my_desk.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/vitrin.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/register/register.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

openProfile() {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.only(top: 2, right: 20),
      child: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(11),
                ),
                boxShadow: [
                  BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.15), blurRadius: 2)
                ]),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: SizedBox(
                height: Get.height / 1.3,
                width: Get.width / 1.7,
                child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        SvgPicture.asset(
                          'assets/images/arrow right.svg',
                          width: 50,
                          height: 18,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    const Column(
                                      children: [
                                        Text(
                                          "آژانش املاک",
                                          style: TextStyle(
                                              fontSize: 15,
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
                                                  fontSize: 16,
                                                  fontFamily: MAIN_FONT_FAMILY),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          width: 60,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 2,
                                                color: const Color.fromRGBO(
                                                    229, 222, 41, 1)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.0),
                                              )
                                            ],
                                            shape: BoxShape.circle,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Image.asset(
                                              'assets/images/logo-fa-photoshop.png',
                                              width: 65,
                                              height: 65,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 40.0),
                                          child: SvgPicture.asset(
                                            'assets/images/edit_icon_profile.svg',
                                            width: 50,
                                            height: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Divider(
                                endIndent: 5,
                                indent: 10,
                                color: Color.fromRGBO(226, 226, 226, 1),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            InkWell(
                                onTap: () {
                                  Get.to(() => const ProfileHome(),
                                      transition: Transition.leftToRight);
                                },
                                child: _item('assets/images/Home.svg', "خانه")),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(() => ProfileMyDesk(),
                                    transition: Transition.leftToRight);
                              },
                              child: _item('assets/images/profile_category.svg',
                                  "میزکار"),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            _item(
                                'assets/images/profile_message.svg', "پیام ها"),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 3.0),
                              child: InkWell(
                                onTap: () {
                                  Get.to(() => ColleaguesProfile(),
                                      transition: Transition.leftToRight);
                                },
                                child: _item(
                                    'assets/images/profile_moshavere.svg',
                                    "همکاران"),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(() => const Vitrin(),
                                    transition: Transition.leftToRight);
                              },
                              child: _item(
                                  'assets/images/vitrin_profile_icon_off.svg',
                                  "ویترین"),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            _item(
                                'assets/images/Agahi_man_profile_home_off.svg',
                                "آگهی های من"),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 4.0),
                              child: _item('assets/images/rington_off.svg',
                                  "اطلاع رسانی"),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Divider(
                          endIndent: 20,
                          indent: 20,
                          color: Color.fromRGBO(226, 226, 226, 1),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1,
                                        color:
                                            Color.fromRGBO(166, 166, 166, 1)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add_circle_outline,
                                      color: Color.fromRGBO(99, 99, 99, 1),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.offAll(() => const Register());
                                },
                                child: SvgPicture.asset(
                                  "assets/images/exit.svg",
                                  width: 30,
                                  height: 37,
                                ),
                              )
                            ],
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
      ),
    ),
  );
}

Widget _item(String assetPath, String title) {
  return Row(
    mainAxisAlignment:
        MainAxisAlignment.end, // تنظیم به راست چین بودن تمام محتوا
    crossAxisAlignment: CrossAxisAlignment.center, // تراز عمودی به صورت مرکزی
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          textAlign: TextAlign.right, // متن راست‌چین باشد
          textDirection: TextDirection.rtl, // جهت متن فارسی
          style: const TextStyle(
            fontFamily: MAIN_FONT_FAMILY_MEDIUM,
            fontSize: 13,
          ),
        ),
      ),
      SizedBox(
        width: 20,
      ),
      SvgPicture.asset(
        assetPath,
        width: 25, // تنظیم ابعاد آیکون برای دقت بیشتر
        height: 25,
      ),
    ],
  );
}

// class BuildProfile extends StatelessWidget {
//   final _show_item_1 = false.obs;

//   BuildProfile({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//       () => _show_item_1.isTrue
//           ? Column(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     // border: Border.all(
//                     //   width: _selected.value == index ? 2 : 1.5,
//                     // )
//                   ),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10),
//                       border: Border.all(
//                         color: const Color.fromRGBO(0, 0, 0, 0.25),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10, top: 40, right: 10),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Stack(
//                         children: [
//                           Align(
//                             alignment: Alignment.centerLeft,
//                             child: Container(
//                               width: 70,
//                               height: 70.45,
//                               decoration: BoxDecoration(
//                                 border:
//                                     Border.all(width: 1, color: Colors.white),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.black.withOpacity(0.1),
//                                   )
//                                 ],
//                                 shape: BoxShape.circle,
//                               ),
//                               child: SizedBox(
//                                 width: 28,
//                                 height: 24,
//                                 child: Image.asset(
//                                   'assets/images/logo-fa-photoshop.png',
//                                   fit: BoxFit.contain,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Positioned(
//                             bottom: 40,
//                             left: 50,
//                             child: Container(
//                               width: 25,
//                               height: 25,
//                               decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border:
//                                       Border.all(width: 1, color: Colors.white),
//                                   color: Colors.white),
//                               child: const Icon(Icons.edit),
//                             ),
//                           ),
//                         ],
//                       ),
//                       const Divider(
//                         indent: 20,
//                       ),
//                       const SizedBox(
//                         height: 30,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           SvgPicture.asset(
//                             'assets/images/profile_category.svg',
//                             width: 19,
//                             height: 19,
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 30,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           SvgPicture.asset(
//                             'assets/images/profile_message.svg',
//                             width: 19,
//                             height: 19,
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 30,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           SvgPicture.asset(
//                             'assets/images/profile_moshavere.svg',
//                             width: 19,
//                             height: 19,
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 30,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           SvgPicture.asset(
//                             'assets/images/profile_sabt aghahi.svg',
//                             width: 19,
//                             height: 19,
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 30,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           SvgPicture.asset(
//                             'assets/images/profile_vahed.svg',
//                             width: 19,
//                             height: 19,
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 30,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           SvgPicture.asset(
//                             'assets/images/profile_setting.svg',
//                             width: 19,
//                             height: 19,
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 30,
//                       ),
//                       const Divider(
//                         indent: 20,
//                       ),
//                       const SizedBox(
//                         height: 30,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 20),
//                         child: Container(
//                           height: 41,
//                           width: 372,
//                           child: TextField(
//                             readOnly: true,
//                             focusNode: FocusNode(canRequestFocus: false),
//                             decoration: InputDecoration(
//                               hintText: 'انتخاب نشده',
//                               hintStyle: const TextStyle(
//                                   color: Color(0xFF626262),
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w400),
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                               prefixIcon: IconButton(
//                                 icon: SvgPicture.asset(
//                                     "assets/images/profile_Add.svg"),
//                                 onPressed: () {},
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 25,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 20),
//                         child: Container(
//                           height: 41,
//                           width: 372,
//                           child: TextField(
//                             readOnly: true,
//                             focusNode: FocusNode(canRequestFocus: false),
//                             decoration: InputDecoration(
//                               hintText: 'انتخاب نشده',
//                               hintStyle: const TextStyle(
//                                   color: Color(0xFF626262),
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w400),
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                               prefixIcon: IconButton(
//                                 icon: SvgPicture.asset(
//                                     "assets/images/profile_inbox.svg"),
//                                 onPressed: () {},
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 20),
//                         child: IconButton(
//                           onPressed: () {
//                             Get.off(() => Register());
//                           },
//                           icon: SvgPicture.asset("assets/images/exit.svg"),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             )
//           : const SizedBox.shrink(),
//     );
//   }
// }
