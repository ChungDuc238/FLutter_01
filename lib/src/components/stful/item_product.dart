import 'package:flutter/material.dart';

class ItemProduct extends StatefulWidget {
  final String imagePath;
  final String name;
  final String price;
  const ItemProduct(
      {Key? key,
      required this.imagePath,
      required this.name,
      required this.price})
      : super(key: key);

  @override
  State<ItemProduct> createState() => _ItemProductState();
}

class _ItemProductState extends State<ItemProduct> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Image(
            image: AssetImage(widget.imagePath),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(widget.name),
          const SizedBox(
            height: 10,
          ),
          Text(widget.price),
        ],
      ),
    );
  }
}
