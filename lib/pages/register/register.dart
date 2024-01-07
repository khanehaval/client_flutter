import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/pages/login_secondly_page.dart';
import 'package:flutter_application_1/repo/acount_repo.dart';

import 'package:get/get.dart';
import 'dart:math';

import 'package:get_it/get_it.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Timer? timer;
  var time = 30.obs;
  var sended = false.obs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  final _accountRepo = GetIt.I.get<AccountRepo>();

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    time.update((val) {
      time.value = 30;
    });
    Timer.periodic(Duration(seconds: 1), (i) {
      time.update((val) {
        time.value = max(0, (val ?? 30) - 1);
      });
    });
  }

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 100, horizontal: 90),
        child: Column(
          children: [
            Image.asset(
              'assets/images/Rectangle 1.png',
              width: MediaQuery.of(context).size.width - 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'شماره تلفن همراه خود را وارد کنید',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: _textController,
              maxLength: 11,
              onFieldSubmitted: (_) => sendPhoneNumber(),
              style: TextStyle(fontSize: 20),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                hintText: "09121234567",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                suffix: Icon(Icons.edit),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Obx(() => sended.value
                ? TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    onSubmitted: (s) {},
                    maxLength: 6,
                    decoration: InputDecoration(
                      hintText: "-- -- --",
                      hintStyle: const TextStyle(fontSize: 22),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  )
                : SizedBox()),
            SizedBox(
              height: 1,
            ),
            Obx(() => sended.value
                ? Obx(
                    () => time.value > 0
                        ? Text(time.value < 60
                            ? "00:${time.value}"
                            : time.value.toString())
                        : GestureDetector(
                            child: Text("00:00 ارسال مجدد کد "),
                            onTap: () {
                              sendPhoneNumber();
                            },
                          ),
                  )
                : SizedBox()),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Container(
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(700, 55, 250, 100),
                    Colors.blue,
                  ]),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    if (sended.value) {
                      Get.to(() => const LoginSecondlyPage());
                    } else {
                      sendPhoneNumber();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent),
                  child: const Text(
                    'تایید',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> sendPhoneNumber() async {
    await _accountRepo.login(_textController.text);
    sended.value = true;
    startTimer();
  }
}
