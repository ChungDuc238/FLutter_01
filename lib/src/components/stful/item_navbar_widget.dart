import 'package:flutter/material.dart';

class ItemNavbarWidget extends StatefulWidget {
  final IconData iconNavbar;
  final String content;
  final Function() callback;
  const ItemNavbarWidget(
      {Key? key,
      required this.iconNavbar,
      required this.content,
      required this.callback})
      : super(key: key);

  @override
  State<ItemNavbarWidget> createState() => _ItemNavbarWidgetState();
}

class _ItemNavbarWidgetState extends State<ItemNavbarWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.callback,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: const Color(0xFF323440),
              child: Icon(
                widget.iconNavbar,
                size: 20,
                color: const Color(0xFFFFFFFF),
              ),
              radius: 40,
            ),
            const SizedBox(
              height: 14.0,
            ),
            Text(
              widget.content,
              style: const TextStyle(
                color: Color(0xFFFFFFFF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
