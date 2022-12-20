import 'package:app_functionality/custom_widgets/app_textbutton.dart';
import 'package:app_functionality/custom_widgets/app_textfiled.dart';
import 'package:app_functionality/screens/home.dart';
import 'package:app_functionality/screens/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text('Sign Up'),
      // ),
      body: Padding(
        padding: const EdgeInsets.only(
            top: 110.00, left: 15.00, right: 15, bottom: 59.00),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Let's Sign Up",
              style: TextStyle(fontSize: 35.00, color: Colors.white),
            ),
            const SizedBox(height: 14.00),
            const Text(
              "Welcome \n join the Community!",
              style: TextStyle(fontSize: 35.00, color: Colors.white),
            ),
            const SizedBox(height: 35.00),
            const AppTextField(placeholder: 'Enter Your Full Name'),
            const AppTextField(placeholder: 'Enter Your Email'),
            const AppTextField(placeholder: 'Enter Your Password'),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const SignIn()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(fontSize: 15.00, color: Color(0xFF8F8F9E)),
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(fontSize: 15.00, color: Colors.white),
                  ),
                ],
              ),
            ),
            AppButton(
                label: 'Sign Up',
                onPress: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const Home()));
                })
          ],
        ),
      ),
    );
  }
}
