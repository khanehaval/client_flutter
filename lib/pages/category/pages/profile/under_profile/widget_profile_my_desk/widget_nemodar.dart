import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WidgetNemodar extends StatelessWidget {
  const WidgetNemodar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20),
          child: Container(
              width: 350,
              height: 250,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 3,
                    offset: Offset(0, 0),
                  )
                ],
              ),
              child: SvgPicture.asset('assets/images/graph-All.svg')),
        ),
      ],
    );
  }
}
