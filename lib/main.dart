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
import 'package:flutter_application_1/repo/acount_repo.dart';
import 'package:flutter_application_1/services/acount_service.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';

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

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _userRepo = GetIt.I.get<AccountRepo>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: MAIN_FONT_FAMILY),
        debugShowMaterialGrid: false,
        home: FutureBuilder(
            future: _userRepo.isLogin(),
            builder: (c, s) {
              if (s.connectionState == ConnectionState.waiting) {
                return Container();
              }
              return (s.data ?? false)
                  ? Advertisements()
                  : const LoginSecondlyPage();
            }));
  }
}
