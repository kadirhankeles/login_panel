import 'package:get/get.dart';
import 'package:login_panel/shared/service/firebase_service.dart';

class DependencyInjection{
  static init() async{
    await Get.putAsync(() => FirebaseService().init());
  }
}