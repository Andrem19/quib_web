import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routing/app_pages.dart';

class MenuWidget {
  static final List<Widget> menu = [
    menuButton('Maze&Traps', Routes.MAZE),
    menuButton('Remland', Routes.REMLAND),
    menuButton('Starseed', Routes.STARSEED),
    menuButton('About us', Routes.ABOUT_US),
  ];

  static const double shaddow = 0.6;

  static Widget menuButton(String name, String toNamed) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: InkWell(
        onTap: () => Get.toNamed(toNamed),
        child: Text(
          name,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              shadows: [
                Shadow(
                    // bottomLeft
                    offset: Offset(-shaddow, -shaddow),
                    color: Colors.white),
                Shadow(
                    // bottomRight
                    offset: Offset(shaddow, -shaddow),
                    color: Colors.white),
                Shadow(
                    // topRight
                    offset: Offset(shaddow, shaddow),
                    color: Colors.white),
                Shadow(
                    // topLeft
                    offset: Offset(-shaddow, shaddow),
                    color: Colors.white),
              ]),
        ),
      ),
    );
  }
}
