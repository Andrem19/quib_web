part of 'app_pages.dart';

abstract class Routes {
  Routes_();

  static const HOME = _Paths.HOME;
  static const MAZE = _Paths.MAZE;
  static const REMLAND = _Paths.REMLAND;
  static const STARSEED = _Paths.STARSEED;
  static const ABOUT_US = _Paths.ABOUT_US;
  static const Privat_Policy_Maze_Rush = _Paths.Privat_Policy_Maze_Rush;

}

abstract class _Paths {
  static const HOME = "/home";
  static const MAZE = "/maze";
  static const REMLAND = "/remland";
  static const STARSEED = "/starseed";
  static const ABOUT_US = "/about_us";
  static const Privat_Policy_Maze_Rush = "/privatpolicy_mazerush";
}