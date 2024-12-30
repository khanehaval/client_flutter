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
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/saleapartemancontroller.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/intro_screen.dart';
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

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserTypeAdapter());
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(AdvisorAdapter());
  Hive.registerAdapter(CustomerAdapter());
  Hive.registerAdapter(EstateAdapter());
  initServicesAndRepo();

  runApp(
    GetMaterialApp(
      home: MyApp(),
    ),
  );
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

  // Register SaleApartemanController globally
  Get.put(SaleApartemanController());
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
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: MAIN_FONT_FAMILY),
        debugShowMaterialGrid: false,
        home: FutureBuilder<bool>(
            future: _userRepo.isLogin(),
            builder: (c, s) {
              if (s.hasData && s.data != null && s.data!) {
                return Advertisements();
              } else {
                if (s.connectionState == ConnectionState.active ||
                    s.connectionState == ConnectionState.done) {
                  return sliderWidget();
                }
                return Container();
              }
            }));
  }

  Widget sliderWidget() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder<bool>(
          future: _userRepo.isLogin(),
          builder: (context, snapshot) {
            return Stack(
              children: [
                PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    _sliderIndex.value = index;
                  },
                  children: const [Screen1(), Screen2(), Screen3()],
                ),
                Positioned(
                  bottom: 30,
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
                            activeDotColor: Color.fromARGB(255, 7, 201, 69)),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Obx(() {
                            return GestureDetector(
                              onTap: () {
                                if (_sliderIndex.value < 2) {
                                  pageController.nextPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.decelerate,
                                  );
                                } else {
                                  // Handle the start button action here
                                  // For example, navigate to another screen
                                  Get.off(() => const Register());
                                }
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  gradient: GetGradient(),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        _sliderIndex.value < 2
                                            ? "بعدی"
                                            : "شروع",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          fontFamily: MAIN_FONT_FAMILY,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Image.asset(
                                        'assets/images/arrow_right.png',
                                        width: 17,
                                        height: 17,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
