import 'package:flutter/cupertino.dart';

import 'constant.dart';

class TwoItemInRow extends StatelessWidget {
  String label1;
  String label2;

  Widget widget2;
  Widget widget1;
  TwoItemInRow(
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
            Text(
              label1,
              style: const TextStyle(
                  color: Color.fromRGBO(99, 99, 99, 1),
                  fontSize: 12,
                  fontFamily: MAIN_FONT_FAMILY),
            ),
            const SizedBox(
              height: 5,
            ),
            widget1
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              label2,
              style: const TextStyle(
                  color: Color.fromRGBO(99, 99, 99, 1),
                  fontSize: 12,
                  fontFamily: MAIN_FONT_FAMILY),
            ),
            const SizedBox(
              height: 5,
            ),
            widget2
          ],
        )
      ],
    );
  }
}
