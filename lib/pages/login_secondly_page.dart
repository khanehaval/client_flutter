import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/consultants.dart';
import 'package:flutter_application_1/pages/educational_tour.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_application_1/pages/real_estate_agency.dart';
import 'package:flutter_application_1/pages/private.dart';
import 'package:get/get.dart';

class LoginSecondlyPage extends StatelessWidget {
  const LoginSecondlyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(
                () => const Profile(),
              );
            },
            child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(60)),
                child: const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Icon(
                    Icons.person_2_rounded,
                    size: 30,
                  ),
                )),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.white60,
        margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
        child: Column(
          children: [
            Column(
              children: [
                Image.asset('assets/images/Rectangle 1.png'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "نوع کاربری خود را انتخاب کنید",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: 'Iran Sans Bold'),
                ),
                Text(
                  "هر کاربری امکانات مخصوص به خود را دارد",
                  style: TextStyle(fontSize: 15, fontFamily: 'Iran Sans Bold'),
                )
              ],
            ), SizedBox(
              height: 30,
            ),
            GestureDetector(
                onTap: () {
                  Get.to(() => const Private());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * (0.7),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Center(
                      child: Text(
                        'شخصی',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Iran Sans Bold',
                            color: Colors.black),
                      ),
                    ),
                  ),
                )),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
                onTap: () {
                  Get.to(() => const Consultants());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * (0.7),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Center(
                      child: Text(
                        'مشاوران ',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Iran Sans Bold',
                            color: Colors.black),
                      ),
                    ),
                  ),
                )),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
                onTap: () {
                  Get.to(() => const Realestateagency());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * (0.7),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Center(
                      child: Text(
                        'آژانس املاک ',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Iran Sans Bold',
                            color: Colors.black),
                      ),
                    ),
                  ),
                )),
            const Padding(padding: EdgeInsets.fromLTRB(1, 60, 50, 0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: getGradient(),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => const Home());
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent),
                      child: Text(
                        'بعدا یادآوری کن',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 11.90,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Iran Sans Bold'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: getGradient(),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => const NavigationBarApp());
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent),
                      child: Text(
                        'مشاهده تور آموزشی',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 11.5,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Iran Sans Bold'),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  LinearGradient getGradient() => const LinearGradient(colors: [
        Color.fromARGB(700, 55, 250, 100),
        Colors.blue,
      ]);
}
