import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/stless/circle_avatar.dart';

class ItemNotification extends StatefulWidget {
  String imagePath;
  String name;
  String address;
  String content;
  ItemNotification(
      {Key? key,
      required this.imagePath,
      required this.name,
      required this.address,
      required this.content})
      : super(key: key);

  @override
  State<ItemNotification> createState() => _ItemNotificationState();
}

class _ItemNotificationState extends State<ItemNotification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 28.0),
      margin: const EdgeInsets.only(top: 32.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color.fromARGB(255, 227, 225, 225)),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CustomAvatarCircle(
                imagePath: widget.imagePath,
                size: 20.0,
              ),
              const SizedBox(
                width: 12.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                        fontSize: 16.0,
                        color: Color(0xFF525464),
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 3.0),
                  Text(
                    widget.address,
                    style: const TextStyle(
                        fontSize: 14.0,
                        color: Color(0xFF838391),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 16.0),
            child: Text(
              widget.content,
              style: const TextStyle(
                height: 1.8,
                fontSize: 14.0,
                color: Color(0xFF616173),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
