// ignore_for_file: camel_case_types

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ecom_2023/const/appColor.dart';
import 'package:flutter_ecom_2023/ui/loginScreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override

void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 3), () => Navigator.push(context, MaterialPageRoute(builder: (context) => const loginScreen())));
    super.initState();
  }

  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("E-COM",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 44,
                      fontWeight: FontWeight.bold)),
                      SizedBox(height: 20,),
                      CircularProgressIndicator( color: Color.fromARGB(255, 255, 255, 255),)
            ]),
      ),
    );
  }
}
