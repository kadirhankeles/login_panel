import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/service/auth_service.dart';

class LoginController extends GetxController{
  TextEditingController mailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  AuthService auth = AuthService();
}