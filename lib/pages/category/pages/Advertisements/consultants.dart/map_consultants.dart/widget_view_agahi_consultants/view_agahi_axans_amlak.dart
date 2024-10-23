import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ViewAgahiAxansAmlak extends StatelessWidget {
  const ViewAgahiAxansAmlak({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, 10),
      child: Container(
        decoration: const BoxDecoration(color: Colors.transparent),
        child: Stack(
          fit: StackFit.passthrough,
          // alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 250,
                    width: 165,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(0, 0),
                              blurRadius: 3,
                              color: Color.fromRGBO(0, 0, 0, 0.15))
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                          width: 150,
                        ),
                        Column(
                          children: [
                            Stack(
                              children: [
                                SvgPicture.asset(
                                    'assets/images/aghahi_consultant.svg'),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 22.0, top: 15),
                                  child: SvgPicture.asset(
                                    'assets/images/logo-farsi.svg',
                                    width: 35,
                                    height: 35,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    width: 165,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(0, 0),
                              blurRadius: 3,
                              color: Color.fromRGBO(0, 0, 0, 0.15))
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                          width: 150,
                        ),
                        Column(
                          children: [
                            Stack(
                              children: [
                                SvgPicture.asset(
                                    'assets/images/aghahi_consultant.svg'),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 22.0, top: 15),
                                  child: SvgPicture.asset(
                                    'assets/images/logo-farsi.svg',
                                    width: 35,
                                    height: 35,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
