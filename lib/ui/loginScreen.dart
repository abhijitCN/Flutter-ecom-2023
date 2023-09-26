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
  mySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
ButtonStyle buttonStyle = ElevatedButton.styleFrom(
  minimumSize:const Size(double.infinity, 50)
);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 187, 255, 150),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/appLogo.png',height: 200,width: 200,),
            const Padding(
              padding:  EdgeInsets.all(5),
              child:  Text("Please Login",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 30,fontWeight: FontWeight.bold,fontFamily: AutofillHints.addressCity),),),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Email"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              // ignore: avoid_unnecessary_containers
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Password"),
                ),
              ),
            ),
            // TextButton(
            //     onPressed: () {
            //       Navigator.push(context,
            //           MaterialPageRoute(builder: (context) => const SignUp()));
            //     },
            //     child: const Text("Sign up")),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child: ElevatedButton(
                    onPressed: () {
                     Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  HomeScreen()));
                    },style: buttonStyle,
                    child: const Text("Login") ,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    },style: buttonStyle,
                    child: const Text("Sign Up"),),
              ),
            )
          ])),
    );
  }
}
