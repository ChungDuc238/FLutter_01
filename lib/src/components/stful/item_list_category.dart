import 'package:flutter/material.dart';

class ItemListCategory extends StatefulWidget {
  final String image;
  final String title;
  final IconData icon;
  const ItemListCategory(
      {Key? key, required this.image, required this.title, required this.icon})
      : super(key: key);

  @override
  State<ItemListCategory> createState() => _ItemListCategoryState();
}

class _ItemListCategoryState extends State<ItemListCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: const Color(0xffE2E2E0))),
      width: double.infinity,
      height: 80,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 16.0),
            width: 80,
            height: 80,
            color: const Color(0xffF7F7F7),
            child: Container(
              child: Expanded(
                flex: 1,
                child: Image(
                  image: AssetImage(widget.image),
                ),
              ),
            ),
          ),
          Expanded(flex: 8, child: Text(widget.title)),
          Expanded(
            child: Icon(widget.icon),
          ),
        ],
      ),
    );
  }
}
