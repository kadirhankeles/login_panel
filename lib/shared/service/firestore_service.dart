
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class FirestoreService extends GetxService{
  Future<FirestoreService> init() async {
    return this;
  }
  CollectionReference colletionRef = FirebaseFirestore.instance.collection('blog');
  RxList itemList = [].obs;
  createText(Map data) async{
    colletionRef.add(data);
  }

  getTextList() async {
    try{
      await colletionRef.get().then((QuerySnapshot) {
        QuerySnapshot.docs.forEach((element) {itemList.add(element.data());});
      });
    }catch (e){
      return null;
    }
  }
  
}