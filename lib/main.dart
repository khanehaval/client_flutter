import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/models/login_model/boxes.dart';
import 'package:flutter_application_1/db/models/login_model/login_model.dart';
import 'package:flutter_application_1/pages/intro_screen.dart';
import 'package:flutter_application_1/repo/acount_repo.dart';
import 'package:flutter_application_1/services/acount_service.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(LoginModelAdapter());
  boxLoginModel = await Hive.openBox<LoginModel>('LoginModelBox');
  initServicesAndRepo();
  
  runApp(const GetMaterialApp(home: MyApp()));
  
}

void initServicesAndRepo(){
GetIt.instance.registerSingleton<AccountService>(AccountService());
GetIt.instance.registerSingleton<AccountRepo>(AccountRepo());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}
