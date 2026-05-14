import 'package:get/get.dart';
import 'package:quib_game_web/controllers/main_controller.dart';

class MainScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController(), permanent: true);
  }
}


