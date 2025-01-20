import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/dao/advisor_dao.dart';
import 'package:flutter_application_1/db/dao/customer_dao.dart';
import 'package:flutter_application_1/db/dao/estate_dao.dart';
import 'package:flutter_application_1/db/dao/user_dao.dart';
import 'package:flutter_application_1/db/entities/advisor.dart';
import 'package:flutter_application_1/db/entities/customer.dart';
import 'package:flutter_application_1/db/entities/estate.dart';
import 'package:flutter_application_1/db/entities/user.dart';
import 'package:flutter_application_1/db/entities/user_type.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/advertisements.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/register/register.dart';
import 'package:flutter_application_1/pages/screens/screen1.dart';
import 'package:flutter_application_1/pages/screens/screen3.dart';
import 'package:flutter_application_1/pages/screens/screens2.dart';
import 'package:flutter_application_1/repo/account_repo.dart';
import 'package:flutter_application_1/repo/advRepo.dart';
import 'package:flutter_application_1/services/acount_service.dart';
import 'package:flutter_application_1/services/advertisment_service.dart';
import 'package:flutter_application_1/services/http_service.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // اضافه کردن این خط برای استفاده از ScreenUtil

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserTypeAdapter());
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(AdvisorAdapter());
  Hive.registerAdapter(CustomerAdapter());
  Hive.registerAdapter(EstateAdapter());
  initServicesAndRepo();

  runApp(MyApp());
}

void initServicesAndRepo() {
  GetIt.instance.registerSingleton<Httpservice>(Httpservice());
  GetIt.instance.registerSingleton<AdvisorDao>(AdvisorDao());
  GetIt.instance.registerSingleton<UserDao>(UserDao());
  GetIt.instance.registerSingleton<CustomerDao>(CustomerDao());
  GetIt.instance.registerSingleton<EstateDao>(EstateDao());
  GetIt.instance.registerSingleton<AdvRepo>(AdvRepo());
  GetIt.instance.registerSingleton<AccountService>(AccountService());
  GetIt.instance
      .registerSingleton<AdvertisementService>(AdvertisementService());
  GetIt.instance.registerSingleton<AccountRepo>(AccountRepo());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _userRepo = GetIt.I.get<AccountRepo>();
  PageController pageController = PageController();
  RxInt _sliderIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690), // تنظیم اندازه صفحه طراحی
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaler:
                  const TextScaler.linear(1.0), // ثابت نگه داشتن اندازه فونت
            ),
            child: child ?? Container(),
          );
        },
        theme: ThemeData(fontFamily: MAIN_FONT_FAMILY),
        debugShowMaterialGrid: false,
        home: FutureBuilder<bool>(
          future: _userRepo.isLogin(),
          builder: (c, s) {
            if (s.connectionState == ConnectionState.waiting) {
              return const Center(
                  child: CircularProgressIndicator()); // نمایش loading
            } else if (s.hasError) {
              return Center(child: Text('خطا: ${s.error}')); // نمایش خطا
            } else if (s.hasData) {
              return s.data!
                  ? Advertisements()
                  : sliderWidget(); // بررسی مقدار s.data
            } else {
              return sliderWidget(); // حالت پیش‌فرض
            }
          },
        ),
      ),
    );
  }

  Widget sliderWidget() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              _sliderIndex.value = index;
            },
            children: const [Screen1(), Screen2(), Screen3()],
          ),
          Positioned(
            bottom: 30.h, // استفاده از ScreenUtil برای مقیاس‌بندی ارتفاع
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: const WormEffect(
                    dotWidth: 8.0,
                    dotHeight: 8.0,
                    dotColor: Color.fromARGB(255, 214, 213, 213),
                    activeDotColor: Color.fromARGB(255, 7, 201, 69),
                  ),
                ),
                const SizedBox(height: 10),
                Obx(() {
                  return GestureDetector(
                    onTap: () {
                      if (_sliderIndex.value < 2) {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.decelerate,
                        );
                      } else {
                        Get.off(() => const Register());
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            30.r), // استفاده از ScreenUtil برای رادیوس
                        gradient: GetGradient(),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 8
                              .h, // استفاده از ScreenUtil برای اندازه‌گیری مناسب
                          horizontal: 20
                              .w, // استفاده از ScreenUtil برای اندازه‌گیری مناسب
                        ),
                        child: Row(
                          children: [
                            Text(
                              _sliderIndex.value < 2 ? "بعدی" : "شروع",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                                    .sp, // استفاده از ScreenUtil برای اندازه فونت
                                fontFamily: MAIN_FONT_FAMILY,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Image.asset(
                              'assets/images/arrow_right.png',
                              width: 17
                                  .w, // استفاده از ScreenUtil برای اندازه‌گیری مناسب
                              height: 17
                                  .h, // استفاده از ScreenUtil برای اندازه‌گیری مناسب
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// تابع GetGradient برای ایجاد گرادیانت
LinearGradient GetGradient() {
  return LinearGradient(
    colors: [Colors.blue, Colors.green], // رنگ‌های گرادیانت
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
