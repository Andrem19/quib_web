import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quib_game_web/elements/menu.dart';

import '../routing/app_pages.dart';

class DrawerElement {
  static Drawer getDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Column(
              children: [
                InkWell(
                    onTap: () => Get.toNamed(Routes.HOME),
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 100,
                      width: 100,
                    )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                  child: Text('QUIB GAMES'),
                ),
              ],
            ),
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: MenuWidget.menu),
        ],
      ),
    );
  }
}
