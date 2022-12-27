import 'package:get/get.dart';

import '../../shared/service/firestore_service.dart';

class HomeController extends GetxController {
  FirestoreService store = FirestoreService();
  RxList blogList = [].obs;

  bool isLoading = false;
  @override
  void onInit() async {
    super.onInit();
    isLoading = false;
    blogList.value = (await store.getTextList())!;
    isLoading = true;
  }

  getList() async {
    blogList.value = (await store.getTextList())!;
  }

  Future removeText(docId) async {
    //await store.removeText(docId);
    store.itemList.removeWhere((element) => element['documentid'] == docId);
  }
}
