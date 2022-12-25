import 'package:get/get.dart';
import 'package:login_panel/modules/login/login_binding.dart';
import 'package:login_panel/modules/login/login_screen.dart';
import 'package:login_panel/modules/newtext/newtext_screen.dart';
import 'package:login_panel/modules/register/register_binding.dart';
import 'package:login_panel/modules/register/register_screen.dart';

import '../../modules/home/home_binding.dart';
import '../../modules/home/home_screen.dart';
import '../../modules/newtext/newtext_binding.dart';

part 'app_routes.dart';
class AppPages{
  AppPages();
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(name: Paths.LOGIN, page: () => const LoginScreen(), binding: LoginBinding()),
    GetPage(name: Paths.REGISTER, page: () =>  RegisterScreen(), binding: RegisterBinding()),
    GetPage(name: Paths.HOME, page: () =>  HomeScreen(), binding: HomeBinding()),
    GetPage(name: Paths.NEWTEXT, page: () =>  NewTextScreen(), binding: NewTextBinding()),
    
  ];

}