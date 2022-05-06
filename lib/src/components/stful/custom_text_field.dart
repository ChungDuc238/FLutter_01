import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  String text;
  CustomTextField({Key? key, required this.text}) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: const Color(0xffF7F7F7),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding: const EdgeInsets.only(
              left: 22.0, top: 20.0, bottom: 0.0, right: 0.0),
          suffixIcon: Icon(Icons.visibility_off),
          hintText: widget.text,
        ),
      ),
    );
  }
}
