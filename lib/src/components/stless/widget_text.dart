import 'package:flutter/material.dart';


class WidgetText extends StatelessWidget {
  const WidgetText({
    Key? key, required this.text, this.size, this.color, this.fontWeight
  }) : super(key: key);
  final double? size;
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
