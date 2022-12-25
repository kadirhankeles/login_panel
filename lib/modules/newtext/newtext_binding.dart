import 'package:get/get.dart';
import 'package:login_panel/modules/newtext/newtext_controller.dart';

class NewTextBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(NewTextController());
    // TODO: implement dependencies
  }

}