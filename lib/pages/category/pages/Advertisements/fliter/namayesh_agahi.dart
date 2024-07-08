import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NamayeshAgahi1 extends StatelessWidget {
  const NamayeshAgahi1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              children: [
                Stack(children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top),
                    child: Image.asset(
                      "assets/images/Pic One.png",
                      height: 330,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0, left: 10),
                    child: SvgPicture.asset(
                      'assets/images/Back_NAMAYESH.svg',
                      width: 15,
                      height: 25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, right: 10),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset(
                        'assets/images/Save2.svg',
                        width: 15,
                        height: 25,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0, right: 40),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset(
                        'assets/images/Share.svg',
                        width: 15,
                        height: 25,
                      ),
                    ),
                  ),
                ]),
                Image.asset('assets/images/Map_namayesh.png'),
                Image.asset('assets/images/Pic 3.png'),
              ],
            ),
            DraggableScrollableSheet(
              maxChildSize: 0.9,
              initialChildSize: 0.9,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 640.0),
                        child: Column(
                          children: [
                            Container(
                              width: 410,
                              height: 640,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Colors.amber),
                              child: const SingleChildScrollView(
                                child: Column(children: [
                                  Text(
                                    "data",
                                    style: TextStyle(fontSize: 50),
                                  ),
                                  Text(
                                    "data",
                                    style: TextStyle(fontSize: 50),
                                  ),
                                  Text(
                                    "data",
                                    style: TextStyle(fontSize: 50),
                                  ),
                                  Text(
                                    "data",
                                    style: TextStyle(fontSize: 50),
                                  ),
                                  Text(
                                    "data",
                                    style: TextStyle(fontSize: 50),
                                  ),
                                  Text(
                                    "data",
                                    style: TextStyle(fontSize: 50),
                                  ),
                                  Text(
                                    "data",
                                    style: TextStyle(fontSize: 50),
                                  ),
                                  Text(
                                    "data",
                                    style: TextStyle(fontSize: 50),
                                  ),
                                  Text(
                                    "data",
                                    style: TextStyle(fontSize: 50),
                                  ),
                                  Text(
                                    "data",
                                    style: TextStyle(fontSize: 50),
                                  ),
                                  Text(
                                    "data",
                                    style: TextStyle(fontSize: 50),
                                  ),
                                  Text(
                                    "data",
                                    style: TextStyle(fontSize: 50),
                                  ),
                                  Text(
                                    "data",
                                    style: TextStyle(fontSize: 50),
                                  ),
                                ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ));
  }
}
