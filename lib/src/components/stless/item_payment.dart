import 'package:flutter/material.dart';

class ItemPayment extends StatelessWidget {
  final String imagePath;
  final String content;
  final String price;
  const ItemPayment(
      {Key? key,
      required this.imagePath,
      required this.content,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0, left: 30, right: 10.0),
      width: double.infinity,
      height: 60.0,
      child: Row(children: [
        Container(
          height: 60.0,
          child: Image(
            image: AssetImage(imagePath),
          ),
        ),
        Expanded(
          flex: 7,
          child: Container(
            margin: const EdgeInsets.only(left: 16.0),
            child: Text(content),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            price,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
              color: Color(0xFF525464),
            ),
          ),
        ),
      ]),
    );
  }
}
