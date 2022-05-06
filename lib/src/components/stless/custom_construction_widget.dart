import 'package:flutter/material.dart';

class CustomConstructionWidget extends StatefulWidget {
  final String content;
  final Function() callback;
  final int id;
  const CustomConstructionWidget(
      {Key? key,
      required this.content,
      required this.callback,
      required this.id})
      : super(key: key);

  @override
  State<CustomConstructionWidget> createState() =>
      _CustomConstructionWidgetState();
}

class _CustomConstructionWidgetState extends State<CustomConstructionWidget> {
  int selected = -1;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() {
        selected = widget.id;
      }),
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        width: double.infinity,
        height: 60.0,
        margin: const EdgeInsets.only(bottom: 16.0),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.0,
            color:
                (selected == widget.id) ? const Color(0xFFFFB19D) : const Color(0xFFE2E2E0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.content),
            Container(
              color: (selected == widget.id)
                  ? const Color(0xFFFFB19D)
                  : const Color(0xFFE2E2E0),
              width: 60.0,
              height: 60.0,
              child: Icon((selected == widget.id) ? Icons.check : Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
