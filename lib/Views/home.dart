import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quib_game_web/controllers/main_controller.dart';
import 'package:quib_game_web/elements/drower.dart';
import 'package:quib_game_web/routing/app_pages.dart';
import 'package:quib_game_web/elements/menu.dart';
import 'package:quib_game_web/widgets/social_networks.dart';

import '../elements/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(builder: (controller) {
      return LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        controller.isMobileDevice();
        return Scaffold(
          appBar: controller.isMobile
              ? AppBar(
                  leading: Builder(
                    builder: (BuildContext context) {
                      return IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      );
                    },
                  ),
                )
              : null,
          body: Stack(
            alignment: Alignment.topCenter, 
            children: [
            Image.asset(
              controller.pictureToShow.value,
              height: Get.size.height,
              width: Get.size.height,
              fit: BoxFit.fill,
            ),
            Header.header(controller),
            Positioned(bottom: 20, child: SocialNetworks())
          ]),
          drawer: DrawerElement.getDrawer()
        );
      });
    });
  }

  
}
