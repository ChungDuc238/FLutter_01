import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/stful/app_bar.dart';
import 'package:flutter_01/src/components/stful/contact_frofile.dart';
import 'package:flutter_01/src/components/stful/custom_button.dart';
import 'package:flutter_01/src/components/stless/circle_avatar.dart';
import 'package:flutter_01/src/components/stful/nav_bar.dart';
import 'package:flutter_01/src/model/contact_model.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomAppBar(
                text: '',
                callback: () => {Scaffold.of(context).openDrawer()},
              ),
            ),
            Container(
                margin: const EdgeInsets.only(
                    left: 30.0, right: 30.0, bottom: 40.0),
                child: const ProfileBody()),
            Expanded(
              flex: 2,
              child: Container(
                color: const Color(0xFF525464),
                width: double.infinity,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 40.0, horizontal: 30.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: contactList.length,
                    itemBuilder: (_, int index) => ContactFrofile(
                        iconLeft: contactList[index].iconLeft,
                        title: contactList[index].title,
                        description: contactList[index].description),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileBody extends StatefulWidget {
  const ProfileBody({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        margin: const EdgeInsets.only(top: 40.0),
        child: Column(
          children: [
            CustomAvatarCircle(
              imagePath: 'assets/images/avatar_profile.png',
              size: 60,
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              children: [
                const Text('Jeremías del Pozo'),
                const SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('New York'),
                    Text('ID: 1120611'),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Text(
              'Edit',
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Color(0xFFFFB19D),
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: CustomButton(
                      text: 'About Me',
                      color: 0xffFFFFFF,
                      callback: () => {Scaffold.of(context).openDrawer()},
                      colorText: 0xFF838391,
                      colorBorder: 1.0,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: CustomButton(
                    text: 'Reviews',
                    color: 0xff20C3AF,
                    callback: () => {},
                    colorText: 0xFFFFFFFF,
                    colorBorder: 0.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
