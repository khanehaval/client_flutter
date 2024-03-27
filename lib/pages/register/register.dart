import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/pages/login_secondly_page.dart';
import 'package:flutter_application_1/repo/acount_repo.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
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
  var time = 60.obs;
  var phoneNumberSended = false.obs;
  var button_is_pressed = false.obs;
  final _keyboardVisibility = false.obs;

  final _accountRepo = GetIt.I.get<AccountRepo>();
  final _keyboardVisibilityController = KeyboardVisibilityController();

  @override
  void initState() {
    _keyboardVisibilityController.onChange.listen((visible) {
      _keyboardVisibility.value = visible;
    });

    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    timer?.cancel();
    time.update((val) {
      time.value = 60;
    });
    timer = Timer.periodic(const Duration(seconds: 1), (i) {
      time.update((val) {
        time.value = max(0, (val ?? 60) - 1);
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Obx(() => !_keyboardVisibility.value
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Obx(
                () => button_is_pressed.value
                    ? const CircularProgressIndicator()
                    : Container(
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
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
              ),
            )
          : const SizedBox.shrink()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 90),
              SvgPicture.asset(
                'assets/images/logo-farsi.svg',
                width: MediaQuery.of(context).size.width - 200,
              ),
              const SizedBox(
                height: 80,
              ),
              const Text(
                'شماره تلفن همراه خود را وارد کنید',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
                    onChanged: (_) {
                      phoneNumberSended.value = false;
                    },
                    onFieldSubmitted: (_) => sendPhoneNumber(),
                    style: const TextStyle(fontSize: 16),
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                        hintText: "09121234567",
                        hintStyle: const TextStyle(color: Colors.black38),
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
                          left: 80, right: 80, top: 30, bottom: 10),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 4,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 75,
                              child: TextField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                onSubmitted: (_) => sendVerificationCode(),
                                style: const TextStyle(
                                  fontSize: 17,
                                  decoration: TextDecoration.underline,
                                  decorationStyle: TextDecorationStyle.dashed,
                                ),
                                controller: _codeTextField,
                                decoration: InputDecoration(
                                  hintText: "--  --  --",
                                  hintStyle: const TextStyle(
                                      fontSize: 16,
                                      decoration: TextDecoration.none,
                                      decorationStyle:
                                          TextDecorationStyle.solid),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                            Obx(
                              () => time.value > 0
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                          ],
                        ),
                      ),
                    )
                  : SizedBox(height: MediaQuery.of(context).size.height / 3)),
              const SizedBox(
                height: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> sendPhoneNumber() async {
    button_is_pressed.value = true;
    if (await _accountRepo.login(_phoneNumberTextField.text)) {
      phoneNumberSended.value = true;
      startTimer();
    } else {
      showErrorToast();
    }
    button_is_pressed.value = false;
  }

  Future<void> sendVerificationCode() async {
    if (_codeTextField.text.isNotEmpty && _codeTextField.text.length >= 5) {
      button_is_pressed.value = true;
      if (await _accountRepo.sendVerificationCode(
          code: _codeTextField.text, cellphone: _phoneNumberTextField.text)) {
        Get.off(() => const LoginSecondlyPage());
      } else {
        showErrorToast();
      }
      button_is_pressed.value = false;
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
