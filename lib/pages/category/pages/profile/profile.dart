import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/Colleagues_profile/Colleagues_profile.dart';
import 'package:flutter_application_1/pages/category/pages/profile/profile_home.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/category_Profile.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_my_desk/profile_my_desk.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_notification/Profile_Notification.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/vitrin.dart';
import 'package:flutter_application_1/pages/category/pages/window/messages/first_page_messages.dart';
import 'package:flutter_application_1/pages/register/register.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.forward(); // شروع انیمیشن
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: const Size(360, 900)); // تنظیم اندازه طراحی

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SlideTransition(
            position: _offsetAnimation,
            child: _buildProfileContent(),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileContent() {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top, right: 10.w),
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 0.8.sh,
              width: 0.6.sw,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(11),
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 2)
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(10.w),
                child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  child: Column(
                    children: [
                      SizedBox(height: 10.h),
                      GestureDetector(
                        onTap: () => Get.back(),
                        child: SvgPicture.asset(
                          'assets/images/arrow right.svg',
                          width: 50.w,
                          height: 18.h,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      _buildProfileHeader(),
                      SizedBox(height: 10.h),
                      const Divider(color: Color.fromRGBO(226, 226, 226, 1)),
                      Expanded(child: _buildMenuItems()),
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

  Widget _buildProfileHeader() {
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
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
                        fontFamily: 'MAIN_FONT_FAMILY',
                        color: Colors.black54,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.verified, color: Colors.blue),
                        Text(
                          "خانه اول",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'MAIN_FONT_FAMILY',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 40.w),
                Stack(
                  children: [
                    Container(
                      width: 60.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: const Color.fromRGBO(229, 222, 41, 1),
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5.w),
                        child: Image.asset(
                          'assets/images/logo-fa-photoshop.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40.w),
                      child: SvgPicture.asset(
                        'assets/images/edit_icon_profile.svg',
                        width: 50.w,
                        height: 20.h,
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
    return Padding(
      padding: EdgeInsets.all(8.w),
      child: Column(
        children: [
          SizedBox(height: 10.h),
          ProfileMenuItem(
            assetPath: 'assets/images/Home.svg',
            title: "خانه",
            onTap: () => _navigateTo(const ProfileHome()),
          ),
          SizedBox(height: 10.h),
          ProfileMenuItem(
            assetPath: 'assets/images/profile_category.svg',
            title: "میزکار",
            onTap: () => _navigateTo(const ProfileMyDesk()),
          ),
          SizedBox(height: 10.h),
          ProfileMenuItem(
            assetPath: 'assets/images/profile_message.svg',
            title: "پیام ها",
            onTap: () => _navigateTo(FirstPageMessages()),
          ),
          SizedBox(height: 10.h),
          ProfileMenuItem(
            assetPath: 'assets/images/profile_moshavere.svg',
            title: "همکاران",
            onTap: () => _navigateTo(ColleaguesProfile()),
          ),
          SizedBox(height: 10.h),
          ProfileMenuItem(
            assetPath: 'assets/images/vitrin_profile_icon_off.svg',
            title: "ویترین",
            onTap: () => _navigateTo(const Vitrin()),
          ),
          SizedBox(height: 10.h),
          ProfileMenuItem(
            assetPath: 'assets/images/Agahi_man_profile_home_off.svg',
            title: "آگهی های من",
            onTap: () => _navigateTo(const CategoryProfile(index: 0)),
          ),
          SizedBox(height: 10.h),
          ProfileMenuItem(
            assetPath: 'assets/images/rington_off.svg',
            title: "اطلاع رسانی",
            onTap: () => _navigateTo(const ProfileNotification()),
          ),
          SizedBox(height: 20.h),
          const Divider(color: Color.fromRGBO(226, 226, 226, 1)),
          SizedBox(height: 40.h),
          _buildFooter(),
        ],
      ),
    );
  }

  void _navigateTo(Widget page) {
    Get.to(() => page, transition: Transition.leftToRight);
  }

  Widget _buildFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 35.w,
          height: 35.h,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: Color.fromRGBO(166, 166, 166, 1),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Icon(
            Icons.add_circle_outline,
            color: Color.fromRGBO(99, 99, 99, 1),
          ),
        ),
        SizedBox(width: 20.w),
        GestureDetector(
          onTap: () => Get.offAll(() => const Register()),
          child: SvgPicture.asset(
            "assets/images/exit.svg",
            width: 30.w,
            height: 37.h,
          ),
        ),
      ],
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  final String assetPath;
  final String title;
  final VoidCallback onTap;

  const ProfileMenuItem({
    required this.assetPath,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(10.w),
            child: Text(
              title,
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontFamily: 'MAIN_FONT_FAMILY_MEDIUM',
                fontSize: 12.sp,
              ),
            ),
          ),
          SizedBox(width: 5.w),
          SvgPicture.asset(
            assetPath,
            width: 25.w,
            height: 25.h,
          ),
        ],
      ),
    );
  }
}
