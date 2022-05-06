import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  final String text;
  final Function() callback;
  const CustomAppBar({Key? key, required this.text, required this.callback})
      : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: InkWell(
                onTap: widget.callback,
                child: const Icon(Icons.arrow_back_ios_new_outlined)),
          ),
          Expanded(
            flex: 8,
            child: Center(
              child: Text(
                widget.text,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const Expanded(
            flex: 1,
            child: Icon(
              Icons.menu,
            ),
          )
        ],
      ),
    );
  }
}
