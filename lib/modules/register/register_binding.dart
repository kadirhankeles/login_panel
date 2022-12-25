import 'package:get/get.dart';
import 'package:login_panel/modules/register/register_controller.dart';

class RegisterBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(RegisterController());
    // TODO: implement dependencies
  }

}