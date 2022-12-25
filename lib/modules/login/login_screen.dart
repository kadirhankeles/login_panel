import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_panel/app/routes/app_pages.dart';
import 'package:login_panel/modules/login/login_controller.dart';
import 'package:login_panel/modules/register/register_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: 100.w,
                height: 22.h,
                child: Image.asset(
                  "assets/topImage.png",
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: EdgeInsets.only(left: 8.h, right: 8.h, top: 2.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello,",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text("Welcome",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  SizedBox(
                    height: 3.h,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controller.mailController,
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
                      hintText: 'Email',
                      fillColor: Color(0xff7c43bd).withOpacity(0.6),
                      labelStyle:
                          TextStyle(color: Colors.grey.shade700, fontSize: 15),
                    ),
                    validator: (value) {
                      if (!EmailValidator.validate(value!)) {
                        return 'Geçerli bir mail giriniz';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  TextFormField(
                    controller: controller.passController,
                    obscureText: true,
                    style: TextStyle(
                        fontSize: 18, height: 0.15.h, color: Colors.white),
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      isDense: false,
                      filled: true,
                      contentPadding: EdgeInsets.only(
                          bottom: 0, top: 0, left: 2.h, right: 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      hintText: 'Password',
                      fillColor: Color(0xff7c43bd).withOpacity(0.5),
                      labelStyle:
                          TextStyle(color: Colors.grey.shade700, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff7c43bd),
                  shape: StadiumBorder(),
                ),
                onPressed: () {
                  controller.auth.loginUser(controller.mailController.text, controller.passController.text);
                },
                child: Text("    LOGIN    ")),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(color: Colors.grey),
                ),
                GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.REGISTER);
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.purple.shade600,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
