import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';

class WidgetTowItemRowVitrin extends StatelessWidget {
  String label1;
  String label2;
  Widget widget2;
  Widget widget1;
  WidgetTowItemRowVitrin(
      {super.key,
      required this.label1,
      required this.label2,
      required this.widget1,
      required this.widget2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5, top: 5),
              child: Text(
                label1,
                style: const TextStyle(
                    color: Color.fromRGBO(99, 99, 99, 1),
                    fontSize: 13,
                    fontFamily: MAIN_FONT_FAMILY),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            widget1
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5, top: 5),
              child: Text(
                label2,
                style: const TextStyle(
                    color: Color.fromRGBO(99, 99, 99, 1),
                    fontSize: 13,
                    fontFamily: MAIN_FONT_FAMILY),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            widget2
          ],
        )
      ],
    );
  }
}

class WidgetTowItemRowVitrin1 extends StatelessWidget {
  final String label1;
  final String label2;
  final Widget widget1;
  final Widget widget2;

  WidgetTowItemRowVitrin1({
    required this.label1,
    required this.label2,
    required this.widget1,
    required this.widget2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0, right: 10),
                child: RichText(
                  text: TextSpan(
                    text: label1,
                    style: const TextStyle(
                        fontFamily: MAIN_FONT_FAMILY,
                        fontSize: 13,
                        color: Color.fromRGBO(
                          99,
                          99,
                          99,
                          1,
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              widget1,
            ],
          ),
        ),
        const SizedBox(width: 16), // Add some spacing between the two columns
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5, top: 5),
                child: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: ' *  ',
                        style: TextStyle(
                          color: Color.fromRGBO(
                            156,
                            64,
                            64,
                            1,
                          ),
                          fontFamily: 'Iran Sans',
                          fontWeight: FontWeight.w900,
                          fontSize: 13,
                        ),
                      ),
                      TextSpan(
                        text: label2,
                        style: const TextStyle(
                            fontFamily: MAIN_FONT_FAMILY,
                            fontSize: 13,
                            color: Color.fromRGBO(
                              99,
                              99,
                              99,
                              1,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              widget2,
            ],
          ),
        ),
      ],
    );
  }
}

class WidgetTowItemRowVitrin2 extends StatelessWidget {
  final String label1;
  final String label2;
  final Widget widget1;
  final Widget widget2;

  WidgetTowItemRowVitrin2({
    required this.label1,
    required this.label2,
    required this.widget1,
    required this.widget2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0, right: 5),
                child: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: ' * ',
                        style: TextStyle(
                            color: Color.fromRGBO(
                              156,
                              64,
                              64,
                              1,
                            ),
                            fontFamily: MAIN_FONT_FAMILY,
                            fontSize: 13),
                      ),
                      TextSpan(
                        text: label1,
                        style: const TextStyle(
                            fontFamily: MAIN_FONT_FAMILY,
                            fontSize: 13,
                            color: Color.fromRGBO(
                              99,
                              99,
                              99,
                              1,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              widget1,
            ],
          ),
        ),
        const SizedBox(width: 16), // Add some spacing between the two columns
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, right: 5),
                child: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: ' * ',
                        style: TextStyle(
                            color: Color.fromRGBO(
                              156,
                              64,
                              64,
                              1,
                            ),
                            fontFamily: MAIN_FONT_FAMILY,
                            fontSize: 13),
                      ),
                      TextSpan(
                        text: label2,
                        style: const TextStyle(
                            fontFamily: MAIN_FONT_FAMILY,
                            fontSize: 13,
                            color: Color.fromRGBO(
                              99,
                              99,
                              99,
                              1,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              widget2,
            ],
          ),
        ),
      ],
    );
  }
}
