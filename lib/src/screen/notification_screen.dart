import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/stful/app_bar.dart';
import 'package:flutter_01/src/components/stful/custom_button.dart';
import 'package:flutter_01/src/components/stful/item_list_notification.dart';
import 'package:flutter_01/src/model/notification_model.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            CustomAppBar(text: 'Notification', callback: () => {}),
            Expanded(
              flex: 8,
              child: Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: notificationList.length,
                  itemBuilder: (_, int index) => ItemNotification(
                      imagePath: notificationList[index].imagePath,
                      name: notificationList[index].name,
                      address: notificationList[index].address,
                      content: notificationList[index].content),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  CustomButton(
                      text: 'View all',
                      color: 0xFF20C3AF,
                      callback: () => {},
                      colorText: 0xFFFFFFFF,
                      colorBorder: 0),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
