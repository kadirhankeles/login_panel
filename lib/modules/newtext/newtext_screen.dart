import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_panel/modules/home/home_controller.dart';
import 'package:login_panel/modules/newtext/newtext_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../app/routes/app_pages.dart';

class NewTextScreen extends GetView<NewTextController> {
   NewTextScreen({super.key});
  HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(left: 2.h, right: 2.h,top: 5.h),
        child: Column(
          children: [
            TextFormField(
              controller: controller.titleController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      style: TextStyle(
                          fontSize: 18, height: 0.15.h, color: Colors.white),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        isDense: false,
                        filled: true,
                        contentPadding: EdgeInsets.only(
                            bottom: 0, top: 0, left: 2.h, right: 0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: 'Title',
                        fillColor: Color(0xff6746c3).withOpacity(0.6),
                        labelStyle:
                            TextStyle(color: Colors.grey.shade700, fontSize: 15),
                      ),
                      
                    ),
                    SizedBox(height: 3.h,),
            TextField(
              controller: controller.contentController,
                      maxLength: 600,
                      maxLines: 12,
                      minLines: 1,
                      style: TextStyle(
                        
                          fontSize: 15, height: 0.15.h, color: Colors.white),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        isDense: false,
                        filled: true,
                        contentPadding: EdgeInsets.only(
                            bottom: 0, top: 3.h, left: 2.h, right: 2.h),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: 'Content',
                        fillColor: Color(0xff6746c3).withOpacity(0.6),
                        labelStyle:
                            TextStyle(color: Colors.grey.shade700, fontSize: 15),
                      ),
                      
                    ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: () async{
        Map<String,String> dataToSave={
          'title':controller.titleController.text,
          'content': controller.contentController.text,
        };
        await controller.store.createText(dataToSave);
        homeController.blogList.add(dataToSave);
        homeController.blogList.refresh();
        await Future.delayed(Duration(seconds: 2));
        //homeController.onInit();
        
        Get.toNamed(Routes.HOME);
      },
      icon: Icon(Icons.save),
      label: Text("SAVE"),
      backgroundColor: Color(0xff6746c3),
      ),
    );
  }
}