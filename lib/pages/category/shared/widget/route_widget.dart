import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../contant.dart';

Widget route(List<String> routes) {
  return SizedBox(
    height: 20,
    child: ListView.separated(
      reverse: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (c, i) {
          return SizedBox(
            height: 20,
            child: Center(
              child: Text(
                routes[i],
                style: const TextStyle(
                  fontSize: 9,
                  fontFamily: MAIN_FONT_FAMILY,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (c, i) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: Icon(
                Icons.arrow_back,
                color: Colors.green,
                size: 18,
              ),
        ),
        itemCount: routes.length),
  );
}
