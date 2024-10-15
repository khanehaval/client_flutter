import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/Colleagues_profile/Colleagues_profile.dart';
import 'package:flutter_application_1/pages/category/pages/profile/profile_home.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/category_Profile.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_my_desk/profile_my_desk.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_notification/Profile_Notification.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/vitrin.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/register/register.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    // شروع انیمیشن از سمت راست و به سمت چپ
    _offsetAnimation =
        Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // شروع انیمیشن پس از لود شدن صفحه
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // محتوای دیگر صفحه مثل تصویر زمینه

          // اضافه کردن انیمیشن کشویی به کانتینر پروفایل
          SlideTransition(
            position: _offsetAnimation,
            child: openProfile(),
          ),
        ],
      ),
    );
  }

  Widget openProfile() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 2, right: 20),
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(11)),
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2)],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: Get.height / 1.35,
                width: Get.width / 1.7,
                child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset(
                          'assets/images/arrow right.svg',
                          width: 50,
                          height: 18,
                        ),
                      ),
                      const SizedBox(height: 10),
                      _profileHeader(),
                      const SizedBox(height: 20),
                      const Divider(color: Color.fromRGBO(226, 226, 226, 1)),
                      Expanded(child: _buildMenuItems()),
                      const SizedBox(height: 20),
                      const Divider(color: Color.fromRGBO(226, 226, 226, 1)),
                      const SizedBox(height: 10),
                      _buildFooter(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _profileHeader() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                              fontSize: 16, fontFamily: MAIN_FONT_FAMILY),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 40),
                Stack(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color: const Color.fromRGBO(229, 222, 41, 1)),
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
                      padding: const EdgeInsets.only(left: 40.0),
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
        ],
      ),
    );
  }

  Widget _buildMenuItems() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () {
            Get.to(() => const ProfileHome(),
                transition: Transition.leftToRight);
          },
          child: _item('assets/images/Home.svg', "خانه"),
        ),
        const SizedBox(height: 5),
        InkWell(
          onTap: () {
            Get.to(() => const ProfileMyDesk(),
                transition: Transition.leftToRight);
          },
          child: _item('assets/images/profile_category.svg', "میزکار"),
        ),
        const SizedBox(height: 5),
        _item('assets/images/profile_message.svg', "پیام ها"),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: InkWell(
            onTap: () {
              Get.to(() => ColleaguesProfile(),
                  transition: Transition.leftToRight);
            },
            child: _item('assets/images/profile_moshavere.svg', "همکاران"),
          ),
        ),
        const SizedBox(height: 5),
        InkWell(
          onTap: () {
            Get.to(() => const Vitrin(), transition: Transition.leftToRight);
          },
          child: _item('assets/images/vitrin_profile_icon_off.svg', "ویترین"),
        ),
        const SizedBox(height: 5),
        InkWell(
          onTap: () {
            Get.to(() => const CategoryProfile(index: 0),
                transition: Transition.leftToRight);
          },
          child: _item(
              'assets/images/Agahi_man_profile_home_off.svg', "آگهی های من"),
        ),
        const SizedBox(height: 5),
        InkWell(
          onTap: () {
            Get.to(() => const ProfileNotification(),
                transition: Transition.leftToRight);
          },
          child: _item('assets/images/rington_off.svg', "اطلاع رسانی"),
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Padding(
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
                    width: 1, color: Color.fromRGBO(166, 166, 166, 1)),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Icon(Icons.add_circle_outline,
                color: Color.fromRGBO(99, 99, 99, 1)),
          ),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: () {
              Get.offAll(() => const Register());
            },
            child: SvgPicture.asset(
              "assets/images/exit.svg",
              width: 30,
              height: 37,
            ),
          ),
        ],
      ),
    );
  }

  Widget _item(String assetPath, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
                fontFamily: MAIN_FONT_FAMILY_MEDIUM, fontSize: 13),
          ),
        ),
        const SizedBox(width: 20),
        SvgPicture.asset(
          assetPath,
          width: 25,
          height: 25,
        ),
      ],
    );
  }
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
