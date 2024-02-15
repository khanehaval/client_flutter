import 'package:flutter/cupertino.dart';

import 'contant.dart';

class TwoItemInRow extends StatelessWidget {
  String label1;
  String label2;
  Widget w1;
  Widget w2;

  TwoItemInRow(
      {super.key,
      required this.label1,
      required this.label2,
      required this.w1,
      required this.w2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
             Text(
             label1,
              style: const TextStyle(
                  color: Color.fromRGBO(99, 99, 99, 1),
                  fontFamily: MAIN_FONT_FAMILY),
            ),
            w1
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              label2,
              style: const TextStyle(
                  color: Color.fromRGBO(99, 99, 99, 1),
                  fontFamily: MAIN_FONT_FAMILY),
            ),
            w2

          ],
        )
      ],
    );
  }
}
