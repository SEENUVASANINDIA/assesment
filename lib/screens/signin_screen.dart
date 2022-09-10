// ignore_for_file: prefer_final_fields

//import 'dart:js';

import 'package:assesment/reusable_widget/reusable_widget.dart';
import 'package:assesment/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

//import 'package:assesment/screens/signup_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('WELCOME TO APP'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //  const Text('HAI USER all'),
              const SizedBox(height: 30.0),
              reusableTextField("Enter UserName", Icons.person_outline, false,
                  _emailTextController),
              const SizedBox(height: 30.0),
              reusableTextField("Enter Password", Icons.lock_outline, true,
                  _passwordTextController),

              const SizedBox(height: 30.0),

              signInSignUpButton(context, true, () {
                FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: _emailTextController.text,
                    password: _passwordTextController.text);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              }),
              const SizedBox(height: 30.0),
              //  signUpOption(),
              const SizedBox(height: 30.0),
              const Text("Dont have account?",
                  style: TextStyle(color: Colors.pink)),

              const SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                child: const Text(
                  "SIGN UP",
                  style: TextStyle(
                      color: Colors.pink, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//Row signUpOption() {
//  return Row(
//    mainAxisAlignment: MainAxisAlignment.center,
//    children: [
//      const Text("Dont have account?", style: TextStyle(color: Colors.pink)),
//      // GestureDetector(
//      //   onTap: () {
//      //     Navigator.push(context,
//      //         MaterialPageRoute(builder: (context) => const SignUpScreen()));
//      //   },
//      //   child: const Text(
//      //     "SIGN UP",
//      //     style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
//      //   ),
//      // )
//      ElevatedButton(
//          onPressed: () {
//            Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));
//          },
//          child: child)
//    ],
//  );
//}
//