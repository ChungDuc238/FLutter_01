import 'package:flutter/material.dart';

class CustomCardFormWidget extends StatelessWidget {
  final String title;
  final String name;
  final IconData icon;
  const CustomCardFormWidget(
      {Key? key, required this.title, required this.name, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Color(0xFF525464),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 8.0, top: 8.0),
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          color: const Color(0xFFF7F7F7),
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: Color(0xFFB0B0C3),
                ),
              ),
              Icon(
                icon,
                color: const Color(0xFF525464),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
