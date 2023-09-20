// ignore_for_file: camel_case_types, unused_import, avoid_web_libraries_in_flutter, file_names

import 'package:flutter/material.dart';
import 'package:flutter_ecom_2023/const/appColor.dart';
import 'package:flutter_ecom_2023/ui/homeScreen.dart';
import 'package:flutter_ecom_2023/ui/signUp.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  mySnackBar(message,context){
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(message)));
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Color.fromARGB(255, 187, 255, 150),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [ const Text("Login Screen"),
        TextButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()));}, child:const Text("Sign up")),
        ElevatedButton(onPressed: (){mySnackBar("I an text button",context);}, child:const Text("Login")),
        OutlinedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));}, child:const Text("Home"))
        ])),
    );
  }
}
