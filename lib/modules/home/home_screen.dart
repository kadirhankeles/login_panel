import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_panel/app/routes/app_pages.dart';
import 'package:login_panel/modules/home/home_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 2, 31, 55) ,title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text("Home", style: TextStyle(fontSize: 18, color: Colors.white),),
        Icon(Icons.search)
        ],
      ),),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(2.h),
          child: Container(
            width: double.infinity,
            child: Obx( ()=>
               ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.blogList.length,
                itemBuilder: (context, index) {
                return 
                 controller.isLoading==true? Container(
                    margin: EdgeInsets.only(bottom: 2.h),
                    decoration: BoxDecoration(color: Color(0xff6746c3), borderRadius: BorderRadius.circular(20)),
                    height: 20.h,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.all(2.h),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${controller.blogList[index]['title']}", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
                          Divider(color: Colors.white,),
                          Text("${controller.blogList[index]['content']}", style: TextStyle(color: Colors.white, fontSize: 15, letterSpacing: .5),),
                        ],
                      ),
                    ),
                  ): Container();
              
              },),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: () {
     Get.toNamed(Routes.NEWTEXT);   
     
        
      },
      icon: Icon(Icons.add),
      label: Text("CREATE"),
      backgroundColor: Color(0xff6746c3),
      ),
    );
  }
}