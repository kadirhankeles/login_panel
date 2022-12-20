import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  "Merhaba,",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text("Hoşgeldin",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
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
                    hintText: 'Email',
                    fillColor: Color(0xff7c43bd).withOpacity(0.6),
                    labelStyle:
                        TextStyle(color: Colors.grey.shade700, fontSize: 15),
                  ),
                ),
                SizedBox(height: 3.h,),
                TextField(
                  obscureText: true,
              style:
                  TextStyle(fontSize: 18, height: 0.15.h, color: Colors.white),
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
