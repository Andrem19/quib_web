import 'dart:async';
import 'dart:math';
import 'dart:js' as js;

import 'package:get/get.dart';

class MainController extends GetxController {
  @override
  void onInit() {
    isMobileDevice();
    runLoopPicChange();
    super.onInit();
  }

  @override
  void onClose() {
    if (_timer != null) {
      _timer.cancel();
      _timer = null;
    }
    super.onClose();
  }

  final String textMazeDescription =
      'Maze&Traps is a mobile and web game that will take you to a new world of puzzle solving and competitive gameplay. Whether you\'re playing alone or with friends, you\'ll get hours of entertainment out of drawing your own custom mazes and then traversing them. Strategize and plan your moves wisely in the single-player mode, or take on a rival in thrilling multiplayer battles. Set devious traps and outsmart your opponent in this exciting, unique game that rewards both quick reflexes and smart tactics! Test your wits, prevent your opponent from getting the upper hand, and see who can conquer the mazes and come out on top! With endless possibilities for creative problem solving, Maze&Traps is the perfect way to challenge and entertain yourself.';
  var _timer;
  final List<String> _pics = [
    'assets/images/main_screen_1.png',
    'assets/images/main_screen_2.jpg',
    'assets/images/main_screen_3.png',
    'assets/images/main_screen_4.png',
    'assets/images/main_screen_5.jpg',
  ];
  final List<String> maze_slider = [
    'assets/images/maze_screen_1.jpg',
    'assets/images/maze_screen_2.jpg',
    'assets/images/maze_screen_3.jpg',
  ];
  bool isMobile = false;
  RxString pictureToShow = ''.obs;
  RxString mazeScreenToShow = 'assets/images/maze_screen_1.jpg'.obs;

  void runLoopPicChange() {
    var intValue = Random().nextInt(_pics.length);
    pictureToShow.value = _pics[intValue];
    _timer = Timer.periodic(Duration(seconds: 7), (timer) {
      int num = Random().nextInt(maze_slider.length);
      mazeScreenToShow.value = maze_slider[num];
      int intValue = Random().nextInt(_pics.length);
      pictureToShow.value = _pics[intValue];
      update();
    });
  }

  void isMobileDevice() {
    print('ismobdev print');
    if (Get.size.width < 1236) {
      isMobile = true;
    } else {
      isMobile = false;
    }
  }

  void toGame(String url, String play_market) {
    if (isMobile) {
      print(play_market);
    } else {
      js.context.callMethod('open', [url]);
    }
  }
}
