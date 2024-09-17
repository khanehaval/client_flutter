import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';

class CityfilterFilterWidget extends StatelessWidget {
  const CityfilterFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "تهران",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 11,
                    fontFamily: MAIN_FONT_FAMILY,
                    color: Color.fromRGBO(99, 99, 99, 1)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: IconButton(
                icon: SvgPicture.asset("assets/images/location1.svg"),
                onPressed: () {},
              ),
            ),
          ]),
        ),
        Container(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(
                0,
                189,
                97,
                1,
              ),
              border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
              borderRadius: BorderRadius.circular(15)),
          child: Row(children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 50,
              ),
              child: Text(
                "فیلتر",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 11,
                    fontFamily: MAIN_FONT_FAMILY,
                    color: Color.fromRGBO(255, 255, 255, 1)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: IconButton(
                icon: SvgPicture.asset(
                  "assets/images/filter.svg",
                  width: 18,
                  height: 18,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
