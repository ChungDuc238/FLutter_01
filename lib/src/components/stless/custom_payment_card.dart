import 'package:flutter/material.dart';

class CustomPaymentCard extends StatelessWidget {
  const CustomPaymentCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 201.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            gradient: const LinearGradient(
              colors: [
                Color(0xFF02DA80),
                Color(0xFF0284D8),
              ],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
            ),
          ),
        ),
        const Positioned(
          top: 20,
          left: 23,
          child: Text(
            '. . . .',
            style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w500,
                fontSize: 16.0),
          ),
        ),
        const Positioned(
          height: 18.0,
          top: 23,
          left: 60,
          child: Text(
            '3748',
            style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w500,
                fontSize: 16.0),
          ),
        ),
        const Positioned(
          height: 18.0,
          right: 23,
          top: 23,
          child: Text(
            '17/20',
            style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w500,
                fontSize: 16.0),
          ),
        ),
        const Positioned(
          left: 23,
          bottom: 23,
          child: Text(
            '\$25,388',
            style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w600,
                fontSize: 26.0),
          ),
        ),
      ],
    );
  }
}