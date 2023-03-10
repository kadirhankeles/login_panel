import 'package:get/get.dart';
import 'package:login_panel/shared/service/auth_service.dart';
import 'package:login_panel/shared/service/firebase_service.dart';
import 'package:login_panel/shared/service/firestore_service.dart';

class DependencyInjection{
  static init() async{
    await Get.putAsync(() => FirebaseService().init());
    await Get.putAsync(() => AuthService().init());
    await Get.putAsync(() => FirestoreService().init());
    
  }
}