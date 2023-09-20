import 'package:flutter/material.dart';
import 'package:flutter_ecom_2023/ui/loginScreen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 170, 201),
      body: Center(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Sign up"),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const loginScreen()));
                },
                child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}
