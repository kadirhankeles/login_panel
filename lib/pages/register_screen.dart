import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RegisterScreen extends StatelessWidget {
   RegisterScreen({super.key});

  TextEditingController emailController = TextEditingController();
  void validateEmail(){
    final bool isValid = EmailValidator.validate(emailController.text.trim());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                Text("Join Us!",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                SizedBox(
                  height: 3.h,
                ),
                TextField(
                  style: TextStyle(
                      fontSize: 18, height: 0.15.h, color: Colors.white),
                  decoration: InputDecoration(
                    isDense: false,
                    filled: true,
                    contentPadding:
                        EdgeInsets.only(bottom: 0, top: 0, left: 2.h, right: 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Name',
                    fillColor: Color(0xff7c43bd).withOpacity(0.6),
                    labelStyle:
                        TextStyle(color: Colors.grey.shade700, fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: emailController,
                  style: TextStyle(
                      fontSize: 18, height: 0.15.h, color: Colors.white),
                      keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    isDense: false,
                    filled: true,
                    contentPadding:
                        EdgeInsets.only(bottom: 0, top: 0, left: 2.h, right: 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Email',
                    fillColor: Color(0xff7c43bd).withOpacity(0.6),
                    labelStyle:
                        TextStyle(color: Colors.grey.shade700, fontSize: 15),
                  ),
                  validator: (value) {
                    if(!EmailValidator.validate(value!)){
                      return 'Geçerli bir mail giriniz';
                    }else { return null;}
                  },
                ),
                SizedBox(
                  height: 3.h,
                ),
                TextField(
                  obscureText: true,
                  style: TextStyle(
                      fontSize: 18, height: 0.15.h, color: Colors.white),
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    isDense: false,
                    filled: true,
                    contentPadding:
                        EdgeInsets.only(bottom: 0, top: 0, left: 2.h, right: 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Password',
                    fillColor: Color(0xff7c43bd).withOpacity(0.5),
                    labelStyle:
                        TextStyle(color: Colors.grey.shade700, fontSize: 15),
                  ),
                ),
                SizedBox(
            height: 3.h,
          ),
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff7c43bd),
                  shape: StadiumBorder(),
                ),
                onPressed: () {},
                child: Text("    REGISTER    ")),
          ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
