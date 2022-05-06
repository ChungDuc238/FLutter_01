import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/stful/custom_button.dart';

class BottomButtonWidget extends StatelessWidget {
  final String text1;
  final String text2;
  const BottomButtonWidget({
    Key? key, required this.text1, required this.text2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CustomButton(
              text: text1,
              color: 0xffFFFFFF,
              callback: () => {},
              colorText: 0xFF838391,
              colorBorder: 1.0,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: CustomButton(
            text: text2,
            color: 0xff20C3AF,
            callback: () => {},
            colorText: 0xFFFFFFFF,
            colorBorder: 0.0,
          ),
        ),
      ],
    );
  }
}
