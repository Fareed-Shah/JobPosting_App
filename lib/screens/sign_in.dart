import 'package:app_functionality/custom_widgets/app_textbutton.dart';
import 'package:app_functionality/custom_widgets/app_textfiled.dart';
import 'package:app_functionality/screens/sign_up.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
              "Let's Sign In",
              style: TextStyle(fontSize: 35.00, color: Colors.white),
            ),
            const SizedBox(height: 14.00),
            const Text(
              "Welcome \n join the Community!",
              style: TextStyle(fontSize: 35.00, color: Colors.white),
            ),
            const SizedBox(height: 35.00),
            const AppTextField(placeholder: 'Your Email'),
            const AppTextField(placeholder: 'Your Password'),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const SignUp()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(fontSize: 15.00, color: Color(0xFF8F8F9E)),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 15.00, color: Colors.white),
                  ),
                ],
              ),
            ),
            AppButton(label: 'Sign In', onPress: () {})
          ],
        ),
      ),
    );
  }
}
