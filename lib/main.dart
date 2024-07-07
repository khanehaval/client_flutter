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
import 'package:flutter_application_1/pages/category/pages/Advertisements/Advertisements.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/educational_tour.dart';
import 'package:flutter_application_1/pages/intro_screen.dart';
import 'package:flutter_application_1/pages/login_secondly_page.dart';
import 'package:flutter_application_1/pages/register/register.dart';
import 'package:flutter_application_1/pages/screens/screen1.dart';
import 'package:flutter_application_1/pages/screens/screen3.dart';
import 'package:flutter_application_1/pages/screens/screens2.dart';
import 'package:flutter_application_1/repo/acount_repo.dart';
import 'package:flutter_application_1/services/acount_service.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserTypeAdapter());
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(AdvisorAdapter());
  Hive.registerAdapter(CustomerAdapter());
  Hive.registerAdapter(EstateAdapter());
  initServicesAndRepo();

  runApp(GetMaterialApp(home: MyApp()));
}

void initServicesAndRepo() {
  GetIt.instance.registerSingleton<AdvisorDao>(AdvisorDao());
  GetIt.instance.registerSingleton<UserDao>(UserDao());
  GetIt.instance.registerSingleton<CustomerDao>(CustomerDao());
  GetIt.instance.registerSingleton<EstateDao>(EstateDao());

  GetIt.instance.registerSingleton<AccountService>(AccountService());
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
  final _sliderIndex = 0.obs;
  int index = 0;
  String button = 'بعدی';
  int currentPageIndex= 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              currentPageIndex=index;
              if ((index==3)) {
                const Text('شروع');
                
              }else{
                const Text('data');
              }
            },
            children: const [Screen1(), Screen2(), Screen3()],
          ),
          Container(
            alignment: const Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SmoothPageIndicator(controller: pageController, count: 3
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap:  () {
              if (index == 2) {
                Get.off(
                  () => const Register(),
                );
              } else {
                _sliderIndex.value = index + 1;
              }
            },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: GetGradient(),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 12, right: 12),
                          child: Row(
                            children: [
                              const Text(
                                "بعدی",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontFamily: MAIN_FONT_FAMILY,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Image.asset(
                                'assets/images/arrow_right.png',
                                width: 17,
                                height: 17,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );

    // debugShowCheckedModeBanner: false,
    // theme: ThemeData(fontFamily: MAIN_FONT_FAMILY),
    // debugShowMaterialGrid: false,
    // home: FutureBuilder(
    //     future: _userRepo.isLogin(),
    //     builder: (c, s) {
    //       return const LoginSecondlyPage();
    //     }));
  }

  Widget _nextRow(int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 23, left: 40, right: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [0, 1, 2]
                .map((e) => Icon(Icons.circle,
                    size: 11,
                    color: index == e
                        ? Colors.green
                        : const Color.fromRGBO(183, 183, 183, 100)))
                .toList(),
          ),
          GestureDetector(
            onTap: () {
              if (index == 2) {
                Get.off(
                  () => const Register(),
                );
              } else {
                _sliderIndex.value = index + 1;
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: GetGradient(),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 5, bottom: 5, left: 12, right: 12),
                child: Row(
                  children: [
                    const Text(
                      "بعدی",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/images/arrow_right.png',
                      width: 17,
                      height: 17,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
