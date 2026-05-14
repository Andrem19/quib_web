import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/main_controller.dart';
import '../routing/app_pages.dart';

class Logo {
  static Widget getLogo(MainController controller) {
    if (!controller.isMobile) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            child: InkWell(
                onTap: () => Get.toNamed(Routes.HOME),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 100,
                  width: 100,
                )),
          ),
          Text(
            'Quib Games',
            style: TextStyle(
                fontSize: 40,
                color: Colors.green,
                fontWeight: FontWeight.bold),
          ),
        ],
      );
    } else {
      return SizedBox();
    }
  }
}