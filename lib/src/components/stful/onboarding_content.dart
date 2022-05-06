import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/stless/widget_text.dart';

class onboadringContent extends StatefulWidget {
  const onboadringContent({
    Key? key,
    required this.title,
    required this.image,
    required this.description,
  }) : super(key: key);
  final String title, image, description;

  @override
  State<onboadringContent> createState() => _onboadringContentState();
}

class _onboadringContentState extends State<onboadringContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 60),
                width: 270,
                height: 92,
                child: WidgetText(
                  text: widget.title,
                  size: 40,
                  color: const Color(0xff525464),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Image(image: AssetImage(widget.image), height: 350),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 60),
                width: 270,
                child: WidgetText(
                  text: widget.description,
                  size: 16,
                  color: const Color(0xff838391),
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
