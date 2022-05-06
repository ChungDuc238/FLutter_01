import 'package:flutter/material.dart';

class CustomSearchWidget extends StatelessWidget {
  const CustomSearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: double.infinity,
        height: 60,
        color: const Color(0xffF7F7F7),
        child: Row(
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Icon(
                Icons.search_outlined,
                color: Color(0xff525464),
              ),
            ),
            Text(
              'Search by category',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Color(0xffB0B0C3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}