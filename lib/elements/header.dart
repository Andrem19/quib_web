import 'package:flutter/material.dart';
import 'package:quib_game_web/controllers/main_controller.dart';

import '../widgets/menu_row.dart';
import 'logo.dart';

class Header {
  static Container header(MainController controller) {
    return controller.isMobile ? Container() : Container(
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
        ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
        Positioned(
          left: 10,
          child: Logo.getLogo(controller)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 116,
            ),
            MenuRow(),
          ],
        ),
      ]),
    );
  }
}
