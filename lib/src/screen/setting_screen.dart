import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/stful/app_bar.dart';
import 'package:flutter_01/src/components/stless/body_setting_widget.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(left: 15.0, right: 30.0),
                child:  CustomAppBar(text: 'Settings', callback: () => {})),
            const BodySettingWidget(),
            Container(
              margin: const EdgeInsets.only(left: 30.0),
              width: double.infinity,
              child: const Text(
                'Logout',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0xFFFFB19D),
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xFFFFB19D),
                  height: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
