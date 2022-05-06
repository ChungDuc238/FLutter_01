import 'package:flutter/material.dart';

class ContactFrofile extends StatefulWidget {
  final String iconLeft;
  final String title;
  final String description;
  const ContactFrofile(
      {Key? key,
      required this.iconLeft,
      required this.title,
      required this.description})
      : super(key: key);

  @override
  State<ContactFrofile> createState() => _ContactFrofileState();
}

class _ContactFrofileState extends State<ContactFrofile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: const Color(0xFFE2E2E0))),
      width: double.infinity,
      height: 80,
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          Row(
            children: [
              Container(
                width: 72,
                height: 80,
                child: Expanded(
                  flex: 1,
                  child: Image(
                    image: AssetImage(widget.iconLeft),
                  ),
                ),
              ),
              const Image(
                image: AssetImage('assets/images/rectangle.png'),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(color: const Color(0xFFFFFFFF).withOpacity(0.38)),
                ),
                Text(
                  widget.description,
                  style: const TextStyle(color: Color(0xFFFFFFFF)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
