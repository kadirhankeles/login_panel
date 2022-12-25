import 'package:get/get.dart';
import 'package:login_panel/modules/login/login_controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(LoginController());
    // TODO: implement dependencies
  }

}