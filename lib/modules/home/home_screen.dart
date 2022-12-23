import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_panel/modules/home/home_controller.dart';

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
      body: Column(
        children: [
          Container()
        ],
      )
    );
  }
}