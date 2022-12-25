import 'package:get/get.dart';

import '../../shared/service/firestore_service.dart';

class HomeController extends GetxController{
  FirestoreService store =FirestoreService();
  RxList blogList =[].obs;
  
  
  bool isLoading = false;
  @override
  void onInit() async {
    super.onInit();
    print("Çalıştı!!!!!");
    isLoading = false;
    await store.getTextList();
    store.itemList.forEach((element) {blogList.add(element); });
    isLoading=true;
  }
 

  


  
  
}