import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/stful/app_bar.dart';
import 'package:flutter_01/src/components/stful/button_choose_login.dart';
import 'package:flutter_01/src/components/stful/custom_button.dart';
import 'package:flutter_01/src/components/stful/custom_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                CustomAppBar(
                  text: 'Sign Up', callback: () => {}
                ),
                const SizedBox(
                  height: 60,
                ),
                const Image(
                    image: AssetImage('assets/images/logo_sign_up.png')),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  height: 60,
                  color: const Color(0xffF7F7F7),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 22.0, top: 20.0, bottom: 0.0, right: 0.0),
                      hintText: 'Enter email',
                      
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                CustomTextField(
                  text: 'Enter password',
                ),
                const SizedBox(
                  height: 16.0,
                ),
                CustomTextField(
                  text: 'Confirm Password',
                ),
                const SizedBox(
                  height: 16.0,
                ),
                CustomButton(
                  text: 'Sign Up',
                  color: 0xff20C3AF,
                  callback: () => {},
                  colorText: 0xFFFFFFFF,
                  colorBorder: 0.0,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                const Text('Or'),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ButtonChooseLogin(path: 'assets/svgs/icon_fb.svg'),
                    ),
                    Expanded(
                      child: ButtonChooseLogin(
                          path: 'assets/svgs/icon_twitter.svg'),
                    ),
                    Expanded(
                      child: ButtonChooseLogin(path: 'assets/svgs/icon_in.svg'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 42.0,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  child: RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "Already have an account?",
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: 'Sign In',
                          style: TextStyle(color: Color(0xffFFB19D)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
