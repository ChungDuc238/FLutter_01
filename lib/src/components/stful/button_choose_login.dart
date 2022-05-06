import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonChooseLogin extends StatefulWidget {
  String path;
   ButtonChooseLogin({Key? key, required this.path}) : super(key: key);

  @override
  State<ButtonChooseLogin> createState() => _ButtonChooseLoginState();
}

class _ButtonChooseLoginState extends State<ButtonChooseLogin> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        height: 60,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0xffE2E2E0)),
        ),
        child: Center(
          child: SvgPicture.asset(widget.path),
        ),
      ),
    );
  }
}
