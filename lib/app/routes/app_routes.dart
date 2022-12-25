part of 'app_pages.dart';
abstract class Routes{
  Routes();
  static const LOGIN = Paths.LOGIN; 
  static const REGISTER = Paths.REGISTER; 
  static const HOME = Paths.HOME;
  static const NEWTEXT = Paths.NEWTEXT;
}

abstract class Paths {
  static const LOGIN = "/login";
  static const REGISTER = "/register";
  static const HOME = "/home";
  static const NEWTEXT = "/newtext";
}