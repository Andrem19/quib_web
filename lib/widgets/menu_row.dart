import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quib_game_web/controllers/main_controller.dart';
import 'package:quib_game_web/elements/menu.dart';

class MenuRow extends StatelessWidget {
  MenuRow({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(builder: (controller) {
      if (!controller.isMobile) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: MenuWidget.menu,
        );
      } else
        return const SizedBox();
    });
  }
}
