import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/pages/login_secondly_page.dart';
import 'package:flutter_application_1/repo/acount_repo.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
  var phoneNumberSended = false.obs;

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
    timer?.cancel();
    time.update((val) {
      time.value = 30;
    });
    timer = Timer.periodic(const Duration(seconds: 1), (i) {
      time.update((val) {
        time.value = max(0, (val ?? 30) - 1);
      });

      if (time.value == 0) {
        timer?.cancel();
      }
    });
  }

  final _phoneNumberTextField = TextEditingController();
  final _codeTextField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                SvgPicture.asset(
                  'assets/images/logo-farsi.svg',
                  width: MediaQuery.of(context).size.width - 200,
                ),
                const SizedBox(
                  height: 80,
                ),
                const Text(
                  'شماره تلفن همراه خود را وارد کنید',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: SizedBox(
                    height: 75,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      controller: _phoneNumberTextField,
                      maxLength: 11,
                      onChanged: (_) {
                        phoneNumberSended.value = false;
                      },
                      onFieldSubmitted: (_) => sendPhoneNumber(),
                      style: const TextStyle(fontSize: 16),
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                          hintText: "09121234567",
                          hintStyle: TextStyle(color: Colors.black38),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          suffix: Obx(() => phoneNumberSended.value
                              ? IconButton(
                                  icon: const Icon(Icons.edit),
                                  onPressed: () =>
                                      phoneNumberSended.value = false,
                                )
                              : const SizedBox.shrink())),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Obx(() => phoneNumberSended.value
                    ? Padding(
                        padding: const EdgeInsets.only(
                            left: 80, right: 80, top: 120),
                        child: SizedBox(
                          height: 75,
                          child: TextField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            onSubmitted: (s) {},
                            maxLength: 6,
                            controller: _codeTextField,
                            decoration: InputDecoration(
                              hintText: "-- -- --",
                              hintStyle: const TextStyle(fontSize: 16),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                      )
                    : const SizedBox()),
                const SizedBox(
                  height: 1,
                ),
                Obx(() => phoneNumberSended.value
                    ? Obx(
                        () => time.value > 0
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(time.value < 60
                                      ? "00:${time.value}"
                                      : time.value.toString()),
                                ],
                              )
                            : GestureDetector(
                                child: const Text("00:00 ارسال مجدد کد "),
                                onTap: () {
                                  sendPhoneNumber();
                                },
                              ),
                      )
                    : const SizedBox(
                        height: 150,
                      )),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40, top: 10),
                child: Container(
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                                            gradient: getGradient(),

        ),
                  
                  child: ElevatedButton(
                    onPressed: () {
                      if (phoneNumberSended.value) {
                        sendVerificationCode();
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
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
       ) ]),
        ),
      
    );
  }

  Future<void> sendPhoneNumber() async {
    if (await _accountRepo.login(_phoneNumberTextField.text)) {
      phoneNumberSended.value = true;
      startTimer();
    } else {
      showErrorToast();
    }
  }

  Future<void> sendVerificationCode() async {
    if (await _accountRepo.sendVerificationCode(
        code: _codeTextField.text, cellphone: _phoneNumberTextField.text)) {
      Get.to(() => const LoginSecondlyPage());
    } else {
      showErrorToast();
    }
  }

  void showErrorToast() {
    Fluttertoast.showToast(
        msg: "خطایی رخ داده است",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
  LinearGradient getGradient() => const LinearGradient(colors: [
     Color.fromARGB(255, 95, 173, 237),
        Color.fromARGB(126, 118, 238, 146),

      ]);