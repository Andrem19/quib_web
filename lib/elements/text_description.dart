import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quib_game_web/controllers/main_controller.dart';

class TextDescription {

  static Widget textDescription(String text, MainController controller) {
    return Container(
      width: controller.isMobile ? Get.size.width /1.2 : Get.size.width /4,
      height: Get.size.height /1.5,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Text(
            text,
            maxLines: 40,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 25
            ),
            ),
        ),
      ),
    );
  }
}
