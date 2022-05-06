import 'package:flutter/material.dart';

class item extends StatelessWidget {
  const item({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text('$name');
  }
}
