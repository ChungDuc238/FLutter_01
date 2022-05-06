import 'package:flutter/material.dart';

class BodySettingWidget extends StatelessWidget {
  const BodySettingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> listItemSetting = [
      'Payment cards',
      'Write to us',
      'Rate us on app store',
      'About Us'
    ];

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      child: ListView.builder(
          itemCount: listItemSetting.length,
          shrinkWrap: true,
          itemBuilder: (_, int index) => Container(
                margin: const EdgeInsets.only(bottom: 16),
                color: const Color(0xFFF7F7F7),
                height: 80.0,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(listItemSetting[index]),
                        const Icon(Icons.keyboard_arrow_right),
                      ]),
                ),
              )),
    );
  }
}
