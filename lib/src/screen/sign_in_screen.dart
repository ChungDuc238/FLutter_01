import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/stful/app_bar.dart';
import 'package:flutter_01/src/components/stful/button_choose_login.dart';
import 'package:flutter_01/src/components/stful/custom_button.dart';
import 'package:flutter_01/src/components/stful/custom_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                CustomAppBar(text: 'Sign In', callback: () => {}),
                const SizedBox(
                  height: 60,
                ),
                const Image(image: AssetImage('assets/images/img_sign_in.png')),
                const SizedBox(
                  height: 50,
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
                          left: 22.0, top: 0.0, bottom: 0.0, right: 0.0),
                      hintText: 'Username',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
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
                      hintText: 'Password',
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'Forgot your password?',
                      textAlign: TextAlign.right,
                      style: TextStyle(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),
                CustomButton(
                  text: 'Login',
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
                  height: 51.0,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  child: RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "Don't have an account?",
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: 'Sign Up',
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
