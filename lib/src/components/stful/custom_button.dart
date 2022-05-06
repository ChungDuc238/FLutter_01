import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final double colorBorder;
  final int colorText;
  final String text;
  final int color;
  final Function() callback;

  const CustomButton({
    Key? key,
    required this.text,
    required this.color,
    required this.callback,
    required this.colorText,
    required this.colorBorder,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _ButtonState();
}

class _ButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: Container(
      
        decoration: BoxDecoration(
            border: Border.all(
                width: widget.colorBorder,
                color: const Color(0xFFE2E2E0).withOpacity(0.49))),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(widget.color),
          ),
          onPressed: widget.callback,
          child: Text(
            widget.text,
            style: TextStyle(color: Color(widget.colorText)),
          ),
        ),
      ),
    );
  }
}
