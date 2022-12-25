import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_panel/shared/service/firestore_service.dart';

class NewTextController extends GetxController{
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  FirestoreService store =FirestoreService();
}