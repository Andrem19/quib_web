import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:quib_game_web/elements/play_button.dart';
import 'package:quib_game_web/elements/text_description.dart';

import '../controllers/main_controller.dart';
import '../elements/drower.dart';
import '../routing/app_pages.dart';
import '../elements/header.dart';
import '../elements/menu.dart';
import '../widgets/social_networks.dart';

class Maze extends StatelessWidget {
  const Maze({super.key});

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
            body: Builder(
              builder: (context) {
                if (controller.isMobile) {
                  return Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image.asset(
                        'assets/images/maze_background_2.jpg',
                        height: Get.size.height,
                        width: Get.size.height,
                        fit: BoxFit.fill,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                            child: PlayButton.Play(
                                controller,
                                'https://mazeandtraps.web.app/',
                                'go to the Play Market'),
                          ),
                          TextDescription.textDescription(
                              controller.textMazeDescription, controller),
                        ],
                      )
                    ],
                  );
                } else {
                  return Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image.asset(
                        'assets/images/maze_background_2.jpg',
                        height: Get.size.height,
                        width: Get.size.height,
                        fit: BoxFit.fill,
                      ),
                      Header.header(controller),
                      Positioned(
                        left: Get.size.width / 6,
                        top: Get.size.height / 7,
                        child: Row(
                          children: [
                            TextDescription.textDescription(
                                controller.textMazeDescription, controller),
                            SizedBox(
                              width: Get.size.width / 12,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width: 200,
                                  height: 80,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                      child: Text(
                                        'PLAY',
                                        style: TextStyle(fontSize: 50),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.green,
                                        textStyle: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              color: Colors.black, width: 2),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      onPressed: () {
                                        controller.toGame(
                                            'https://example.com/maze',
                                            'go to the Play Market');
                                      },
                                    ),
                                  ),
                                ),
                                Builder(builder: (context) {
                                  return controller.isMobile
                                      ? TextDescription.textDescription(
                                          controller.textMazeDescription,
                                          controller)
                                      : const SizedBox();
                                }),
                                SizedBox(
                                  height: 15,
                                ),
                                Image.asset(
                                  controller.mazeScreenToShow.value,
                                  width: Get.size.width / 7,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                }
              },
            ),
            drawer: DrawerElement.getDrawer());
      });
    });
  }
}
