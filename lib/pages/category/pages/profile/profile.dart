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

    _offsetAnimation =
        Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

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
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SlideTransition(
            position: _offsetAnimation,
            child: openProfile(),
          ),
        ],
      ),
    );
  }

  Widget openProfile() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top, right: 20),
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
                  width: Get.width / 1.8,
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
                        const SizedBox(height: 20),
                        _buildFooter(),
                        const SizedBox(height: 20),
                      ],
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
      children: [
        InkWell(
          onTap: () {
            Get.to(() => const ProfileHome(),
                transition: Transition.leftToRight);
          },
          child: _item('assets/images/Home.svg', "خانه"),
        ),
        const SizedBox(height: 10),
        InkWell(
          onTap: () {
            Get.to(() => const ProfileMyDesk(),
                transition: Transition.leftToRight);
          },
          child: _item('assets/images/profile_category.svg', "میزکار"),
        ),
        const SizedBox(height: 10),
        _item('assets/images/profile_message.svg', "پیام ها"),
        const SizedBox(height: 10),
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
        const SizedBox(height: 10),
        InkWell(
          onTap: () {
            Get.to(() => const Vitrin(), transition: Transition.leftToRight);
          },
          child: _item('assets/images/vitrin_profile_icon_off.svg', "ویترین"),
        ),
        const SizedBox(height: 10),
        InkWell(
          onTap: () {
            Get.to(() => const CategoryProfile(index: 0),
                transition: Transition.leftToRight);
          },
          child: _item(
              'assets/images/Agahi_man_profile_home_off.svg', "آگهی های من"),
        ),
        const SizedBox(height: 10),
        InkWell(
          onTap: () {
            Get.to(() => const ProfileNotification(),
                transition: Transition.leftToRight);
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: _item('assets/images/rington_off.svg', "اطلاع رسانی"),
          ),
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Row(
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
                fontFamily: MAIN_FONT_FAMILY_MEDIUM, fontSize: 12),
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
