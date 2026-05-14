import 'package:get/get.dart';
import 'package:quib_game_web/Views/about_us.dart';
import 'package:quib_game_web/Views/home.dart';
import 'package:quib_game_web/Views/maze.dart';
import 'package:quib_game_web/Views/private_policy/maze_rush.dart';
import 'package:quib_game_web/Views/remland.dart';
import 'package:quib_game_web/Views/starseed.dart';
import 'package:quib_game_web/controllers/binding/bindings.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME, 
      page: () => HomeScreen(),
    ),
    GetPage(
      name: _Paths.MAZE, 
      page: () => Maze(),
    ),
    GetPage(
      name: _Paths.REMLAND, 
      page: () => Remland(),
    ),
    GetPage(
      name: _Paths.STARSEED, 
      page: () => Starseed(),
    ),
    GetPage(
      name: _Paths.ABOUT_US, 
      page: () => AboutUs(),
    ),
    GetPage(
      name: _Paths.Privat_Policy_Maze_Rush, 
      page: () => PrivatPolicyMazeRush(),
    ),
   
  ];
}