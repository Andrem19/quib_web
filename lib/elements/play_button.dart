import 'package:flutter/material.dart';
import 'package:quib_game_web/controllers/main_controller.dart';

class PlayButton {
  static Widget Play(MainController controller, String http, String PlayStore) {
    return ElevatedButton(
      child: Text(
        'PLAY',
        style: TextStyle(fontSize: controller.isMobile ? 10 : 50),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        textStyle:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {
        controller.toGame(
            http, PlayStore);
      },
    );
  }
}
